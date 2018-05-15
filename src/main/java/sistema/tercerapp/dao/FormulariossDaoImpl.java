/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.dao;

import java.util.List;
import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;
import sistema.tercerapp.model.Formularioss;

/**
 *
 * @author Francisco
 */
@Repository("formulariossDao")
public class FormulariossDaoImpl extends AbstractDao<Integer, Formularioss> implements FormulariossDao{

    @Override
    public Formularioss findById(int id) {
        return getByKey(id);
    }

    @Override
    public void save(Formularioss fm) {
        persist(fm);
    }

    @Override
    public void delete(int id) {
        Formularioss fm = findById(id);
        delete(fm);       
    }

    @Override
    public List<Formularioss> findAll() {
        Criteria criteria = createEntityCriteria();
        return (List<Formularioss>) criteria.list();         
    }
    
}
