/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import sistema.tercerapp.dao.PacienteDao;
import sistema.tercerapp.model.Formulariogeneral;
import sistema.tercerapp.model.Pacientes;

/**
 *
 * @author Francisco
 */
@Service("pacientesService")
@Transactional
public class PacientesServiceImpl implements PacientesService{

   @Autowired
    private PacienteDao dao;
   
   @Autowired
   FormulariogeneralService fgService;

    @Override
    public Pacientes findById(int id) {
        return dao.findById(id);
    }

    @Override
    public void savePacientes(Pacientes pa) {
         dao.save(pa);
    }

    @Override
    public void updatePacientes(Pacientes pa) {
        Pacientes entity = dao.findById(pa.getId());
        if(entity!=null){
           entity.setNombre(pa.getNombre());
           entity.setApellidoPaterno(pa.getApellidoPaterno());
           entity.setApellidoMaterno(pa.getApellidoMaterno());
           entity.setEdad(pa.getEdad());
           entity.setDireccion(pa.getDireccion());
           entity.setEstadoCivil(pa.getEstadoCivil());
           entity.setAfiliacion(pa.getAfiliacion());
           entity.setAutopadecimiento(pa.getAutopadecimiento());
           entity.setEscalaAMAI(pa.getEscalaAMAI());
            entity.setActivo(pa.getActivo());
           entity.setEmail(pa.getEmail());
           entity.setEscolaridad(pa.getEscolaridad());
           entity.setCohabitacion(pa.getCohabitacion());
           entity.setTelefono(pa.getTelefono());
           entity.setLastUpdated(pa.getLastUpdated());
           entity.setIdFormulariosGenerales(pa.getIdFormulariosGenerales());
           entity.setIdFormulariosSS(pa.getIdFormulariosSS());
           entity.setIdFormulariosNutricionales(pa.getIdFormulariosNutricionales());

        }            
    }

    @Override
    public void deletePacientes(int id) {
        dao.delete(id);
    }

    @Override
    public List<Pacientes> findAllPacientes() {
        return dao.findAll();
    }

    @Override
    public List<Formulariogeneral> findFGbyPacienteId(int id) {
       Pacientes entity= dao.findById(id);
       if(entity != null){
        String[] fg = entity.getIdFormulariosGenerales().split("-");
        List<Formulariogeneral> fgList = new ArrayList<Formulariogeneral>();
        for(int i = 0; i<fg.length; i++){
        fgList.add(fgService.findById(Integer.parseInt(fg[i])));
        }
                return fgList;
       }
                return null;

    }
    

    
}
