/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.dao;

import java.util.List;
import sistema.tercerapp.model.Usuarios;

/**
 *
 * @author Francisco
 */
public interface UsuariosDao {
    
    Usuarios findById(int id);

    void save(Usuarios us);

    void delete(int id);

    List<Usuarios> findAll();
}
