<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Ajouter un produit</title>
    <style>
        /* Global Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f0f6; /* Fond doux et léger */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
            text-align: center;
        }

        h1 {
            color: #d85d8d; /* Une couleur rose douce pour le titre */
            font-size: 24px;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            text-align: left;
            font-size: 16px;
            margin-bottom: 8px;
            color: #7a4c7f; /* Violet doux pour les labels */
        }

        input[type="text"],
        input[type="number"] {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #d85d8d; /* Bordure rose douce */
            border-radius: 4px;
            margin-bottom: 20px;
            transition: border-color 0.3s ease-in-out;
        }

        input[type="text"]:focus,
        input[type="number"]:focus {
            border-color: #c56e94; /* Couleur rose plus intense au focus */
            outline: none;
        }

        button {
            padding: 12px;
            font-size: 16px;
            color: white;
            background-color: #c56e94; /* Couleur rose pour le bouton */
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #a14e7e; /* Teinte légèrement plus foncée au survol */
        }

        button:active {
            background-color: #862f5f; /* Teinte encore plus foncée lors du clic */
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .form-container {
                padding: 20px;
                width: 100%;
            }

            h1 {
                font-size: 20px;
            }

            input[type="text"],
            input[type="number"] {
                font-size: 14px;
            }

            button {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Ajouter un produit</h1>
        <form method="POST" action="TestDao">
            <input type="hidden" name="action" value="ajouter" />
            <p>
                <label for="nom">Nom :</label>
                <input type="text" id="nom" name="nom" required />
            </p>
            <p>
                <label for="prix">Prix :</label>
                <input type="number" id="prix" name="prix" step="0.01" required />
            </p>
            <button type="submit">Ajouter</button>
        </form>
    </div>
</body>
</html>
