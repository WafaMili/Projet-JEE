package dao;

import com.Utilisateur;

public interface UtilisateurDao {
    Utilisateur login(String username, String password);
    boolean addUser(Utilisateur utilisateur);
}
