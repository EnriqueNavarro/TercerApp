/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.dao;

import java.util.List;
import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;
import sistema.tercerapp.model.Formularionutricion;

/**
 *
 * @author Francisco
 */
@Repository("formularionutricionDao")
public class FormularionutricionDaoImpl extends AbstractDao<Integer, Formularionutricion> implements FormularionutricionDao{

    @Override
    public Formularionutricion findById(int id) {
        return getByKey(id);
    }

    @Override
    public void save(Formularionutricion fm) {
        persist(fm);
    }

    @Override
    public void delete(int id) {
        Formularionutricion fm = findById(id);
        delete(fm);        
    
    }

    @Override
    public List<Formularionutricion> findAll() {
        Criteria criteria = createEntityCriteria();
        return (List<Formularionutricion>) criteria.list();     
    }
   
}
