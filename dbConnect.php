<?php

static $connection = null;

function connectDb() {
	require "pw.php";		// separate file that should only contain $password variable

	/* mySQL Database Connection */
	$db_user = "root";
	$db_pw = $password;
	$db_name = "pokemon";

	static $connection;
	if ($connection === null) {
		$connection = new mysqli("localhost", $db_user, $db_pw, $db_name);
		if ($connection->error) die($connection->connect_error);
	}

	return $connection;
}

function disconnectDb($connection) {
	if ($connection !== null) $connection->close();
}
