<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Page d'accueil de l'administrateur</title>
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
            margin: 0;
            text-align: center;
        }

        .container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
        }

        h1 {
            color: #d81b60; /* Rose foncé pour le titre */
            font-size: 32px;
            margin-bottom: 20px;
        }

        a {
            color: #d81b60; /* Couleur rose foncé pour les liens */
            font-size: 18px;
            text-decoration: none;
            padding: 10px;
            margin: 10px;
            transition: background-color 0.3s, color 0.3s;
        }

        a:hover {
            background-color: #d81b60;
            color: white;
            border-radius: 5px;
        }

        a:active {
            background-color: #c2185b; /* Couleur plus foncée au clic */
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .container {
                padding: 20px;
                width: 100%;
            }

            h1 {
                font-size: 28px;
            }

            a {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Bienvenue, administrateur</h1>
        <p>
            <a href="afficher.do">Voir la liste des produits</a> | 
            <a href="ajouter.do">Ajouter un produit</a>
        </p>
    </div>
</body>
</html>
