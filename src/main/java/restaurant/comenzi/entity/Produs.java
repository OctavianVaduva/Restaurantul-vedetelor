package restaurant.comenzi.entity;

import javax.persistence.*;

@Entity
@Table(name = "produse")
public class Produs {

    public Produs() {
    }

    public Produs(Integer idCategorie, String numeProdus,
                  String descriereProdus, Integer pretUnitar) {
        this.idCategorie = idCategorie;
        this.numeProdus = numeProdus;
        this.descriereProdus = descriereProdus;
        this.pretUnitar = pretUnitar;
    }

    @Id
    @Column(name = "id_produs",
            unique = true,
            nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO,
    generator = "native"
    )
    private Integer idProdus;

    @Column(name = "id_categorie")
    private Integer idCategorie;

    @Column(name = "nume_produs")
    private String numeProdus;

    @Column(name = "descriere_produs")
    private String descriereProdus;

    @Column(name = "pret_unitar")
    private Integer pretUnitar;

    @Override
    public String toString() {
        return "Produs{" +
                "id =" + idProdus +
                ", idCategorie=" + idCategorie +
                ", nume ='" + numeProdus + '\'' +
                ", descriere ='" + descriereProdus + '\'' +
                ", pret unitar=" + pretUnitar +
                '}';
    }

    public Integer getIdProdus() {
        return idProdus;
    }

    public void setIdProdus(Integer idProdus) {
        this.idProdus = idProdus;
    }

    public Integer getIdCategorie() {
        return idCategorie;
    }

    public void setIdCategorie(Integer idCategorie) {
        this.idCategorie = idCategorie;
    }

    public String getNumeProdus() {
        return numeProdus;
    }

    public void setNumeProdus(String numeProdus) {
        this.numeProdus = numeProdus;
    }

    public String getDescriereProdus() {
        return descriereProdus;
    }

    public void setDescriereProdus(String descriereProdus) {
        this.descriereProdus = descriereProdus;
    }

    public Integer getPretUnitar() {
        return pretUnitar;
    }

    public void setPretUnitar(Integer pretUnitar) {
        this.pretUnitar = pretUnitar;
    }

}
