<?php
require 'config/config.php';
require 'includes/register_handler.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <!-- Google fonts-->

    <!-- Bootstrap css -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">

    <!-- Custom css -->
    <link rel="stylesheet" type="text/css" href="assets/css/myStyle.css">

    <!-- Boostrap js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Custom js -->
    <script src="assets/js/validate.js"></script>

    <title>Projet Final IFT-2935</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light purple sticky-top">
    <div class="container deep-purple">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <ul class="navbar-nav mr-auto">

                <!-- Page principale -->
                <li class="nav-item font-weight-bold" >
                    <a href="index.html" class="nav-link" style="color: black;">Vente-UdeM-Acheteur</a>
                </li>

            </ul>

            <a href="register.php" class="btn btn-success" role="button" style="margin: 10px">Register</a>
            <a href="signin.php" class="btn btn-success" role="button">Sign In</a>

        </div>
    </div>
</nav>

<br>

<div class="container">
    <div class="col col-md-6">
        <h2>Register</h2>
        <br>
        <form name="register_form" autocomplete="off" class="form-horizontal" method="POST" action="register.php" accept-charset="utf-8"
              onsubmit="return validateRegisterForm()">

            <!-- Nom -->
            <input name="nom_register" placeholder="Nom" class="form-control" type="text">
            <br>

            <!-- Prenom -->
            <input name="prenom_register" placeholder="Prénom" class="form-control" type="text">
            <br>

            <!-- Numéro de Téléphone -->
            <input name="telephone_register" placeholder="Téléphone" class="form-control" type="number">
            <br>

            <!-- Email Address-->
            <input name="email_address_register" placeholder="Email Address" class="form-control" type="email">
            <br>

            <!-- Password-->
            <h6>Password (3-11 caracters):</h6>
            <input name="password_register" placeholder="Password" class="form-control" type="password">
            <br>

            <!-- Retype-Password-->
            <h6>Re-type Password</h6>
            <input name="retype_password_register" placeholder="Re-type Password" class="form-control" type="password">
            <br>

            <input class="btn btn-success" type="submit" name="register_button" id="submit_sign_in" value="Register"/>

        </form>
    </div>
</div>

</body>
</html>