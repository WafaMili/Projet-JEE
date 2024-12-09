package dao;

import java.sql.*;
import com.Utilisateur;

public class UtilisateurDaoImpl implements UtilisateurDao {
    private DaoFactory daoFactory;

    public UtilisateurDaoImpl(DaoFactory daoFactory) {
        this.daoFactory = daoFactory;
    }

    @Override
    public Utilisateur login(String username, String password) {
        Utilisateur utilisateur = null;
        Connection connexion = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultat = null;

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = connexion.prepareStatement(
                "SELECT id, username, password, role FROM Utilisateur WHERE username = ? AND password = ?");
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            resultat = preparedStatement.executeQuery();

            if (resultat.next()) {
                utilisateur = new Utilisateur();
                utilisateur.setId(resultat.getInt("id"));
                utilisateur.setUsername(resultat.getString("username"));
                utilisateur.setPassword(resultat.getString("password"));
                utilisateur.setRole(resultat.getString("role"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (resultat != null) resultat.close();
                if (preparedStatement != null) preparedStatement.close();
                if (connexion != null) connexion.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return utilisateur;
    }
    @Override
    public boolean addUser(Utilisateur utilisateur) {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;
        boolean success = false;

        try {
            connexion = daoFactory.getConnection();
            String sql = "INSERT INTO Utilisateur (username, password, role) VALUES (?, ?, ?)";
            preparedStatement = connexion.prepareStatement(sql);
            preparedStatement.setString(1, utilisateur.getUsername());
            preparedStatement.setString(2, utilisateur.getPassword()); // Utiliser le mot de passe haché
            preparedStatement.setString(3, utilisateur.getRole());

            int rowsAffected = preparedStatement.executeUpdate();
            success = (rowsAffected > 0);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (connexion != null) connexion.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return success;
    }
}
