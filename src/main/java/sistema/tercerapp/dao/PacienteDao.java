/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.dao;

import java.util.List;
import sistema.tercerapp.model.Formulariogeneral;
import sistema.tercerapp.model.Formulariomovilidad;
import sistema.tercerapp.model.Formularionutricion;
import sistema.tercerapp.model.Formularioss;
import sistema.tercerapp.model.Graficas;
import sistema.tercerapp.model.Pacientes;

/**
 *
 * @author Francisco
 */
public interface PacienteDao {
    
    Pacientes findById(int id);

    void save(Pacientes paciente);

    void delete(int id);

    List<Pacientes> findAll();
    
    Formulariogeneral getFormularioGeneralById(int id);
    
    Formularionutricion getFormularioNutricionById(int id);
    
    Formulariomovilidad getFormularioMovilidadById(int id);
    
    Formularioss getFormularioSSById(int id);
    
    Graficas getGraficaById(int id);

}
