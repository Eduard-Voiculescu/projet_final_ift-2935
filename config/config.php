<?php

//$timezone = date_default_timezone_set("America/New_York");

session_start();

//Variables de connexion
$host = "host=127.0.0.1";
$port = "port=5432";
$dbname = "dbname=postgres";
$credentials = "user=postgres password=admin";

//$db = pg_connect("'$host' '$port' '$dbname' '$credentials'");

// DOIT ETRE MODIFIER EN FONCTION DE LA BASE DE DONNEES
$db = pg_connect("host=127.0.0.1 port=5432 dbname=postgres user=postgres password=admin");

if(!$db) {
	echo "Failed to connect: Unable to open database";
}

?>