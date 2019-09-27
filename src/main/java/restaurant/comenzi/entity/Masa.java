package restaurant.comenzi.entity;

import javax.persistence.*;

@Entity
@Table(name = "mese")
public class Masa {

    @Id
    @Column(name = "id_masa",
            unique = true,
            nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO,
            generator = "native"
    )
    private Integer idMasa;

    @Column(name = "numar_masa")
    private Integer numarMasa;

    @Column(name = "capacitate_masa")
    private Integer capacitateMasa;

    public Masa() {
    }

    public Masa(Integer numarMasa, Integer capacitateMasa) {
        this.numarMasa = numarMasa;
        this.capacitateMasa = capacitateMasa;
    }

    @Override
    public String toString() {
        return "Masa{" +
                "id = " + idMasa +
                ", numar = " + numarMasa +
                ", capacitate = " + capacitateMasa +
                '}';
    }

    public Integer getIdMasa() {
        return idMasa;
    }

    public void setIdMasa(Integer idMasa) {
        this.idMasa = idMasa;
    }

    public Integer getNumarMasa() {
        return numarMasa;
    }

    public void setNumarMasa(Integer numarMasa) {
        this.numarMasa = numarMasa;
    }

    public Integer getCapacitateMasa() {
        return capacitateMasa;
    }

    public void setCapacitateMasa(Integer capacitateMasa) {
        this.capacitateMasa = capacitateMasa;
    }
}
