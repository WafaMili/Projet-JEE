<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Liste des produits</title>
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

        table {
            width: 80%;
            border-collapse: collapse;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #d81b60; /* Rose foncé */
            color: white;
        }

        td {
            color: #555;
        }

        a {
            color: #d81b60; /* Rose foncé */
            text-decoration: none;
            padding: 8px 12px;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        a:hover {
            background-color: #d81b60;
            color: white;
        }

        a:active {
            background-color: #c2185b;
        }

        .actions a {
            margin-right: 10px;
        }

        .add-product {
            margin-top: 20px;
        }

        .add-product a {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .add-product a:hover {
            background-color: #0056b3;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            table {
                width: 95%;
            }

            h1 {
                font-size: 28px;
            }

            th, td {
                padding: 10px;
            }
        }
    </style>
</head>
<body>

    <h1>Liste des produits</h1>
    
    <table>
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Prix</th>
            <c:if test="${sessionScope.user == 'admin'}">
                <th>Actions</th>
            </c:if>
        </tr>
        
        <c:forEach var="produit" items="${produits}">
            <tr>
                <td>${produit.id}</td>
                <td>${produit.nom}</td>
                <td>${produit.prix}</td>
                <c:if test="${sessionScope.user == 'admin'}">
                    <td class="actions">
                        <a href="modifier.do?id=${produit.id}">Modifier</a>
                        <a href="supprimer.do?id=${produit.id}" onclick="return confirm('Voulez-vous vraiment supprimer ce produit ?');">Supprimer</a>
                    </td>
                </c:if>
            </tr>
        </c:forEach>
    </table>

    

</body>
</html>

