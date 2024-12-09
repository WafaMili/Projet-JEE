<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Modifier un produit</title>
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
            justify-content: flex-start;
            min-height: 100vh;
            padding: 20px;
        }

        h1 {
            color: #d81b60; /* Rose foncé */
            margin-bottom: 20px;
            font-size: 36px;
        }

        .form-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
            text-align: center;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            text-align: left;
            font-size: 16px;
            margin-bottom: 8px;
            color: #555;
        }

        input[type="text"] {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 4px;
            margin-bottom: 20px;
            transition: border-color 0.3s ease-in-out;
        }

        input[type="text"]:focus {
            border-color: #007bff;
            outline: none;
        }

        input[type="submit"] {
            padding: 12px;
            font-size: 16px;
            color: white;
            background-color: #d81b60; /* Bouton rose */
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #c2185b; /* Légèrement plus foncé au survol */
        }

        input[type="submit"]:active {
            background-color: #880e4f; /* Encore plus foncé quand activé */
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .form-container {
                padding: 20px;
                width: 100%;
            }

            h1 {
                font-size: 24px;
            }

            input[type="text"] {
                font-size: 14px;
            }

            input[type="submit"] {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h1>Modifier un produit</h1>
        <form method="post" action="TestDao">
            <input type="hidden" name="action" value="modifier" />
            <input type="hidden" name="id" value="${produit.id}" />
            <p>
                <label for="nom">Nom :</label>
                <input type="text" name="nom" id="nom" value="${produit.nom}" required />
            </p>
            <p>
                <label for="prix">Prix :</label>
                <input type="text" name="prix" id="prix" value="${produit.prix}" required />
            </p>
            <input type="submit" value="Modifier" />
        </form>
    </div>

</body>
</html>
