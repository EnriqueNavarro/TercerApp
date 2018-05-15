/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.dao;

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import sistema.tercerapp.model.Formulariogeneral;
import sistema.tercerapp.model.Formulariomovilidad;
import sistema.tercerapp.model.Formularionutricion;
import sistema.tercerapp.model.Formularioss;
import sistema.tercerapp.model.Graficas;
import sistema.tercerapp.model.Pacientes;

/**
 *
 * @author Francisco
 */
@Repository("pacienteDao")
public class PacienteDaoImpl extends AbstractDao<Integer, Pacientes> implements PacienteDao {

    @Override
    public Pacientes findById(int id) {
        return getByKey(id);
    }

    @Override
    public void save(Pacientes paciente) {
        persist(paciente);
    }

    @Override
    public void delete(int id) {
        Pacientes paciente = findById(id);
        delete(paciente);
    }    

    @Override
    public List<Pacientes> findAll() {
        Criteria criteria = createEntityCriteria();
        return (List<Pacientes>) criteria.list();    
    }

    @Override
    public Formulariogeneral getFormularioGeneralById(int id) {
        Criteria criteria = getSession().createCriteria(Formulariogeneral.class);
        criteria.createAlias("id_formularioGeneral", "formularioGeneral", Criteria.INNER_JOIN);
        criteria.add(Restrictions.eq("formularioGeneral.id", id));
        List<Formulariogeneral> fm = criteria.list();

        if(fm.get(0) != null){
            return fm.get(0);
        }
        return fm.get(0);
    }

    @Override
    public Formularionutricion getFormularioNutricionById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Formulariomovilidad getFormularioMovilidadById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Formularioss getFormularioSSById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Graficas getGraficaById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
