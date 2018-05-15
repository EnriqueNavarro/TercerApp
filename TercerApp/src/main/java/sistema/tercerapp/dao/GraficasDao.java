/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.dao;

import java.util.List;
import sistema.tercerapp.model.Graficas;

/**
 *
 * @author Francisco
 */
public interface GraficasDao {
        
    Graficas findById(int id);

    void save(Graficas gr);

    void delete(int id);

    List<Graficas> findAll();
    
}
