package com;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoFactory;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Méthode pour gérer les requêtes POST (enregistrement d'un utilisateur)
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");  // Récupérer le rôle choisi

        // Vérification que les champs ne sont pas vides
        if (username == null || password == null || role == null) {
            response.sendRedirect("register.jsp");  // Redirige si des champs sont manquants
            return;
        }

        // Appel de la méthode pour insérer l'utilisateur dans la base de données
        try (Connection connection = DaoFactory.getInstance().getConnection()) {
            String sql = "INSERT INTO Utilisateur (username, password, role) VALUES (?, ?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, username);
                statement.setString(2, password);
                statement.setString(3, role);

                int rowsAffected = statement.executeUpdate();  // Exécution de la requête d'insertion

                if (rowsAffected > 0) {
                    // Si l'utilisateur a été ajouté avec succès, rediriger vers la page de connexion
                    response.sendRedirect("login.jsp");
                } else {
                    // Si l'insertion échoue, rediriger vers la page d'inscription
                    response.sendRedirect("register.jsp");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();  // Afficher l'exception pour déboguer
            response.sendRedirect("register.jsp");
        }
    }

    // Méthode pour gérer les requêtes GET (afficher le formulaire d'inscription)
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/register.jsp").forward(request, response);
    }
}
