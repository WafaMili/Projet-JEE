package com;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/logout.do")
public class LogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Vérifier si une session existe
        HttpSession session = request.getSession(false); // false pour ne pas en créer une nouvelle
        if (session != null) {
            // Invalider la session si elle existe
            session.invalidate();
        }
        
        // Rediriger l'utilisateur vers la page d'accueil
        response.sendRedirect("accueil.jsp");
    }
}
