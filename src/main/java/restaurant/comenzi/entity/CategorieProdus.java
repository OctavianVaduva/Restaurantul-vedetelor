package restaurant.comenzi.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "categorie_produs")
public class CategorieProdus {

    public CategorieProdus() {
    }

    public CategorieProdus(String numeCategorieProdus) {
        this.numeCategorieProdus = numeCategorieProdus;
    }

    @Id
    @Column(name = "id_categorie_produs",
            unique = true,
            nullable = false
            )
    @GeneratedValue(
            strategy = GenerationType.AUTO,
            generator = "native"
    )
    @GenericGenerator(
            name = "native",
            strategy = "native"
    )
    private Integer idCategorieProdus; //valoarea idCategorieProdudus

    @Column(name = "nume_categorie_produs")
    private String numeCategorieProdus;

    @Override
    public String toString() {
        return "Categorie Produs{" +
                "id = " + idCategorieProdus +
                ", nume  = '" + numeCategorieProdus + '\'' +
                '}';
    }

    public Integer getIdCategorieProdus() {
        return idCategorieProdus;
    }

    public void setIdCategorieProdus(Integer idCategorieProdus) {
        this.idCategorieProdus = idCategorieProdus;
    }

    public String getNumeCategorieProdus() {
        return numeCategorieProdus;
    }

    public void setNumeCategorieProdus(String numeCategorieProdus) {
        this.numeCategorieProdus = numeCategorieProdus;
    }
}
