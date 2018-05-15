/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.dao;

import java.util.List;
import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;
import sistema.tercerapp.model.Usuarios;

/**
 *
 * @author Francisco
 */
@Repository("usuariosDao")
public class UsuariosDaoImpl extends AbstractDao<Integer, Usuarios> implements UsuariosDao{

    @Override
    public Usuarios findById(int id) {
        return getByKey(id);
    }

    @Override
    public void save(Usuarios us) {
        persist(us);
    }

    @Override
    public void delete(int id) {
        Usuarios fm = findById(id);
        delete(fm);        
    }

    @Override
    public List<Usuarios> findAll() {
        Criteria criteria = createEntityCriteria();
        return (List<Usuarios>) criteria.list();     }
    
}
