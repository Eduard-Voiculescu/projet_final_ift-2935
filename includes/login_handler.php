<?php
$email = "";
$password = "";

if (isset($_POST['login_button'])) {
	$email = strip_tags($_POST['email_address_sign_in']);
	$password = strip_tags($_POST['password_sign_in']);

	$query = "SELECT id FROM pf.Utilisateur WHERE courriel='$email' AND password='$password";
	$get_id_query = pg_query($db, $query);

	if (pg_num_rows($get_id_query) > 0) {
		$row = pg_fetch_assoc($get_id_query);
		$_SESSION["user_id"] = $row["id"];

		header("Location: index.php");
	} else {
		$_SESSION['wrong_credentials'] = "TRUE";
	}
}
?>