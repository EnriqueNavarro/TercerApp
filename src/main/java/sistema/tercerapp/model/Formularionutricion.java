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
    @NamedQuery(name = "Formularionutricion.findAll", query = "SELECT f FROM Formularionutricion f")
    , @NamedQuery(name = "Formularionutricion.findById", query = "SELECT f FROM Formularionutricion f WHERE f.id = :id")
    , @NamedQuery(name = "Formularionutricion.findByCreacion", query = "SELECT f FROM Formularionutricion f WHERE f.creacion = :creacion")
    , @NamedQuery(name = "Formularionutricion.findByLastUpdated", query = "SELECT f FROM Formularionutricion f WHERE f.lastUpdated = :lastUpdated")
    , @NamedQuery(name = "Formularionutricion.findByPeso", query = "SELECT f FROM Formularionutricion f WHERE f.peso = :peso")
    , @NamedQuery(name = "Formularionutricion.findByIntPeso", query = "SELECT f FROM Formularionutricion f WHERE f.intPeso = :intPeso")
    , @NamedQuery(name = "Formularionutricion.findByElectrolitos", query = "SELECT f FROM Formularionutricion f WHERE f.electrolitos = :electrolitos")
    , @NamedQuery(name = "Formularionutricion.findByIntElectrolitos", query = "SELECT f FROM Formularionutricion f WHERE f.intElectrolitos = :intElectrolitos")
    , @NamedQuery(name = "Formularionutricion.findByAlbumina", query = "SELECT f FROM Formularionutricion f WHERE f.albumina = :albumina")
    , @NamedQuery(name = "Formularionutricion.findByIntAlbumina", query = "SELECT f FROM Formularionutricion f WHERE f.intAlbumina = :intAlbumina")
    , @NamedQuery(name = "Formularionutricion.findByImc", query = "SELECT f FROM Formularionutricion f WHERE f.imc = :imc")
    , @NamedQuery(name = "Formularionutricion.findByIntIMC", query = "SELECT f FROM Formularionutricion f WHERE f.intIMC = :intIMC")
    , @NamedQuery(name = "Formularionutricion.findByDiametroBrazo", query = "SELECT f FROM Formularionutricion f WHERE f.diametroBrazo = :diametroBrazo")
    , @NamedQuery(name = "Formularionutricion.findByIntDiametroBrazo", query = "SELECT f FROM Formularionutricion f WHERE f.intDiametroBrazo = :intDiametroBrazo")
    , @NamedQuery(name = "Formularionutricion.findByDiametroPierna", query = "SELECT f FROM Formularionutricion f WHERE f.diametroPierna = :diametroPierna")
    , @NamedQuery(name = "Formularionutricion.findByIntDiametroPierna", query = "SELECT f FROM Formularionutricion f WHERE f.intDiametroPierna = :intDiametroPierna")
    , @NamedQuery(name = "Formularionutricion.findByDiametroAbdomen", query = "SELECT f FROM Formularionutricion f WHERE f.diametroAbdomen = :diametroAbdomen")
    , @NamedQuery(name = "Formularionutricion.findByIntDiametroAbdomen", query = "SELECT f FROM Formularionutricion f WHERE f.intDiametroAbdomen = :intDiametroAbdomen")
    , @NamedQuery(name = "Formularionutricion.findByPresion", query = "SELECT f FROM Formularionutricion f WHERE f.presion = :presion")
    , @NamedQuery(name = "Formularionutricion.findByIntPresion", query = "SELECT f FROM Formularionutricion f WHERE f.intPresion = :intPresion")
    , @NamedQuery(name = "Formularionutricion.findByBh", query = "SELECT f FROM Formularionutricion f WHERE f.bh = :bh")
    , @NamedQuery(name = "Formularionutricion.findByIntBH", query = "SELECT f FROM Formularionutricion f WHERE f.intBH = :intBH")
    , @NamedQuery(name = "Formularionutricion.findByGlucosa", query = "SELECT f FROM Formularionutricion f WHERE f.glucosa = :glucosa")
    , @NamedQuery(name = "Formularionutricion.findByIntGlucosa", query = "SELECT f FROM Formularionutricion f WHERE f.intGlucosa = :intGlucosa")
    , @NamedQuery(name = "Formularionutricion.findByLipidos", query = "SELECT f FROM Formularionutricion f WHERE f.lipidos = :lipidos")
    , @NamedQuery(name = "Formularionutricion.findByIntLipidos", query = "SELECT f FROM Formularionutricion f WHERE f.intLipidos = :intLipidos")
    , @NamedQuery(name = "Formularionutricion.findByPacienteId", query = "SELECT f FROM Formularionutricion f WHERE f.pacienteId = :pacienteId")})
public class Formularionutricion implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "creacion")
    @Temporal(TemporalType.DATE)
    private Date creacion;
    @Column(name = "lastUpdated")
    @Temporal(TemporalType.DATE)
    private Date lastUpdated;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "peso")
    private Double peso;
    @Size(max = 50)
    @Column(name = "intPeso")
    private String intPeso;
    @Column(name = "electrolitos")
    private Double electrolitos;
    @Size(max = 50)
    @Column(name = "intElectrolitos")
    private String intElectrolitos;
    @Column(name = "albumina")
    private Double albumina;
    @Size(max = 50)
    @Column(name = "intAlbumina")
    private String intAlbumina;
    @Column(name = "IMC")
    private Double imc;
    @Size(max = 50)
    @Column(name = "intIMC")
    private String intIMC;
    @Column(name = "diametroBrazo")
    private Double diametroBrazo;
    @Size(max = 50)
    @Column(name = "intDiametroBrazo")
    private String intDiametroBrazo;
    @Column(name = "diametroPierna")
    private Double diametroPierna;
    @Size(max = 50)
    @Column(name = "intDiametroPierna")
    private String intDiametroPierna;
    @Column(name = "diametroAbdomen")
    private Double diametroAbdomen;
    @Size(max = 50)
    @Column(name = "intDiametroAbdomen")
    private String intDiametroAbdomen;
    @Column(name = "presion")
    private Double presion;
    @Size(max = 50)
    @Column(name = "intPresion")
    private String intPresion;
    @Column(name = "BH")
    private Double bh;
    @Size(max = 50)
    @Column(name = "intBH")
    private String intBH;
    @Column(name = "glucosa")
    private Double glucosa;
    @Size(max = 50)
    @Column(name = "intGlucosa")
    private String intGlucosa;
    @Column(name = "lipidos")
    private Double lipidos;
    @Size(max = 50)
    @Column(name = "intLipidos")
    private String intLipidos;
    @Basic(optional = false)
    @NotNull
    @Column(name = "paciente_id")
    private int pacienteId;
    @OneToMany(mappedBy = "idformularioNutricion")
    private Collection<Pacientes> pacientesCollection;

    public Formularionutricion() {
    }

    public Formularionutricion(Integer id) {
        this.id = id;
    }

    public Formularionutricion(Integer id, int pacienteId) {
        this.id = id;
        this.pacienteId = pacienteId;
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

    public Double getPeso() {
        return peso;
    }

    public void setPeso(Double peso) {
        this.peso = peso;
    }

    public String getIntPeso() {
        return intPeso;
    }

    public void setIntPeso(String intPeso) {
        this.intPeso = intPeso;
    }

    public Double getElectrolitos() {
        return electrolitos;
    }

    public void setElectrolitos(Double electrolitos) {
        this.electrolitos = electrolitos;
    }

    public String getIntElectrolitos() {
        return intElectrolitos;
    }

    public void setIntElectrolitos(String intElectrolitos) {
        this.intElectrolitos = intElectrolitos;
    }

    public Double getAlbumina() {
        return albumina;
    }

    public void setAlbumina(Double albumina) {
        this.albumina = albumina;
    }

    public String getIntAlbumina() {
        return intAlbumina;
    }

    public void setIntAlbumina(String intAlbumina) {
        this.intAlbumina = intAlbumina;
    }

    public Double getImc() {
        return imc;
    }

    public void setImc(Double imc) {
        this.imc = imc;
    }

    public String getIntIMC() {
        return intIMC;
    }

    public void setIntIMC(String intIMC) {
        this.intIMC = intIMC;
    }

    public Double getDiametroBrazo() {
        return diametroBrazo;
    }

    public void setDiametroBrazo(Double diametroBrazo) {
        this.diametroBrazo = diametroBrazo;
    }

    public String getIntDiametroBrazo() {
        return intDiametroBrazo;
    }

    public void setIntDiametroBrazo(String intDiametroBrazo) {
        this.intDiametroBrazo = intDiametroBrazo;
    }

    public Double getDiametroPierna() {
        return diametroPierna;
    }

    public void setDiametroPierna(Double diametroPierna) {
        this.diametroPierna = diametroPierna;
    }

    public String getIntDiametroPierna() {
        return intDiametroPierna;
    }

    public void setIntDiametroPierna(String intDiametroPierna) {
        this.intDiametroPierna = intDiametroPierna;
    }

    public Double getDiametroAbdomen() {
        return diametroAbdomen;
    }

    public void setDiametroAbdomen(Double diametroAbdomen) {
        this.diametroAbdomen = diametroAbdomen;
    }

    public String getIntDiametroAbdomen() {
        return intDiametroAbdomen;
    }

    public void setIntDiametroAbdomen(String intDiametroAbdomen) {
        this.intDiametroAbdomen = intDiametroAbdomen;
    }

    public Double getPresion() {
        return presion;
    }

    public void setPresion(Double presion) {
        this.presion = presion;
    }

    public String getIntPresion() {
        return intPresion;
    }

    public void setIntPresion(String intPresion) {
        this.intPresion = intPresion;
    }

    public Double getBh() {
        return bh;
    }

    public void setBh(Double bh) {
        this.bh = bh;
    }

    public String getIntBH() {
        return intBH;
    }

    public void setIntBH(String intBH) {
        this.intBH = intBH;
    }

    public Double getGlucosa() {
        return glucosa;
    }

    public void setGlucosa(Double glucosa) {
        this.glucosa = glucosa;
    }

    public String getIntGlucosa() {
        return intGlucosa;
    }

    public void setIntGlucosa(String intGlucosa) {
        this.intGlucosa = intGlucosa;
    }

    public Double getLipidos() {
        return lipidos;
    }

    public void setLipidos(Double lipidos) {
        this.lipidos = lipidos;
    }

    public String getIntLipidos() {
        return intLipidos;
    }

    public void setIntLipidos(String intLipidos) {
        this.intLipidos = intLipidos;
    }

    public int getPacienteId() {
        return pacienteId;
    }

    public void setPacienteId(int pacienteId) {
        this.pacienteId = pacienteId;
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
