/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.service;

import java.util.List;
import sistema.tercerapp.model.Pacientes;

/**
 *
 * @author Francisco
 */
public interface PacientesService {
    
    Pacientes findById(int id);

    void savePacientes(Pacientes pa);

    void updatePacientes(Pacientes pa);

    void deletePacientes(int id);

    List<Pacientes> findAllPacientes();
    
}
