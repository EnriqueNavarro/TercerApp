/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import sistema.tercerapp.dao.UsuariosDao;
import sistema.tercerapp.model.Usuarios;

/**
 *
 * @author Francisco
 */
@Service("usuariosService")
@Transactional
public class UsuariosServiceImpl implements UsuariosService{
    
  @Autowired
    private UsuariosDao dao;

    @Override
    public Usuarios findById(int id) {
        return dao.findById(id);
    }

    @Override
    public void saveUsuarios(Usuarios us) {
         dao.save(us);
    }

    @Override
    public void updateUsuarios(Usuarios us) {
    Usuarios entity = dao.findById(us.getId());
        if(entity!=null){
           entity.setNombre(us.getNombre());
           entity.setApellidoPaterno(us.getApellidoPaterno());
           entity.setApellidoMaterno(us.getApellidoMaterno());
           entity.setPass(us.getPass());
           entity.setEmail(us.getEmail());
           entity.setDomicilio(us.getDomicilio());
           entity.setEdad(us.getEdad());
           entity.setTelefono(us.getTelefono());
           entity.setActivo(us.getActivo());
           entity.setTipo(us.getTipo());
           entity.setLastUpdated(us.getLastUpdated());
        }   
    }

    @Override
    public void deleteUsuarios(int id) {
        dao.delete(id);
    }

    @Override
    public List<Usuarios> findAllUsuarios() {
        return dao.findAll();
    }
    
     @Override
    public Usuarios findByMail(List<Usuarios> u, String mail) {
        for(int i = 0; i<u.size();i++){
        if(u.get(i) != null && u.get(i).getEmail()!= null)
                if(u.get(i).getEmail().equals(mail)){
                    return u.get(i);

                }

    }   
    
  return null;
    }
    
    
}
