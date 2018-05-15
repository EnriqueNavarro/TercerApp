/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.service;

import java.util.List;
import sistema.tercerapp.model.Formulariogeneral;

/**
 *
 * @author Francisco
 */
public interface FormulariogeneralService {
    
    Formulariogeneral findById(int id);

    void saveFormularioGeneral(Formulariogeneral fm);

    void updateFormularioGeneral(Formulariogeneral fm);

    void deleteFormularioGeneral(int id);

    List<Formulariogeneral> findAllFormularioGeneral();
    
}
