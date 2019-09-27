package restaurant.comenzi.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.time.LocalDateTime;

public class ArhivaComenziCurente {

    public ArhivaComenziCurente() {
    }

    public ArhivaComenziCurente(Integer idCommandaCurenta, Integer idComanda,
                                LocalDateTime dataComanda, Integer idProdus,
                                Integer nrProduse, Double pretEchivalent,
                                Integer livrat, Double pretTotalComanda,
                                Double incasat, LocalDateTime dataIncasare,
                                Integer idMasa) {
        this.idCommandaCurenta = idCommandaCurenta;
        this.idComanda = idComanda;
        this.dataComanda = dataComanda;
        this.idProdus = idProdus;
        this.nrProduse = nrProduse;
        this.pretEchivalent = pretEchivalent;
        this.livrat = livrat;
        this.pretTotalComanda = pretTotalComanda;
        this.incasat = incasat;
        this.dataIncasare = dataIncasare;
        this.idMasa = idMasa;
    }

    @Id
    @Column(name = "id_inregistrare",
            unique = true,
            nullable = false)
    @GeneratedValue(
            strategy = GenerationType.AUTO,
            generator = "native"
    )
    @GenericGenerator(name = "native",
            strategy = "native"
    )
    private Integer idInregistrare;

    @Column(name = "id_comanda_curenta")
    private Integer idCommandaCurenta;

    @Column(name = "id_comanda")
    private Integer idComanda;

    @Column(name = "data_comanda")
    @Temporal(TemporalType.TIMESTAMP)
    private LocalDateTime dataComanda;

    @Column(name = "id_produs")
    private Integer idProdus;

    @Column(name = "nr_produse")
    private Integer nrProduse;

    @Column(name = "pret_echivalent")
    private Double pretEchivalent;

    @Column(name = "livrat")
    private Integer livrat;

    @Column(name = "pret_total_comanda")
    private Double pretTotalComanda;

    @Column(name = "incasat")
    private Double incasat;

    @Column(name = "data_incasare")
    @Temporal(TemporalType.TIMESTAMP)
    private LocalDateTime dataIncasare;

    @Column(name = "id_masa")
    private Integer idMasa;

    @Override
    public String toString() {
        return "ArhivaComenziCurente{" +
                "id onregistrare=" + idInregistrare +
                ", nr.crt. commanda curenta=" + idCommandaCurenta +
                ", id comanda=" + idComanda +
                ", data comanda=" + dataComanda +
                ", id produs=" + idProdus +
                ", nr produse=" + nrProduse +
                ", pret echivalent=" + pretEchivalent +
                ", livrat=" + livrat +
                ", pret total comanda=" + pretTotalComanda +
                ", incasat=" + incasat +
                ", data incasare=" + dataIncasare +
                ", id masa=" + idMasa +
                '}';
    }

    public Integer getIdInregistrare() {
        return idInregistrare;
    }

    public void setIdInregistrare(Integer idInregistrare) {
        this.idInregistrare = idInregistrare;
    }

    public Integer getIdCommandaCurenta() {
        return idCommandaCurenta;
    }

    public void setIdCommandaCurenta(Integer idCommandaCurenta) {
        this.idCommandaCurenta = idCommandaCurenta;
    }

    public Integer getIdComanda() {
        return idComanda;
    }

    public void setIdComanda(Integer idComanda) {
        this.idComanda = idComanda;
    }

    public LocalDateTime getDataComanda() {
        return dataComanda;
    }

    public void setDataComanda(LocalDateTime dataComanda) {
        this.dataComanda = dataComanda;
    }

    public Integer getIdProdus() {
        return idProdus;
    }

    public void setIdProdus(Integer idProdus) {
        this.idProdus = idProdus;
    }

    public Integer getNrProduse() {
        return nrProduse;
    }

    public void setNrProduse(Integer nrProduse) {
        this.nrProduse = nrProduse;
    }

    public Double getPretEchivalent() {
        return pretEchivalent;
    }

    public void setPretEchivalent(Double pretEchivalent) {
        this.pretEchivalent = pretEchivalent;
    }

    public Integer getLivrat() {
        return livrat;
    }

    public void setLivrat(Integer livrat) {
        this.livrat = livrat;
    }

    public Double getPretTotalComanda() {
        return pretTotalComanda;
    }

    public void setPretTotalComanda(Double pretTotalComanda) {
        this.pretTotalComanda = pretTotalComanda;
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

    public Integer getIdMasa() {
        return idMasa;
    }

    public void setIdMasa(Integer idMasa) {
        this.idMasa = idMasa;
    }
}
