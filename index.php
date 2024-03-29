<?php

require_once "dbConnect.php";

function getQueryResult($conn, $queryStmt, $params = []) {
	return $conn->execute_query($queryStmt, $params);
}

function printTimestamp($dateFormat) {
	$date = new DateTime("now", new DateTimeZone("Asia/Kuala_Lumpur"));
	return $date->format($dateFormat);
}
// $dateFormatString = "Y-m-d H:i:s (e)";
$dateFormatString = "Y-m-d H:i:s";

// Obtain all dex types
$dex_types = [];
$query = connectDb()->query("SELECT DISTINCT `dex_name` FROM `regional_dex`;");

if ($query) {
	if ($query->num_rows > 0) {
		while ($row = $query->fetch_assoc())
			array_push($dex_types, $row['dex_name']);
	}

	$query->close();
	connectDb()->next_result();
}

// Count Number of Distinct Entries in Pokédex
$num_distinct_entries = 0;
$query = connectDb()->query("CALL `count_distinct_entries`;");

if ($query) {
	if ($query->num_rows > 0) {
		$row = $query->fetch_assoc();
		$num_distinct_entries = $row['count'];
	}

	$query->close();
	connectDb()->next_result();
}

echo "Counted Pokédex entries to create: " . $num_distinct_entries . "<br><br>";

// Retrieve Pokédex IDs, store them separately for use later
$dex_ids = [];
for ($count = 1; $count <= $num_distinct_entries; ++$count) {
	$id_entry = "\t\"id\": {\n";
	$id_entry .= "\t\t\"national\": " . $count;

	// prior to PHP 8.2 only
	// $query_stmt = connectDb()->prepare("CALL `get_dex_numbers`(?)");
	// $query_stmt->bind_param("i", $count);
	// $query_stmt->execute();
	// $query = $query_stmt->get_result();

	// from PHP 8.2 onwards..
	$query = connectDb()->execute_query("CALL `get_dex_numbers`(?)", [$count]);
	// $query = getQueryResult(connectDb(), "CALL `get_dex_numbers`(?)", [$count]);

	if ($query) {
		if ($query->num_rows > 0) {
			while ($row = $query->fetch_assoc())
				$id_entry .= ",\n\t\t\"" . $row['dex_name'] . "\": " . $row['dex_id'];
		}

		$query->close();
		connectDb()->next_result();
	}

	$id_entry .= "\n\t},\n";

	// echo $id_entry . "<br><br><br>";
	array_push($dex_ids, $id_entry);
}

// Pokémon Types - 18 in total
$en_type_name = [
	"dragon", "ghost", "ground", "flying", "poison", "bug", "water", "electric", "rock", "grass", "dark", "ice", "normal", "fire", "fighting", "steel", "psychic", "fairy"
];

if ($num_distinct_entries > 0) {
	$json_index = "0000";
	$json_filename = $json_index . ".json";

	// prior to PHP 8.2 only
	// $empty_string_param = "";
	// $query_stmt = connectDb()->prepare("CALL `show_pkmn`(?)");
	// $query_stmt->bind_param("s", $empty_string_param);
	// $query_stmt->execute();
	// $query = $query_stmt->get_result();

	// from PHP 8.2 onwards..
	$query = connectDb()->execute_query("CALL `show_pkmn`(?)", [""]);

	if ($query) {
		if ($query->num_rows > 0) {
			$types_entered = [];	// contains variants that have already been run through
			$current_pkmn_name = "";

			echo "Generating Pokédex JSON files..<br>";
			while ($row = $query->fetch_assoc()) {
				$json_name = "0000" . $row['id'];
				while (strlen($json_name) > 4) $json_name = substr($json_name, 1);

				// if row is pointing to new pokemon entry
				if (strcmp($json_index, $json_name) != 0) {
					$types_entered = [];	// clear variants entered for new entries

					// end an open file, 0000.json should not exist
					if ($json_index != "0000") {
						fwrite($pokedex_file, "\n}");
						fclose($pokedex_file);	// close existing JSON file
						echo "[" . printTimestamp($dateFormatString) . "] Finished Pokédex entry #" . $json_index . " " . $current_pkmn_name . "<br>";
					}

					$json_index = $json_name;	// new JSON name

					// create new JSON file
					$json_filename = $json_index . ".json";
					$pokedex_file = fopen("json/" . $json_filename, "w") or die("Unable to generate pokédex for entry #" . $json_filename . "!");
					$current_pkmn_name = ucwords(strtoupper($row['name']));
					// echo "Starting pokédex entry #" . $json_index . "...<br>";

					fwrite($pokedex_file, "{\n");	// start JSON file

					// // Pokémon id (based on various Pokédexes)
					// fwrite($pokedex_file, "\t\"id\": {\n");
					// fwrite($pokedex_file, "\t\t\"national\": " . $row['id']);

					// // Regional Pokédex ID
					// foreach ($dex_types as $dt) {
					// 	if (isset($row[$dt])) if ($row[$dt] != NULL) fwrite($pokedex_file, ",\n\t\t\"$dt\": " . $row[$dt]);
					// }
					// fwrite($pokedex_file, "\n\t},\n");

					// Pokémon ID (based on various Pokédexes)
					fwrite($pokedex_file, $dex_ids[$row['id'] - 1]);

					// Pokémon name
					fwrite($pokedex_file, "\t\"name\": {\n");
					fwrite($pokedex_file, "\t\t\"en\": \"" . ucwords(strtolower($row['name'])) . "\",\n");	// ENG
					fwrite($pokedex_file, "\t\t\"jp\": \"" . $row['jp_name'] . "\",\n");										// JPN
					fwrite($pokedex_file, "\t\t\"chs\": \"" . $row['chs_name'] . "\",\n");									// CHS
					fwrite($pokedex_file, "\t\t\"cht\": \"" . $row['cht_name'] . "\"\n");										// CHT
					fwrite($pokedex_file, "\t}");

					// Is baby Pokémon?
					fwrite($pokedex_file, ",\n\t\"baby\": " . ($row['baby'] == 0 ? "false" : "true"));
				}

				if (!in_array($row['type_name'], $types_entered)) {	// if a variant has not been entered yet
					array_push($types_entered, $row['type_name']);		// add to $types_entered to prevent duplicates

					fwrite($pokedex_file, ",\n");
					fwrite($pokedex_file, "\t\"" . $row['type_name'] . "\": {\n");
					fwrite($pokedex_file, "\t\t\"desc\": \"" . $row['type_desc'] . "\",\n");

					// type (id based on Yusuke's song 'V')
					fwrite($pokedex_file, "\t\t\"type_id\": [" . $row['type1'] . ", ");
					fwrite($pokedex_file, (!isset($row['type2']) ? "-1" : $row['type2']));
					fwrite($pokedex_file, "],\n");

					// type (for real this time :P)
					fwrite($pokedex_file, "\t\t\"type\": [\"" . $en_type_name[$row['type1']] . "\"");
					if (isset($row['type2'])) fwrite($pokedex_file, ", \"" . $en_type_name[$row['type2']] . "\"");
					fwrite($pokedex_file, "]");

					// if exclusive z-move is available
					if ($row['excl_z_ref'] != NULL) {
						fwrite($pokedex_file, ",\n\t\t\"exclusive_z\": {\n");
						fwrite($pokedex_file, "\t\t\t\"excl_z_move\": \"" . $row['excl_z_move'] . "\",\n");
						fwrite($pokedex_file, "\t\t\t\"excl_z_move_type_id\": " . $row['excl_z_move_type'] . ",\n");
						fwrite($pokedex_file, "\t\t\t\"excl_z_move_type\": \"" . $en_type_name[$row['excl_z_move_type']] . "\",\n");
						fwrite($pokedex_file, "\t\t\t\"excl_z_move_category\": \"" . $row['excl_z_move_cat'] . "\",\n");
						fwrite($pokedex_file, "\t\t\t\"excl_z_crystal\": \"" . $row['excl_z_crystal'] . "\",\n");
						fwrite($pokedex_file, "\t\t\t\"excl_z_required_move\": \"" . $row['excl_z_req_move'] . "\"");

						// some moves do not state power (ex. status moves)
						if ($row['excl_z_power'] != NULL) fwrite($pokedex_file, ",\n\t\t\t\"excl_z_power\": " . $row['excl_z_power'] . "\n");
						else fwrite($pokedex_file, "\n");
						fwrite($pokedex_file, "\t\t}");
					}

					// if g-max is available
					if ($row['gmax_move'] != NULL) {
						fwrite($pokedex_file, ",\n\t\t\"gmax\": {\n");
						fwrite($pokedex_file, "\t\t\t\"gmax_move\": \"" . $row['gmax_move'] . "\",\n");
						fwrite($pokedex_file, "\t\t\t\"gmax_type_id\": " . $row['gmax_type'] . ",\n");
						fwrite($pokedex_file, "\t\t\t\"gmax_type\": \"" . $en_type_name[$row['gmax_type']] . "\"\n");
						fwrite($pokedex_file, "\t\t}");
					}

					// abilities (and Mega stone for megas)
					if (strncmp($row['type_name'], 'mega', 4) != 0) {		// megas only have 1 ability
						fwrite($pokedex_file, ",\n\t\t\"abilities\": {\n");
						fwrite($pokedex_file, "\t\t\t\"ability_1\": \"" . $row['a1_name'] . "\"");
						fwrite($pokedex_file, ",\n\t\t\t\"ability_2\": " . ((!($row['a2_name'])) ? "false" : "\"" . $row['a2_name'] . "\""));
						fwrite($pokedex_file, ",\n\t\t\t\"hidden_ability\": " . ((!($row['ha_name'])) ? "false" : "\"" . $row['ha_name'] . "\""));
						fwrite($pokedex_file, ",\n\t\t\t\"terastal_ability\": " . ((!($row['ta_name'])) ? "false" : "\"" . $row['ta_name'] . "\""));

						fwrite($pokedex_file, "\n\t\t}");
					} else {
						fwrite($pokedex_file, ",\n\t\t\"ability\": \"" . $row['a1_name'] . "\",\n");

						// #384 RAYQUAZA does not use a mega stone
						fwrite($pokedex_file, "\t\t\"mega_stone\": " . (($row['mega_stone'] != NULL) ? "\"" . $row['mega_stone'] . "\"" : "\"n/a\""));
					}

					fwrite($pokedex_file, "\n\t}");
				}
			}

			fwrite($pokedex_file, "\n}");	// close last file
			fclose($pokedex_file);
			echo "[" . printTimestamp($dateFormatString) . "] Finished Pokédex entry #" . $json_index . " " . $current_pkmn_name . "<br>";

			echo "<br>Done generating Pokédex.";
		}
	}
}

disconnectDb(connectDb());
