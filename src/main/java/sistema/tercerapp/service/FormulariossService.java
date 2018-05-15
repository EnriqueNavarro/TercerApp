/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.service;

import java.util.List;
import sistema.tercerapp.model.Formularioss;

/**
 *
 * @author Francisco
 */
public interface FormulariossService {
    
    Formularioss findById(int id);

    void saveFormularioss(Formularioss fm);

    void updateFormularioss(Formularioss fm);

    void deleteFormularioss(int id);

    List<Formularioss> findAllFormularioss();
    
}
