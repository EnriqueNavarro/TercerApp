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
import sistema.tercerapp.dao.FormulariogeneralDao;
import sistema.tercerapp.model.Formulariogeneral;
 
/**
 *
 * @author Francisco
 */
@Service("formulariogeneralService")
@Transactional
public class FormulariogeneralServiceImpl implements FormulariogeneralService{
    
        @Autowired
    private FormulariogeneralDao dao;
    

    @Override
    public Formulariogeneral findById(int id) {
        return dao.findById(id);
    }

    @Override
    public void saveFormularioGeneral(Formulariogeneral fm) {
         dao.save(fm);
    }

    @Override
    public void updateFormularioGeneral(Formulariogeneral fm) {
    Formulariogeneral entity = dao.findById(fm.getId());
        if(entity!=null){
            //actualizar formulario

        }        
    }

    @Override
    public void deleteFormularioGeneral(int id) {
        dao.delete(id);
    }

    @Override
    public List<Formulariogeneral> findAllFormularioGeneral() {
        return dao.findAll();
    }
    
}
