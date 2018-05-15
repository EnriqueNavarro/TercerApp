/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.dao;

import java.util.List;
import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;
import sistema.tercerapp.model.Graficas;

/**
 *
 * @author Francisco
 */
@Repository("graficasDao")
public class GraficasDaoImpl extends AbstractDao<Integer, Graficas> implements GraficasDao{

    @Override
    public Graficas findById(int id) {
        return getByKey(id);
    }

    @Override
    public void save(Graficas gr) {
        persist(gr);
    }

    @Override
    public void delete(int id) {
        Graficas fm = findById(id);
        delete(fm);          }

    @Override
    public List<Graficas> findAll() {
        Criteria criteria = createEntityCriteria();
        return (List<Graficas>) criteria.list();         
    }
    
}
