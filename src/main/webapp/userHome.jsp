<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Page d'accueil de l'utilisateur</title>
    <style>
        /* Reset Global Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #fce4ec; /* Fond rose clair */
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            padding: 20px;
        }

        h1 {
            color: #d81b60; /* Rose foncé */
            margin-bottom: 30px;
            font-size: 36px;
        }

        a {
            font-size: 18px;
            text-decoration: none;
            color: #d81b60;
            background-color: #fff;
            padding: 12px 20px;
            border-radius: 4px;
            transition: background-color 0.3s ease, color 0.3s ease;
            border: 2px solid #d81b60;
        }

        a:hover {
            background-color: #d81b60;
            color: white;
        }

        a:active {
            background-color: #c2185b;
        }
    </style>
</head>
<body>

    <h1>Bienvenue, utilisateur</h1>
    <a href="afficher.do">Voir la liste des produits</a>

</body>
</html>
