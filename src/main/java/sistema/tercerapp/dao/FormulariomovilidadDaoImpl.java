/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.dao;

import java.util.List;
import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;
import sistema.tercerapp.model.Formulariomovilidad;

/**
 *
 * @author Francisco
 */
@Repository("formulariomovilidadDao")
public class FormulariomovilidadDaoImpl extends AbstractDao<Integer, Formulariomovilidad> implements FormulariomovilidadDao{

    @Override
    public Formulariomovilidad findById(int id) {
        return getByKey(id);
    }

    @Override
    public void save(Formulariomovilidad fm) {
        persist(fm);
    }

    @Override
    public void delete(int id) {
        Formulariomovilidad fm = findById(id);
        delete(fm);       
    }

    @Override
    public List<Formulariomovilidad> findAll() {
        Criteria criteria = createEntityCriteria();
        return (List<Formulariomovilidad>) criteria.list();       
    }
    
}
