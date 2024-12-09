<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        /* Global Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #fce4ec; /* Fond rose clair */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0; /* Pas de marge autour du body */
        }

        .form-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px; /* Augmentation de la largeur du formulaire */
            text-align: center;
        }

        h1 {
            color: #d81b60; /* Couleur rose plus foncée pour le titre */
            font-size: 30px;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            text-align: left;
            font-size: 18px;
            margin-bottom: 8px;
            color: #880e4f; /* Couleur rose foncée pour les labels */
        }

        input[type="text"],
        input[type="password"] {
            padding: 12px;
            font-size: 18px;
            border: 1px solid #f48fb1; /* Bordure rose claire */
            border-radius: 8px;
            margin-bottom: 20px;
            transition: border-color 0.3s ease-in-out;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #d81b60; /* Bordure rose foncé lors du focus */
            outline: none;
        }

        input[type="submit"] {
            padding: 14px;
            font-size: 18px;
            color: white;
            background-color: #d81b60; /* Couleur rose foncée pour le bouton */
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #c2185b; /* Couleur plus foncée au survol */
        }

        input[type="submit"]:active {
            background-color: #ad1457; /* Couleur encore plus foncée au clic */
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .form-container {
                padding: 30px;
                width: 100%;
            }

            h1 {
                font-size: 24px;
            }

            input[type="text"],
            input[type="password"] {
                font-size: 16px;
            }

            input[type="submit"] {
                font-size: 16px;
            }
        }
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
    <div class="form-container">
        <h1>Login</h1>
        <form method="post" action="login">
            <p>
                <label for="username">Username: </label>
                <input type="text" name="username" id="username" required>
            </p>
            <p>
                <label for="password">Password: </label>
                <input type="password" name="password" id="password" required>
            </p>
            <input type="submit" value="Login">
        </form>
        <p>Pas encore de compte? <a href="register.jsp">S'inscrire</a></p>
    </div>
</body>
</html>
