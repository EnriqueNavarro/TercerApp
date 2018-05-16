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
@Table(name = "formulariogeneral")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Formulariogeneral.findAll", query = "SELECT f FROM Formulariogeneral f")
    , @NamedQuery(name = "Formulariogeneral.findById", query = "SELECT f FROM Formulariogeneral f WHERE f.id = :id")
    , @NamedQuery(name = "Formulariogeneral.findByCreacion", query = "SELECT f FROM Formulariogeneral f WHERE f.creacion = :creacion")
    , @NamedQuery(name = "Formulariogeneral.findByLastUpdated", query = "SELECT f FROM Formulariogeneral f WHERE f.lastUpdated = :lastUpdated")
    , @NamedQuery(name = "Formulariogeneral.findByKartz", query = "SELECT f FROM Formulariogeneral f WHERE f.kartz = :kartz")
    , @NamedQuery(name = "Formulariogeneral.findByMental", query = "SELECT f FROM Formulariogeneral f WHERE f.mental = :mental")
    , @NamedQuery(name = "Formulariogeneral.findByBarthel", query = "SELECT f FROM Formulariogeneral f WHERE f.barthel = :barthel")
    , @NamedQuery(name = "Formulariogeneral.findByLawtonBrody", query = "SELECT f FROM Formulariogeneral f WHERE f.lawtonBrody = :lawtonBrody")
    , @NamedQuery(name = "Formulariogeneral.findByEscalaDepresion", query = "SELECT f FROM Formulariogeneral f WHERE f.escalaDepresion = :escalaDepresion")
    , @NamedQuery(name = "Formulariogeneral.findByNutricional", query = "SELECT f FROM Formulariogeneral f WHERE f.nutricional = :nutricional")
    , @NamedQuery(name = "Formulariogeneral.findByPerdidaPeso", query = "SELECT f FROM Formulariogeneral f WHERE f.perdidaPeso = :perdidaPeso")
    , @NamedQuery(name = "Formulariogeneral.findByResistencia", query = "SELECT f FROM Formulariogeneral f WHERE f.resistencia = :resistencia")
    , @NamedQuery(name = "Formulariogeneral.findByVelocidad", query = "SELECT f FROM Formulariogeneral f WHERE f.velocidad = :velocidad")
    , @NamedQuery(name = "Formulariogeneral.findByDebilitamiento", query = "SELECT f FROM Formulariogeneral f WHERE f.debilitamiento = :debilitamiento")
    , @NamedQuery(name = "Formulariogeneral.findByActividad", query = "SELECT f FROM Formulariogeneral f WHERE f.actividad = :actividad")
    , @NamedQuery(name = "Formulariogeneral.findByDiagnostico", query = "SELECT f FROM Formulariogeneral f WHERE f.diagnostico = :diagnostico")
    , @NamedQuery(name = "Formulariogeneral.findByPacienteId", query = "SELECT f FROM Formulariogeneral f WHERE f.pacienteId = :pacienteId")})
public class Formulariogeneral implements Serializable {

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
    @Size(max = 50)
    @Column(name = "kartz")
    private String kartz;
    @Size(max = 50)
    @Column(name = "mental")
    private String mental;
    @Size(max = 50)
    @Column(name = "barthel")
    private String barthel;
    @Size(max = 50)
    @Column(name = "lawtonBrody")
    private String lawtonBrody;
    @Size(max = 50)
    @Column(name = "escalaDepresion")
    private String escalaDepresion;
    @Size(max = 50)
    @Column(name = "nutricional")
    private String nutricional;
    @Size(max = 50)
    @Column(name = "perdidaPeso")
    private String perdidaPeso;
    @Size(max = 50)
    @Column(name = "resistencia")
    private String resistencia;
    @Size(max = 50)
    @Column(name = "velocidad")
    private String velocidad;
    @Size(max = 50)
    @Column(name = "debilitamiento")
    private String debilitamiento;
    @Size(max = 50)
    @Column(name = "actividad")
    private String actividad;
    @Size(max = 50)
    @Column(name = "diagnostico")
    private String diagnostico;
    @Basic(optional = false)
    @NotNull
    @Column(name = "paciente_id")
    private int pacienteId;

    public Formulariogeneral() {
    }

    public Formulariogeneral(Integer id) {
        this.id = id;
    }

    public Formulariogeneral(Integer id, Date creacion, int pacienteId) {
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

    public String getKartz() {
        return kartz;
    }

    public void setKartz(String kartz) {
        this.kartz = kartz;
    }

    public String getMental() {
        return mental;
    }

    public void setMental(String mental) {
        this.mental = mental;
    }

    public String getBarthel() {
        return barthel;
    }

    public void setBarthel(String barthel) {
        this.barthel = barthel;
    }

    public String getLawtonBrody() {
        return lawtonBrody;
    }

    public void setLawtonBrody(String lawtonBrody) {
        this.lawtonBrody = lawtonBrody;
    }

    public String getEscalaDepresion() {
        return escalaDepresion;
    }

    public void setEscalaDepresion(String escalaDepresion) {
        this.escalaDepresion = escalaDepresion;
    }

    public String getNutricional() {
        return nutricional;
    }

    public void setNutricional(String nutricional) {
        this.nutricional = nutricional;
    }

    public String getPerdidaPeso() {
        return perdidaPeso;
    }

    public void setPerdidaPeso(String perdidaPeso) {
        this.perdidaPeso = perdidaPeso;
    }

    public String getResistencia() {
        return resistencia;
    }

    public void setResistencia(String resistencia) {
        this.resistencia = resistencia;
    }

    public String getVelocidad() {
        return velocidad;
    }

    public void setVelocidad(String velocidad) {
        this.velocidad = velocidad;
    }

    public String getDebilitamiento() {
        return debilitamiento;
    }

    public void setDebilitamiento(String debilitamiento) {
        this.debilitamiento = debilitamiento;
    }

    public String getActividad() {
        return actividad;
    }

    public void setActividad(String actividad) {
        this.actividad = actividad;
    }

    public String getDiagnostico() {
        return diagnostico;
    }

    public void setDiagnostico(String diagnostico) {
        this.diagnostico = diagnostico;
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
        if (!(object instanceof Formulariogeneral)) {
            return false;
        }
        Formulariogeneral other = (Formulariogeneral) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "sistema.tercerapp.model.Formulariogeneral[ id=" + id + " ]";
    }
    
}
