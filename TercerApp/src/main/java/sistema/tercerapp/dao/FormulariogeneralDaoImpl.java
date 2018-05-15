/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.dao;

import java.util.List;
import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;
import sistema.tercerapp.model.Formulariogeneral;
import sistema.tercerapp.model.Pacientes;

/**
 *
 * @author Francisco
 */
@Repository("formulariogeneralDao")
public class FormulariogeneralDaoImpl extends AbstractDao<Integer, Formulariogeneral> implements FormulariogeneralDao{

    @Override
    public Formulariogeneral findById(int id) {
        return getByKey(id);
    }

    @Override
    public void save(Formulariogeneral fm) {
        persist(fm);
    }

    @Override
    public void delete(int id) {
        Formulariogeneral fm = findById(id);
        delete(fm);    
    }

    @Override
    public List<Formulariogeneral> findAll() {
        Criteria criteria = createEntityCriteria();
        return (List<Formulariogeneral>) criteria.list();       
    }
    
}
