<?php
	$connection = null;
	
	function connectDb() {
		/* mySQL Database Connection */
        $db_user = "root";
        $db_pw = "Dzombiedude612";
		$db_name = "pokemon";
		
		static $connection;
		if($connection === null) {
			$connection = new mysqli("localhost", $db_user, $db_pw, $db_name);
			if($connection -> error) die($connection -> connect_error);
		}

		return $connection;
	}

	function disconnectDb() {
		if($connection !== null) $connection -> close();
	}

	$num_distinct_entries = 0;
	$query = connectDb() -> query("CALL `count_distinct_entries`;");

	if($query) {
		if($query -> num_rows > 0) {
			$row = $query -> fetch_assoc();
			$num_distinct_entries = $row['count'];
		}

		$query -> close();
		connectDb() -> next_result();
	}

	echo "Counted entries: " . $num_distinct_entries . "<br><br>";

	$en_type_name = [
		"dragon", "ghost", "ground", "flying", "poison", "bug", "water", "electric", "rock", "grass", "dark", "ice", "normal", "fire", "fighting", "steel", "psychic", "fairy"
	];
		
	if($num_distinct_entries > 0) {
		$json_index = "0000";
		$json_filename = $json_index . ".json";
		$query = connectDb() -> query("CALL `show_pkmn`('');");

		$dex_types = [
			'galar_dex', 'galar_isle_of_armor'	// Generation 8 (Sword and Shield)
		];
		
		if($query) {
			if($query -> num_rows > 0) {
				while($row = $query -> fetch_assoc()) {
					$json_name = "0000" . $row['id'];
					while(strlen($json_name) > 4) $json_name = substr($json_name, 1);

					// if row is pointing to new pokemon entry
					if(strcmp($json_index, $json_name) != 0) {
						// end an open file, 0000.json should not exist
						if($json_index != "0000") {
							fwrite($pokedex_file, "\n}");
							fclose($pokedex_file);	// close existing json file
							// echo "Finished pokédex entry #" . $json_index . ".<br>";
						}
						
						$json_index = $json_name;	// new json name

						// create new json file
						$json_filename = $json_index . ".json";
						$pokedex_file = fopen("json/" . $json_filename, "w") or die("Unable to generate pokedex!");
						// echo "Starting pokédex entry #" . $json_index . "...<br>";

						fwrite($pokedex_file, "{\n");

						// pokemon id (based on various Pokedexes)
						fwrite($pokedex_file, "\t\"id\": {\n");
						fwrite($pokedex_file, "\t\t\"national\": " . $row['id']);
						// Galar Pokédex
						foreach($dex_types as $dt) {
							if(isset($row[$dt])) if($row[$dt] != NULL) fwrite($pokedex_file, ",\n\t\t\"$dt\": " . $row[$dt]);
						}
						fwrite($pokedex_file, "\n\t},\n");

						// pokemon name
						fwrite($pokedex_file, "\t\"name\": {\n");
						fwrite($pokedex_file, "\t\t\"en\": \"" . ucwords(strtolower($row['name'])) . "\",\n");
						fwrite($pokedex_file, "\t\t\"jp\": \"" . $row['jp_name'] . "\"\n");
						fwrite($pokedex_file, "\t}");

						// baby level
						fwrite($pokedex_file, ",\n\t\"baby\": ");
						if($row['baby'] == 0) fwrite($pokedex_file, "false");
						else fwrite($pokedex_file, "true"); 
					}
					
					fwrite($pokedex_file, ",\n");
					fwrite($pokedex_file, "\t\"" . $row['type_name'] . "\": {\n");
					fwrite($pokedex_file, "\t\t\"desc\": \"" . $row['type_desc'] . "\",\n");

					// type (id based on Yusuke's song 'V')
					fwrite($pokedex_file, "\t\t\"type_id\": [" . $row['type1'] . ", ");
					if(!isset($row['type2'])) fwrite($pokedex_file, "-1");
					else fwrite($pokedex_file, $row['type2']);
					fwrite($pokedex_file, "],\n");

					// type (for real this time :P)
					fwrite($pokedex_file, "\t\t\"type\": [\"" . $en_type_name[$row['type1']] . "\"");
					if(isset($row['type2'])) fwrite($pokedex_file, ", \"" . $en_type_name[$row['type2']] . "\"");
					fwrite($pokedex_file, "]");

					// if exclusive z-move is available
					if($row['excl_z_ref'] != NULL) {
						fwrite($pokedex_file, ",\n\t\t\"exclusive_z\": {\n");
						fwrite($pokedex_file, "\t\t\t\"excl_z_move\": \"" . $row['excl_z_move'] . "\",\n");
						fwrite($pokedex_file, "\t\t\t\"excl_z_move_type_id\": " . $row['excl_z_move_type'] . ",\n");
						fwrite($pokedex_file, "\t\t\t\"excl_z_move_type\": \"" . $en_type_name[$row['excl_z_move_type']] . "\",\n");
						fwrite($pokedex_file, "\t\t\t\"excl_z_move_category\": \"" . $row['excl_z_move_cat'] . "\",\n");
						fwrite($pokedex_file, "\t\t\t\"excl_z_crystal\": \"" . $row['excl_z_crystal'] . "\",\n");
						fwrite($pokedex_file, "\t\t\t\"excl_z_required_move\": \"" . $row['excl_z_req_move'] . "\"");

						// some moves do not state power (ex. Status moves)
						if($row['excl_z_power'] != NULL) fwrite($pokedex_file, ",\n\t\t\t\"excl_z_power\": " . $row['excl_z_power'] . "\n");
						else fwrite($pokedex_file, "\n");
						fwrite($pokedex_file, "\t\t}");
					}

					// if gmax is available
					if($row['g_max_move'] != NULL) {
						fwrite($pokedex_file, ",\n\t\t\"g_max\": {\n");
						fwrite($pokedex_file, "\t\t\t\"g_max_move\": \"" . $row['g_max_move'] . "\",\n");
						fwrite($pokedex_file, "\t\t\t\"g_max_type_id\": " . $row['g_max_type'] . ",\n");
						fwrite($pokedex_file, "\t\t\t\"g_max_type\": \"" . $en_type_name[$row['g_max_type']] . "\"\n");
						fwrite($pokedex_file, "\t\t}");
					} 

					// abilities (and Mega stone for megas)
					if(strncmp($row['type_name'], 'mega', 4) != 0) {		// megas only have 1 ability
						fwrite($pokedex_file, ",\n\t\t\"abilities\": {\n");
						fwrite($pokedex_file, "\t\t\t\"ability_1\": \"" . $row['a1_name'] . "\"");
						if(!($row['a2_name'])) fwrite($pokedex_file, ",\n\t\t\t\"ability_2\": false");
						else fwrite($pokedex_file, ",\n\t\t\t\"ability_2\": \"" . $row['a2_name'] . "\"");
						if(!($row['ha_name'])) fwrite($pokedex_file, ",\n\t\t\t\"hidden_ability\": false");
						else fwrite($pokedex_file, ",\n\t\t\t\"hidden_ability\": \"" . $row['ha_name'] . "\"");

						fwrite($pokedex_file, "\n\t\t}");
					} else {
						fwrite($pokedex_file, ",\n\t\t\"ability\": \"" . $row['a1_name'] . "\",\n");

						// #384 RAYQUAZA does not use a mega stone
						if($row['mega_stone'] != NULL) fwrite($pokedex_file, "\t\t\"mega_stone\": \"" . $row['mega_stone'] . "\"");
						else fwrite($pokedex_file, "\t\t\"mega_stone\": \"n/a\"");
					}
					
					fwrite($pokedex_file, "\n\t}");
				}

				fclose($pokedex_file);
				// echo "Finished pokédex entry #" . $json_index . ".<br><br>";

				echo "Done generating pokédex.";
			}
		}
	}
