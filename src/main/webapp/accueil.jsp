<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Page d'accueil</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #fce4ec;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            text-align: center;
        }

        h1 {
            color: #d81b60;
            font-size: 36px;
            margin-bottom: 30px;
        }

        .button {
            display: inline-block;
            padding: 12px 20px;
            font-size: 18px;
            text-decoration: none;
            background-color: #d81b60;
            color: white;
            border-radius: 5px;
            margin: 10px;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #c2185b;
        }

        .button:active {
            background-color: #9c1d4b;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Bienvenue sur notre site</h1>

        <!-- Vérifier si l'utilisateur est connecté -->
        <c:if test="${sessionScope.user != null}">
            
            <a href="logout" class="button">Se déconnecter</a>
        </c:if>
        <c:if test="${sessionScope.user == null}">
            <p><a href="login.jsp" class="button">Se connecter</a></p>
            <p><a href="register.jsp" class="button">S'inscrire</a></p>
        </c:if>
    </div>

</body>
</html>
