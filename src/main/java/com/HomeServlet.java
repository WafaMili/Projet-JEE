package com;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/")  // Cette annotation définit que ce servlet est appelé à l'URL racine ("/")
public class HomeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Logique pour afficher la page d'accueil
        request.getRequestDispatcher("/accueil.jsp").forward(request, response);  // Redirige vers accueil.jsp
    }
}