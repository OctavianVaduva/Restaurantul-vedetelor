package restaurant.comenzi.entity;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "mese_ospatari")
public class MeseOspatari {
    @Column(name = "data", nullable = false)
    @GeneratedValue (strategy = GenerationType.AUTO, generator = "native") // TODO de verificat
    private LocalDate data; //TODO de documentat cum introducem o astfel de variabila
//    LocalDate data = LocalDate.now();

    @Column(name = "numar_masa")
    private Integer numarMasa;

    @Column(name = "id_ospatar")
    private Integer idOspatar;

    public MeseOspatari() {
    }

    public MeseOspatari(Integer numarMasa, Integer idOspatar) {
        this.numarMasa = numarMasa;
        this.idOspatar = idOspatar;
    }

    @Override
    public String toString() {
        return "Corelare Mese - Ospatari{" +
                "data = " + data +
                ", numar masa=" + numarMasa +
                ", id ospatar=" + idOspatar +
                '}';
    }

    public LocalDate getData() {
        return data;
    }

    public void setData(LocalDate data) {
        this.data = data;
    }

    public Integer getNumarMasa() {
        return numarMasa;
    }

    public void setNumarMasa(Integer numarMasa) {
        this.numarMasa = numarMasa;
    }

    public Integer getIdOspatar() {
        return idOspatar;
    }

    public void setIdOspatar(Integer idOspatar) {
        this.idOspatar = idOspatar;
    }
}
