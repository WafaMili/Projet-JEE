package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminHomeServlet
 */
@WebServlet("/adminHome.do")
public class AdminHomeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Utilisateur utilisateur = (Utilisateur) session.getAttribute("utilisateur");

        if (utilisateur == null || !"admin".equals(utilisateur.getRole())) {
            response.sendRedirect("login.do");
        } else {
            this.getServletContext().getRequestDispatcher("/adminHome.jsp").forward(request, response);
        }
    }
}

