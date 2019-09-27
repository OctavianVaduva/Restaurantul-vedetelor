package restaurant.comenzi.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "ospatari")
public class Ospatar {

    public Ospatar() {
    }

    public Ospatar(String numeOspatar, String prenumeOspatar) {
        this.numeOspatar = numeOspatar;
        this.prenumeOspatar = prenumeOspatar;
    }

    @Id
    @Column(name = "id_ospatar",
            unique = true,
            nullable = false)
    @GeneratedValue(
            strategy = GenerationType.AUTO,
            generator = "native"
    )
    @GenericGenerator(
            name = "native",
            strategy = "native"
    )
    private Integer idOspatar;

    @Column(name = "nume_ospatar")
    private String numeOspatar;

    @Column(name = "prenume_ospatar")
    private String prenumeOspatar;

    @Override
    public String toString() {
        return "Ospatar{" +
                "idCategorieProdus =" + idOspatar +
                ", nume ='" + numeOspatar + '\'' +
                ", prenume ='" + prenumeOspatar + '\'' +
                '}';
    }

    public Integer getIdOspatar() {
        return idOspatar;
    }

    public void setIdOspatar(Integer idOspatar) {
        this.idOspatar = idOspatar;
    }

    public String getNumeOspatar() {
        return numeOspatar;
    }

    public void setNumeOspatar(String numeOspatar) {
        this.numeOspatar = numeOspatar;
    }

    public String getPrenumeOspatar() {
        return prenumeOspatar;
    }

    public void setPrenumeOspatar(String prenumeOspatar) {
        this.prenumeOspatar = prenumeOspatar;
    }


}
