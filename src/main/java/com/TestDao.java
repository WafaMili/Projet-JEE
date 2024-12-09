package com;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DaoFactory;
import dao.ProduitDao;

import java.io.IOException;

@WebServlet(name="cs", urlPatterns={"/TestDao", "*.do"})
public class TestDao extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProduitDao produitDao;

    public TestDao() {
        super();
        DaoFactory daoFactory = DaoFactory.getInstance();
        this.produitDao = daoFactory.getProduitDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String user = (String) session.getAttribute("user");

        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        String path = request.getServletPath();
        switch (path) {
            case "/ajouter.do":
                if ("admin".equals(user)) {
                    this.getServletContext().getRequestDispatcher("/WEB-INF/ajouter.jsp").forward(request, response);
                } else {
                    response.sendRedirect("TestDao");
                }
                break;
                
            case "/afficher.do":
                request.setAttribute("produits", produitDao.lister());
                this.getServletContext().getRequestDispatcher("/WEB-INF/ProdView.jsp").forward(request, response);
                break;

            case "/modifier.do":
                if ("admin".equals(user)) {
                    try {
                        int id = Integer.parseInt(request.getParameter("id"));
                        Produit produit = produitDao.trouver(id); // Ajouter une méthode trouver dans ProduitDao
                        if (produit != null) {
                            request.setAttribute("produit", produit);
                            this.getServletContext().getRequestDispatcher("/WEB-INF/modifier.jsp").forward(request, response);
                        } else {
                            response.sendRedirect("afficher.do");
                        }
                    } catch (NumberFormatException e) {
                        response.sendRedirect("afficher.do");
                    }
                } else {
                    response.sendRedirect("TestDao");
                }
                break;

            case "/supprimer.do":
                if ("admin".equals(user)) {
                    try {
                        int id = Integer.parseInt(request.getParameter("id"));
                        produitDao.supprimer(id);
                    } catch (NumberFormatException e) {
                        // handle exception if needed
                    }
                    response.sendRedirect("afficher.do");
                } else {
                    response.sendRedirect("TestDao");
                }
                break;

            default:
                this.getServletContext().getRequestDispatcher("/WEB-INF/header.jsp").forward(request, response);
                break;
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String user = (String) session.getAttribute("user");

        if (user == null || !"admin".equals(user)) {
            response.sendRedirect("login.jsp");
            return;
        }

        String action = request.getParameter("action");
        if ("ajouter".equals(action)) {
            Produit produit = new Produit();
            produit.setNom(request.getParameter("nom"));
            produit.setPrix(Double.parseDouble(request.getParameter("prix")));
            produitDao.ajouter(produit);
        } else if ("modifier".equals(action)) {
            Produit produit = new Produit();
            produit.setId(Integer.parseInt(request.getParameter("id")));
            produit.setNom(request.getParameter("nom"));
            produit.setPrix(Double.parseDouble(request.getParameter("prix")));
            produitDao.modifier(produit);
        }
        response.sendRedirect("afficher.do");
    }
}

