<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription</title>
    <style>
        /* Définir les couleurs principales du thème rose */
        :root {
            --primary-color: #f7c6d6;  /* Rose pâle */
            --secondary-color: #f06292; /* Rose vif */
            --background-color: #fff0f6; /* Fond très clair */
            --button-color: #ec407a; /* Rose pour les boutons */
            --text-color: #333;  /* Texte sombre pour la lisibilité */
        }

        /* Style global */
        body {
            font-family: Arial, sans-serif;
            background-color: var(--background-color);
            color: var(--text-color);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Conteneur principal */
        .container {
            background-color: var(--primary-color);
            padding: 30px;
            border-radius: 10px;
            width: 400px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Style du titre */
        h1 {
            text-align: center;
            color: var(--secondary-color);
            font-size: 28px;
            margin-bottom: 20px;
        }

        /* Style des labels */
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            color: var(--secondary-color);
        }

        /* Style des champs de formulaire */
        input[type="text"], input[type="password"], select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 2px solid #f7c6d6;
            border-radius: 5px;
            font-size: 16px;
            background-color: #fff;
        }

        /* Change la bordure des champs quand ils sont en focus */
        input[type="text"]:focus, input[type="password"]:focus, select:focus {
            border-color: var(--secondary-color);
            outline: none;
        }

        /* Style du bouton d'envoi */
        input[type="submit"] {
            background-color: var(--button-color);
            color: white;
            border: none;
            padding: 12px;
            border-radius: 5px;
            width: 100%;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        /* Effet de survol pour le bouton */
        input[type="submit"]:hover {
            background-color: #d81b60;
            
            
        }
        /* Style du texte contenant le lien */
p {
    font-size: 16px;
    color: #555; /* Couleur du texte principal */
    text-align: center;
    margin-top: 20px;
}

/* Style du lien */
p a {
    color: #ec407a; /* Couleur rose pour le lien */
    text-decoration: none; /* Enlever le soulignement par défaut */
    font-weight: bold;
}

/* Effet de survol pour le lien */
p a:hover {
    color: #d81b60; /* Couleur plus foncée quand le lien est survolé */
    text-decoration: underline; /* Ajouter un soulignement au survol */
}
        
    </style>
</head>
<body>
    <div class="container">
        <h1>Inscription</h1>
        <form method="POST" action="register">
            <label for="username">Nom d'utilisateur :</label>
            <input type="text" id="username" name="username" required>
            
            <label for="password">Mot de passe :</label>
            <input type="password" id="password" name="password" required>
            
            <label for="role">Rôle :</label>
            <select id="role" name="role">
                <option value="user">Utilisateur</option>
                <option value="admin">Administrateur</option>
            </select>
            
            <input type="submit" value="S'inscrire">
        </form>
       <p>Tu as un compte ? <a href="login.jsp">Se connecter</a></p>
    </div>
</body>
</html>
