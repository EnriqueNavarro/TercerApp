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
import sistema.tercerapp.dao.FormulariomovilidadDao;
import sistema.tercerapp.model.Formulariomovilidad;

/**
 *
 * @author Francisco
 */
@Service("formulariomovilidadService")
@Transactional
public class FormulariomovilidadServiceImpl implements FormulariomovilidadService {

    @Autowired
    private FormulariomovilidadDao dao;
    
    
    @Override
    public Formulariomovilidad findById(int id) {
        return dao.findById(id);
    }

    @Override
    public void saveFormulariomovilidad(Formulariomovilidad fm) {
         dao.save(fm);
    }

    @Override
    public void updateFormulariomovilidad(Formulariomovilidad fm) {
    Formulariomovilidad entity = dao.findById(fm.getId());
        if(entity!=null){
            entity.setNombre(fm.getNombre()); //actualizar formulario

        }        
    }

    @Override
    public void deleteFormulariomovilidad(int id) {
        dao.delete(id);
    }

    @Override
    public List<Formulariomovilidad> findAllFormulariomovilidad() {
        return dao.findAll();
    }
    
}
