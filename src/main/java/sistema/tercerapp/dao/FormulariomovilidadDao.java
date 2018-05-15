/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.dao;

import java.util.List;
import sistema.tercerapp.model.Formulariomovilidad;

/**
 *
 * @author Francisco
 */
public interface FormulariomovilidadDao {
    
    Formulariomovilidad findById(int id);

    void save(Formulariomovilidad fm);

    void delete(int id);

    List<Formulariomovilidad> findAll();
}
