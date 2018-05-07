<?php
require "config/config.php";
require "includes/user_logged_in_check.php";
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
                    <a href="" class="nav-link" style="color: black;">Vente-UdeM-Acheteur</a>
                </li>

            </ul>

            <a href="logout.php" class="btn btn-success" role="button" style="margin: 10px">Log out</a>

        </div>
    </div>
</nav>

<br>

<div class="container">
    <h2>Que recherchez-vous?</h2>
</div>

<form action=""  autocomplete="off" class="form-horizontal" method="post" accept-charset="utf-8">
    <div class="input-group container">

        <select name="categories" type="text" x-placement="allo">
            <option value="" disabled selected>Select your category</option>
            <option value="Voiture">Voiture</option>
            <option value="Meuble">Meuble</option>
            <option value="Livre">Livre</option>
            <option value="Nourriture">Nourriture</option>
        </select>

        <span class="input-group-btn" style="margin: 10px;">
            <button class="btn btn-info" type="submit" id="addressSearch">
                <span class="icon-search">Search</span>
            </button>
        </span>
    </div>
</form>



</body>
</html>