/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.service;

import java.util.List;
import sistema.tercerapp.model.Formularionutricion;

/**
 *
 * @author Francisco
 */
public interface FormularionutricionService {
    
    Formularionutricion findById(int id);

    void saveFormularionutricion(Formularionutricion fm);

    void updateFormularionutricion(Formularionutricion fm);

    void deleteFormularionutricion(int id);

    List<Formularionutricion> findAllFormularionutricion();
    
}
