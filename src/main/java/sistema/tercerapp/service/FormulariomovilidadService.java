/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.service;

import java.util.List;
import sistema.tercerapp.model.Formulariomovilidad;

/**
 *
 * @author Francisco
 */
public interface FormulariomovilidadService {
    
     Formulariomovilidad findById(int id);

    void saveFormulariomovilidad(Formulariomovilidad fm);

    void updateFormulariomovilidad(Formulariomovilidad fm);

    void deleteFormulariomovilidad(int id);

    List<Formulariomovilidad> findAllFormulariomovilidad();
    
}
