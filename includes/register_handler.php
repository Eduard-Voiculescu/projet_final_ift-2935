<?php
// Variables
$email = "";
$password = "";
$password2 = "";
$nom = "";
$prenom = "";
$telephone = "";

if (isset($_POST['register_button'])) {
	// Retreive necessary informations
	$email = strip_tags($_POST['email_address_register']);
	$password = strip_tags($_POST['password_register']);
	$password2 = strip_tags($_POST['retype_password_register']);
	$nom = strip_tags($_POST['nom_register']);
	$prenom = strip_tags($_POST['prenom_register']);
	$telephone = strip_tags($_POST['telephone_register']);

	// Check if email is already in the database
	/*$query = "SELECT * FROM Utilisateur WHERE courriel = '$email'";
	$email_check = pg_query($db, $query);

	if (pg_num_rows($email_check) > 0) {

	}*/

	// Insert user into the database
	$query = "INSERT INTO Utilisateur (nom, prenom, courriel, num_telephone, motdepasse) VALUES ('$nom', '$prenom, '$email', '$telephone', '$password')";
	$register_user = pg_query($db, $query);

	// Get his user id
	$query = "SELECT id FROM Utilisateur WHERE nom = '$nom' AND prenom = '$prenom' AND courriel = '$email' AND motdepasse = '$password'";
	$get_id_query = pg_query($db, $query);
	$row = pg_fetch_assoc($get_id_query);
	$_SESSION["user_id"] = $row["id"];

	header("Location: index.php");
}

?>