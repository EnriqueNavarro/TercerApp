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
import sistema.tercerapp.dao.FormularionutricionDao;
import sistema.tercerapp.model.Formularionutricion;

/**
 *
 * @author Francisco
 */
@Service("formularionutricionService")
@Transactional
public class FormularionutricionServiceImpl implements FormularionutricionService{

    @Autowired
    private FormularionutricionDao dao;
    
    @Override
    public Formularionutricion findById(int id) {
        return dao.findById(id);
    }

    @Override
    public void saveFormularionutricion(Formularionutricion fm) {
         dao.save(fm);
    }

    @Override
    public void updateFormularionutricion(Formularionutricion fm) {
    Formularionutricion entity = dao.findById(fm.getId());
        if(entity!=null){
        }          
    }

    @Override
    public void deleteFormularionutricion(int id) {
        dao.delete(id);
    }

    @Override
    public List<Formularionutricion> findAllFormularionutricion() {
        return dao.findAll();
    }
    
}
