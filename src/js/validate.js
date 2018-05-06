function validateRegisterForm() {
    /* Aller chercher email address de l'utilisateur */
    var email_addr = document.forms["register_form"]["email_address_register"].value;
    /* Aller chercher le mot de passe de l'utilisateur */
    var password = document.forms["register_form"]["password_register"].value;
    /* Aller chercher le re-type password de l'utilisateur */
    var retype_password = document.forms["register_form"]["retype_password_register"].value;
    /* Aller chercher le nom de l'utilisateur */
    var nom = document.forms["register_form"]["nom_register"].value;
    /* Aller chercher le prénom de l'utilisateur */
    var prenom = document.forms["register_form"]["prenom_register"].value;
    /* Aller chercher le numéro de téléphone de l'utilisateur */
    var num_tel = document.forms["register_form"]["telephone_register"].value;

    /* Vérification que l'adresse courriel n'est pas vide */
    if(email_addr == "") {
        alert("Email address cannot be empty.");
        return false;
    }

    /* Vérification pour le mot de pass :
        - ne doivent pas être vide
        - doivent être pareil
        - doivent être plus que 3 caractères et moins que 11 caractères
    */
    if (password == "") {
        alert("Password field cannot be empty");
        return false;
    } else if (retype_password == "") {
        alert("Re-type password field cannot be empty");
        return false;
    } else if (password != retype_password){
        alert("Passwords do not match.");
        return false;
    } else if ((password.length < 3 || password.length > 10)
        && (retype_password.length < 4 || retype_password .length > 10)) {
        alert("Passwords has to be more than 3 caracters and less than 11 caracters.");
        return false;
    }

    /* Vérifier que nom, prénom et numéro de téléphone n'est pas vide */
    if(nom == ""){
        alert("Name field cannot be empty");
        return false;
    } else if (prenom == "") {
        alert("Last name field cannot be empty");
        return false;
    } else if (num_tel == "") {
        alert("Number of telephone field cannot be empty")
        return false;
    }
    return true;

}

