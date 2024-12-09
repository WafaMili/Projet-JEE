package dao;

import java.util.List;
import com.Produit;

public interface ProduitDao {
    void ajouter(Produit produit);
    List<Produit> lister();
    Produit trouver(int id);
    void modifier(Produit produit);
    void supprimer(int id);
    // Ajouter les autres méthodes CRUD si nécessaire
}
