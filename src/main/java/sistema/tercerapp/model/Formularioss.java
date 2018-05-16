/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Kenyiro
 */
@Entity
@Table(name = "formularioss")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Formularioss.findAll", query = "SELECT f FROM Formularioss f")
    , @NamedQuery(name = "Formularioss.findById", query = "SELECT f FROM Formularioss f WHERE f.id = :id")
    , @NamedQuery(name = "Formularioss.findByCreacion", query = "SELECT f FROM Formularioss f WHERE f.creacion = :creacion")
    , @NamedQuery(name = "Formularioss.findByLastUpdated", query = "SELECT f FROM Formularioss f WHERE f.lastUpdated = :lastUpdated")
    , @NamedQuery(name = "Formularioss.findByDispositivos", query = "SELECT f FROM Formularioss f WHERE f.dispositivos = :dispositivos")
    , @NamedQuery(name = "Formularioss.findByDispMayorUso", query = "SELECT f FROM Formularioss f WHERE f.dispMayorUso = :dispMayorUso")
    , @NamedQuery(name = "Formularioss.findByFrecuencia", query = "SELECT f FROM Formularioss f WHERE f.frecuencia = :frecuencia")
    , @NamedQuery(name = "Formularioss.findByActividadesUso", query = "SELECT f FROM Formularioss f WHERE f.actividadesUso = :actividadesUso")
    , @NamedQuery(name = "Formularioss.findByUsosFavorecer", query = "SELECT f FROM Formularioss f WHERE f.usosFavorecer = :usosFavorecer")
    , @NamedQuery(name = "Formularioss.findByApoyoSocial", query = "SELECT f FROM Formularioss f WHERE f.apoyoSocial = :apoyoSocial")
    , @NamedQuery(name = "Formularioss.findByActividadesComunitarias", query = "SELECT f FROM Formularioss f WHERE f.actividadesComunitarias = :actividadesComunitarias")
    , @NamedQuery(name = "Formularioss.findByPacienteId", query = "SELECT f FROM Formularioss f WHERE f.pacienteId = :pacienteId")})
public class Formularioss implements Serializable {

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
    @Size(max = 250)
    @Column(name = "dispositivos")
    private String dispositivos;
    @Size(max = 250)
    @Column(name = "dispMayorUso")
    private String dispMayorUso;
    @Size(max = 250)
    @Column(name = "frecuencia")
    private String frecuencia;
    @Size(max = 250)
    @Column(name = "actividadesUso")
    private String actividadesUso;
    @Size(max = 250)
    @Column(name = "usosFavorecer")
    private String usosFavorecer;
    @Size(max = 250)
    @Column(name = "apoyoSocial")
    private String apoyoSocial;
    @Size(max = 250)
    @Column(name = "actividadesComunitarias")
    private String actividadesComunitarias;
    @Basic(optional = false)
    @NotNull
    @Column(name = "paciente_id")
    private int pacienteId;

    public Formularioss() {
    }

    public Formularioss(Integer id) {
        this.id = id;
    }

    public Formularioss(Integer id, Date creacion, int pacienteId) {
        this.id = id;
        this.creacion = creacion;
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

    public String getDispositivos() {
        return dispositivos;
    }

    public void setDispositivos(String dispositivos) {
        this.dispositivos = dispositivos;
    }

    public String getDispMayorUso() {
        return dispMayorUso;
    }

    public void setDispMayorUso(String dispMayorUso) {
        this.dispMayorUso = dispMayorUso;
    }

    public String getFrecuencia() {
        return frecuencia;
    }

    public void setFrecuencia(String frecuencia) {
        this.frecuencia = frecuencia;
    }

    public String getActividadesUso() {
        return actividadesUso;
    }

    public void setActividadesUso(String actividadesUso) {
        this.actividadesUso = actividadesUso;
    }

    public String getUsosFavorecer() {
        return usosFavorecer;
    }

    public void setUsosFavorecer(String usosFavorecer) {
        this.usosFavorecer = usosFavorecer;
    }

    public String getApoyoSocial() {
        return apoyoSocial;
    }

    public void setApoyoSocial(String apoyoSocial) {
        this.apoyoSocial = apoyoSocial;
    }

    public String getActividadesComunitarias() {
        return actividadesComunitarias;
    }

    public void setActividadesComunitarias(String actividadesComunitarias) {
        this.actividadesComunitarias = actividadesComunitarias;
    }

    public int getPacienteId() {
        return pacienteId;
    }

    public void setPacienteId(int pacienteId) {
        this.pacienteId = pacienteId;
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
        if (!(object instanceof Formularioss)) {
            return false;
        }
        Formularioss other = (Formularioss) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "sistema.tercerapp.model.Formularioss[ id=" + id + " ]";
    }
    
}
