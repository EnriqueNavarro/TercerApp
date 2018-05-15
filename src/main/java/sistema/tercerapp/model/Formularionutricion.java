/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.model;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Francisco
 */
@Entity
@Table(name = "formularionutricion")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Formularionutricion.findAll", query = "SELECT f FROM Formularionutricion f"),
    @NamedQuery(name = "Formularionutricion.findById", query = "SELECT f FROM Formularionutricion f WHERE f.id = :id"),
    @NamedQuery(name = "Formularionutricion.findByCreacion", query = "SELECT f FROM Formularionutricion f WHERE f.creacion = :creacion"),
    @NamedQuery(name = "Formularionutricion.findByLastUpdated", query = "SELECT f FROM Formularionutricion f WHERE f.lastUpdated = :lastUpdated"),
    @NamedQuery(name = "Formularionutricion.findByNombre", query = "SELECT f FROM Formularionutricion f WHERE f.nombre = :nombre"),
    @NamedQuery(name = "Formularionutricion.findByEdad", query = "SELECT f FROM Formularionutricion f WHERE f.edad = :edad"),
    @NamedQuery(name = "Formularionutricion.findByPeso", query = "SELECT f FROM Formularionutricion f WHERE f.peso = :peso"),
    @NamedQuery(name = "Formularionutricion.findByElectrolitos", query = "SELECT f FROM Formularionutricion f WHERE f.electrolitos = :electrolitos"),
    @NamedQuery(name = "Formularionutricion.findByAlbumina", query = "SELECT f FROM Formularionutricion f WHERE f.albumina = :albumina"),
    @NamedQuery(name = "Formularionutricion.findByImc", query = "SELECT f FROM Formularionutricion f WHERE f.imc = :imc"),
    @NamedQuery(name = "Formularionutricion.findByDiametroBrazo", query = "SELECT f FROM Formularionutricion f WHERE f.diametroBrazo = :diametroBrazo"),
    @NamedQuery(name = "Formularionutricion.findByDiametroPierna", query = "SELECT f FROM Formularionutricion f WHERE f.diametroPierna = :diametroPierna"),
    @NamedQuery(name = "Formularionutricion.findByDiametroAbdomen", query = "SELECT f FROM Formularionutricion f WHERE f.diametroAbdomen = :diametroAbdomen"),
    @NamedQuery(name = "Formularionutricion.findByPresion", query = "SELECT f FROM Formularionutricion f WHERE f.presion = :presion"),
    @NamedQuery(name = "Formularionutricion.findByBh", query = "SELECT f FROM Formularionutricion f WHERE f.bh = :bh"),
    @NamedQuery(name = "Formularionutricion.findByGlucosa", query = "SELECT f FROM Formularionutricion f WHERE f.glucosa = :glucosa"),
    @NamedQuery(name = "Formularionutricion.findByLipidos", query = "SELECT f FROM Formularionutricion f WHERE f.lipidos = :lipidos")})
public class Formularionutricion implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "creacion")
    @Temporal(TemporalType.TIMESTAMP)
    private Date creacion;
    @Column(name = "lastUpdated")
    @Temporal(TemporalType.TIMESTAMP)
    private Date lastUpdated;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "nombre")
    private String nombre;
    @Basic(optional = false)
    @NotNull
    @Column(name = "edad")
    private int edad;
    @Basic(optional = false)
    @NotNull
    @Column(name = "peso")
    private double peso;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "electrolitos")
    private Double electrolitos;
    @Column(name = "albumina")
    private Double albumina;
    @Column(name = "IMC")
    private Double imc;
    @Column(name = "diametroBrazo")
    private Double diametroBrazo;
    @Column(name = "diametroPierna")
    private Double diametroPierna;
    @Column(name = "diametroAbdomen")
    private Double diametroAbdomen;
    @Column(name = "presion")
    private Double presion;
    @Column(name = "BH")
    private Double bh;
    @Column(name = "glucosa")
    private Double glucosa;
    @Column(name = "lipidos")
    private Double lipidos;
    @OneToMany(mappedBy = "idformularioNutricion")
    private Collection<Pacientes> pacientesCollection;

    public Formularionutricion() {
    }

    public Formularionutricion(Integer id) {
        this.id = id;
    }

    public Formularionutricion(Integer id, Date creacion, String nombre, int edad, double peso) {
        this.id = id;
        this.creacion = creacion;
        this.nombre = nombre;
        this.edad = edad;
        this.peso = peso;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getCreacion() {
        return creacion;
    }

    public void setCreacion(Date creacion) {
        this.creacion = creacion;
    }

    public Date getLastUpdated() {
        return lastUpdated;
    }

    public void setLastUpdated(Date lastUpdated) {
        this.lastUpdated = lastUpdated;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public Double getElectrolitos() {
        return electrolitos;
    }

    public void setElectrolitos(Double electrolitos) {
        this.electrolitos = electrolitos;
    }

    public Double getAlbumina() {
        return albumina;
    }

    public void setAlbumina(Double albumina) {
        this.albumina = albumina;
    }

    public Double getImc() {
        return imc;
    }

    public void setImc(Double imc) {
        this.imc = imc;
    }

    public Double getDiametroBrazo() {
        return diametroBrazo;
    }

    public void setDiametroBrazo(Double diametroBrazo) {
        this.diametroBrazo = diametroBrazo;
    }

    public Double getDiametroPierna() {
        return diametroPierna;
    }

    public void setDiametroPierna(Double diametroPierna) {
        this.diametroPierna = diametroPierna;
    }

    public Double getDiametroAbdomen() {
        return diametroAbdomen;
    }

    public void setDiametroAbdomen(Double diametroAbdomen) {
        this.diametroAbdomen = diametroAbdomen;
    }

    public Double getPresion() {
        return presion;
    }

    public void setPresion(Double presion) {
        this.presion = presion;
    }

    public Double getBh() {
        return bh;
    }

    public void setBh(Double bh) {
        this.bh = bh;
    }

    public Double getGlucosa() {
        return glucosa;
    }

    public void setGlucosa(Double glucosa) {
        this.glucosa = glucosa;
    }

    public Double getLipidos() {
        return lipidos;
    }

    public void setLipidos(Double lipidos) {
        this.lipidos = lipidos;
    }

    @XmlTransient
    public Collection<Pacientes> getPacientesCollection() {
        return pacientesCollection;
    }

    public void setPacientesCollection(Collection<Pacientes> pacientesCollection) {
        this.pacientesCollection = pacientesCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Formularionutricion)) {
            return false;
        }
        Formularionutricion other = (Formularionutricion) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "sistema.tercerapp.model.Formularionutricion[ id=" + id + " ]";
    }
    
}
