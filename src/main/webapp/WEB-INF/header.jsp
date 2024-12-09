<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Header</title>
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
            margin-top: 60px; /* Ajouter un espace en haut pour ne pas cacher le contenu sous le header fixe */
        }

        /* Style du header */
        header {
            background-color: #ffffff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 2px solid #d85d8d; /* Ligne de séparation en rose */
            position: fixed; /* Rendre le header fixe en haut */
            top: 0; /* Positionner en haut de la page */
            left: 0;
            right: 0;
            z-index: 1000; /* Assurer que le header reste au-dessus des autres éléments */
        }

        header ul {
            list-style: none;
            display: flex;
            gap: 20px;
        }

        header li {
            display: inline-block;
        }

        header a {
            text-decoration: none;
            font-size: 16px;
            color: #7a4c7f; /* Violet doux pour les liens */
            transition: color 0.3s ease;
        }

        header a:hover {
            color: #c56e94; /* Rose plus intense au survol */
        }

        header a.active {
            color: #d85d8d; /* Rose doux pour l'élément actif */
        }

        /* Responsive Design pour le header */
        @media (max-width: 600px) {
            header {
                flex-direction: column;
                text-align: center;
            }

            header ul {
                flex-direction: column;
                gap: 10px;
            }
        }

        /* Ajouter un espacement en bas pour ne pas chevaucher le contenu */
        main {
            padding-top: 80px; /* Compense la hauteur du header fixe */
        }
    </style>
</head>
<body>
    <header>
        <ul>
            <li><a href="afficher.do" class="active">Liste des produits</a></li>
            <c:if test="${sessionScope.user == 'admin'}">
                <li><a href="ajouter.do">Ajouter un produit</a></li>
            </c:if>
            <li><a href="logout.do">Logout</a></li>
        </ul>
    </header>

    <main>
        <!-- Contenu de la page -->
    </main>
</body>
</html>
