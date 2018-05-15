/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.dao;

import java.util.List;
import sistema.tercerapp.model.Formularionutricion;

/**
 *
 * @author Francisco
 */
public interface FormularionutricionDao {
    
    Formularionutricion findById(int id);

    void save(Formularionutricion fm);

    void delete(int id);

    List<Formularionutricion> findAll();
}
