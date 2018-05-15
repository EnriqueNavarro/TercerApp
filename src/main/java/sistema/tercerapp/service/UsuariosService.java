/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.service;

import java.util.List;
import sistema.tercerapp.model.Usuarios;

/**
 *
 * @author Francisco
 */
public interface UsuariosService {
    
    Usuarios findById(int id);

    void saveUsuarios(Usuarios us);

    void updateUsuarios(Usuarios us);

    void deleteUsuarios(int id);

    List<Usuarios> findAllUsuarios();
    
    Usuarios findByMail(List<Usuarios> u, String mail);

}
