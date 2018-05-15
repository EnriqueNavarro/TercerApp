/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.service;

import java.util.List;
import sistema.tercerapp.model.Graficas;

/**
 *
 * @author Francisco
 */
public interface GraficasService {
    
    Graficas findById(int id);

    void saveGraficas(Graficas fm);

    void updateGraficas(Graficas fm);

    void deleteGraficas(int id);

    List<Graficas> findAllGraficas();
    
}
