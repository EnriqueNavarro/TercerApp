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
@Table(name = "formulariomovilidad")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Formulariomovilidad.findAll", query = "SELECT f FROM Formulariomovilidad f")
    , @NamedQuery(name = "Formulariomovilidad.findById", query = "SELECT f FROM Formulariomovilidad f WHERE f.id = :id")
    , @NamedQuery(name = "Formulariomovilidad.findByCreacion", query = "SELECT f FROM Formulariomovilidad f WHERE f.creacion = :creacion")
    , @NamedQuery(name = "Formulariomovilidad.findByLastUpdated", query = "SELECT f FROM Formulariomovilidad f WHERE f.lastUpdated = :lastUpdated")
    , @NamedQuery(name = "Formulariomovilidad.findByNombre", query = "SELECT f FROM Formulariomovilidad f WHERE f.nombre = :nombre")
    , @NamedQuery(name = "Formulariomovilidad.findByEdad", query = "SELECT f FROM Formulariomovilidad f WHERE f.edad = :edad")
    , @NamedQuery(name = "Formulariomovilidad.findByFecha", query = "SELECT f FROM Formulariomovilidad f WHERE f.fecha = :fecha")
    , @NamedQuery(name = "Formulariomovilidad.findByPacienteId", query = "SELECT f FROM Formulariomovilidad f WHERE f.pacienteId = :pacienteId")})
public class Formulariomovilidad implements Serializable {

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
    @Column(name = "fecha")
    @Temporal(TemporalType.DATE)
    private Date fecha;
    @Basic(optional = false)
    @NotNull
    @Column(name = "paciente_id")
    private int pacienteId;
    @OneToMany(mappedBy = "idformularioMovilidad")
    private Collection<Pacientes> pacientesCollection;

    public Formulariomovilidad() {
    }

    public Formulariomovilidad(Integer id) {
        this.id = id;
    }

    public Formulariomovilidad(Integer id, Date creacion, String nombre, int edad, Date fecha, int pacienteId) {
        this.id = id;
        this.creacion = creacion;
        this.nombre = nombre;
        this.edad = edad;
        this.fecha = fecha;
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

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
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
        if (!(object instanceof Formulariomovilidad)) {
            return false;
        }
        Formulariomovilidad other = (Formulariomovilidad) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "sistema.tercerapp.model.Formulariomovilidad[ id=" + id + " ]";
    }
    
}
