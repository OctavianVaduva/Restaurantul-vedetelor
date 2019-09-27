package restaurant.comenzi.entity;

import javax.persistence.*;

@Entity
@Table(name = "stoc_produse")
public class StocProdus {

    public StocProdus() {
    }

    public StocProdus(Integer idProdus, Integer nivelExistent, Integer nivelAlerta) {
        this.idProdus = idProdus;
        this.nivelExistent = nivelExistent;
        this.nivelAlerta = nivelAlerta;
    }

    @Id
    @Column(name = "id_intrare",
            unique = true,
            nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO,
    generator = "native"
    )
    private Integer idIntrare;

    @Column(name = "id_produs")
    private Integer idProdus;

    @Column(name = "nivel_existent")
    private Integer nivelExistent;

    @Column(name = "nivel_alerta")
    private Integer nivelAlerta;

    @Override
    public String toString() {
        return "Stoc produs{" +
                "id intrare = " + idIntrare +
                ", id produs = " + idProdus +
                ", nivel existent = " + nivelExistent +
                ", nivel alerta = " + nivelAlerta +
                '}';
    }

    public Integer getIdIntrare() {
        return idIntrare;
    }

    public void setIdIntrare(Integer idIntrare) {
        this.idIntrare = idIntrare;
    }

    public Integer getIdProdus() {
        return idProdus;
    }

    public void setIdProdus(Integer idProdus) {
        this.idProdus = idProdus;
    }

    public Integer getNivelExistent() {
        return nivelExistent;
    }

    public void setNivelExistent(Integer nivelExistent) {
        this.nivelExistent = nivelExistent;
    }

    public Integer getNivelAlerta() {
        return nivelAlerta;
    }

    public void setNivelAlerta(Integer nivelAlerta) {
        this.nivelAlerta = nivelAlerta;
    }
}
