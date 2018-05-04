function validatureSignIn() {
    /* Aller chercher le courriel que l'utilisateur a rentré */
    var email = document.forms["signIn_form"]["email_address_sign_in"].value;

    /* Aller chercher le mot de passe que l'utilisateur a rentré */
    var password = document.forms["signIn_form"]["password_sign_in"].value;

    /* Vérifier que l'utilisateur a bel et bien entré quelque chose */
    if(email == "") {
        alert("Email address cannot be empty.");
        return false;
    } else if (password == ""){
        alert("Password field cannot be empty");
        return false;
    }

    // TODO: Validation avec la base de donnée -> est-ce que l'utilisateur est dans la base ...
}