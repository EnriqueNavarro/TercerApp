/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import sistema.tercerapp.dao.GraficasDao;
import sistema.tercerapp.model.Graficas;

/**
 *
 * @author Francisco
 */
@Service("graficasService")
@Transactional
public class GraficasServiceImpl implements GraficasService{

            @Autowired
    private GraficasDao dao;
            
    @Override
    public Graficas findById(int id) {
        return dao.findById(id);
    }

    @Override
    public void saveGraficas(Graficas fm) {
         dao.save(fm);
    }

    @Override
    public void updateGraficas(Graficas fm) {
    Graficas entity = dao.findById(fm.getId());
        if(entity!=null){
            
             //actualizar formulario

        }         }

    @Override
    public void deleteGraficas(int id) {
        dao.delete(id);
    }

    @Override
    public List<Graficas> findAllGraficas() {
        return dao.findAll();
    }
    
}
