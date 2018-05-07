<?php
require 'config/config.php';
require 'includes/login_handler.php';
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
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">

    <!-- Custom css -->
    <link rel="stylesheet" type="text/css" href="css/myStyle.css">

    <!-- Boostrap js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <!-- Custom js -->
    <script src="js/signin.js"></script>

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
        <?php
            if (isset($_POST['wrong_credentials'])) {
                if ($_POST['wrong_credentials'] == "TRUE") {
                echo "<h2 style="color: red">Wrong email or password, try again!</h2>";
                }
            }
        ?>
        <h2>Sign in</h2>
        <form action="login.php" autocomplete="off" name="signIn_form" class="form-horizontal" method="post" accept-charset="utf-8"
              onsubmit="return validatureSignIn()">
            <input name="email_address_sign_in" placeholder="Email Address" class="form-control" type="text">
            <br>
            <input name="password_sign_in" placeholder="Password" class="form-control" type="password">

            <br>

            <span class="input-group-btn">
                <button class="btn btn-success" type="submit" id="submit_sign_in" name="login_button">
                    <span class="icon-search">Sign In</span>
                </button>
            </span>
        </form>
    </div>
</div>

</body>
</html>