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
import sistema.tercerapp.dao.FormulariossDao;
import sistema.tercerapp.model.Formularioss;

/**
 *
 * @author Francisco
 */
@Service("formulariossService")
@Transactional
public class FormulariossServiceImpl implements FormulariossService{

        @Autowired
    private FormulariossDao dao;
        
    @Override
    public Formularioss findById(int id) {
        return dao.findById(id);
    }

    @Override
    public void saveFormularioss(Formularioss fm) {
         dao.save(fm);
    }

    @Override
    public void updateFormularioss(Formularioss fm) {
    Formularioss entity = dao.findById(fm.getId());
        if(entity!=null){
            entity.setNombre(fm.getNombre()); //actualizar formulario

        }      
    }

    @Override
    public void deleteFormularioss(int id) {
        dao.delete(id);
    }

    @Override
    public List<Formularioss> findAllFormularioss() {
        return dao.findAll();
    }
    
}
