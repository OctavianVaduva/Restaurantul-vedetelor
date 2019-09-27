package restaurant.comenzi.entity;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "comenzi")
public class Comenzi {

    public Comenzi() {
    }

    public Comenzi(Integer idMasa, LocalDateTime dataComanda,
                   Double valoareComanda, Double incasat,
                   LocalDateTime dataIncasare) {
        this.idMasa = idMasa;
        this.dataComanda = dataComanda;
        this.valoareComanda = valoareComanda;
        this.incasat = incasat;
        this.dataIncasare = dataIncasare;
    }

    @Id
    @Column(name = "id_comanda",
            unique = true,
            nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO,
            generator = "native")
    private Integer idComanda;

    @Column(name = "id_masa")
    private Integer idMasa;

    @Column(name = "data_comanda", nullable = false) /* TODO de clarificat daca este OK.
            De clarificat cum facem sa fie generat o singura data (la asignarea numarului comenzii
            si folosit peste tot unde este cerut*/
    @Temporal(TemporalType.TIMESTAMP)
    private LocalDateTime dataComanda;
//    LocalDateTime dataComanda = LocalDateTime.now();;

    @Column(name = "pret_total_comanda")
    private Double valoareComanda;

    @Column(name = "incasat")
    private Double incasat;

    @Column(name = "data_incasare", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private LocalDateTime dataIncasare;

    @Override
    public String toString() {
        return "Comenzi{" +
                "id = " + idComanda +
                ", id masa=" + idMasa +
                ", data comanda=" + dataComanda +
                ", valoare comanda=" + valoareComanda +
                ", incasat =" + incasat +
                ", data incasare=" + dataIncasare +
                '}';
    }

    public Integer getIdComanda() {
        return idComanda;
    }

    public void setIdComanda(Integer idComanda) {
        this.idComanda = idComanda;
    }

    public Integer getIdMasa() {
        return idMasa;
    }

    public void setIdMasa(Integer idMasa) {
        this.idMasa = idMasa;
    }

    public LocalDateTime getDataComanda() {
        return dataComanda;
    }

    public void setDataComanda(LocalDateTime dataComanda) {
        this.dataComanda = dataComanda;
    }

    public Double getValoareComanda() {
        return valoareComanda;
    }

    public void setValoareComanda(Double valoareComanda) {
        this.valoareComanda = valoareComanda;
    }

    public Double getIncasat() {
        return incasat;
    }

    public void setIncasat(Double incasat) {
        this.incasat = incasat;
    }

    public LocalDateTime getDataIncasare() {
        return dataIncasare;
    }

    public void setDataIncasare(LocalDateTime dataIncasare) {
        this.dataIncasare = dataIncasare;
    }
}
