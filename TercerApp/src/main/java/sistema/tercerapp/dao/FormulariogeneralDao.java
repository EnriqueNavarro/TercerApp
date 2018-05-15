/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.dao;

import java.util.List;
import sistema.tercerapp.model.Formulariogeneral;

/**
 *
 * @author Francisco
 */
public interface FormulariogeneralDao {
    
    Formulariogeneral findById(int id);

    void save(Formulariogeneral fm);

    void delete(int id);

    List<Formulariogeneral> findAll();
}
