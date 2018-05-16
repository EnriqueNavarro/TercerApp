/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.tercerapp.controller;

import java.util.ArrayList;
import java.util.List;
import org.joda.time.LocalDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import sistema.tercerapp.model.Usuarios;
import sistema.tercerapp.model.Pacientes;
import sistema.tercerapp.model.Formulariogeneral;
import sistema.tercerapp.model.Formularionutricion;
import sistema.tercerapp.model.Formularioss;
import sistema.tercerapp.model.Formularionutricion;
import sistema.tercerapp.service.UsuariosService;
import sistema.tercerapp.service.PacientesService;
import sistema.tercerapp.service.FormulariogeneralService;
import sistema.tercerapp.service.FormularionutricionService;
import sistema.tercerapp.service.FormulariossService;
import sistema.tercerapp.service.FormularionutricionService;


 
/**
 *
 * @author Francisco
 */
@Controller
@RequestMapping("/")
public class AppController {
    
        @Autowired
    UsuariosService usuarioService;
    
        @Autowired
    PacientesService pacienteService;
    
        @Autowired
    FormulariogeneralService fgService;
        
        @Autowired
    FormulariossService formulariosSSService;
        
                @Autowired
        FormularionutricionService NService;
            
    private boolean user= false;
        

    
    @RequestMapping(value = {"/"})
    public String showMainPage(ModelMap model) {
       user = false;
        return "LoginScreen";    
    }
    
    @RequestMapping(value = {"/login"})
    public String showLoginPage(ModelMap model) {
        return "LoginScreen";
    }
    
    @RequestMapping(value = {"/registrarUsuario"})
    public String showRegistrarPage(ModelMap model) {
        return "RegistrarUsuario";
    }
    
        @RequestMapping(value = {"/verGeriatrica"}, method = RequestMethod.GET)
    public String showGeriatricaP(@RequestParam(value = "idGeriatrica") int idGeriatrica,ModelMap model) {
        
        Formulariogeneral fg = fgService.findById(idGeriatrica);
        
        model.addAttribute("FG", fg);
        
        return "verGeriatrica";
    }
    
    @RequestMapping(value = {"/verPacientesC"},method = RequestMethod.GET)
	public String verPacientesC(Model model) {

                List<Formulariogeneral> fg = fgService.findAllFormularioGeneral();

		List<Pacientes> pacientes = pacienteService.findAllPacientes();
                List<String> pacientesLista = new ArrayList<String>();
                        
               /*int j = pacientes.size();

               for(int i = 0;i<pacientes.size();i++){
                    if(pacienteService.findFGbyPacienteId(pacientes.get(i).getId()) != null && pacienteService.findById(pacientes.get(i).getId()) != null){
                    model.addAttribute("Paciente"+pacientes.get(i).getId(), pacienteService.findFGbyPacienteId(pacientes.get(i).getId()));
                    }
                }*/
                
                model.addAttribute("Pacientes", pacientes);	
                return "verPacientesC";
	}
        
    @RequestMapping(value = {"/verGerontologicaC"}, method = RequestMethod.GET)
    public String showVerGerontologica(@RequestParam("idPaciente") int idPaciente, ModelMap model) {
        
        Pacientes p = pacienteService.findById(idPaciente);
        model.addAttribute("Paciente", p);
        
        return "ValoracionGerontologica";
    }
    
            
    @RequestMapping(value = {"/verHistorialGerontologicoC"}, method = RequestMethod.GET)
    public String showHistorialGerontologicoC(@RequestParam("idGerontologico") int idGerontologico, ModelMap model) {
        
        Formularioss fss = formulariosSSService.findById(idGerontologico);
        model.addAttribute("Formulario", fss);
        
        return "verValoracionGerontologica";
    }
    
        @RequestMapping(value = {"/verReporteNutricional"}, method = RequestMethod.GET)
    public String showReporteNutricional(@RequestParam("idNutricional") int idNutricional, ModelMap model) {
        
        Formularionutricion fn = NService.findById(idNutricional);
        model.addAttribute("Formulario", fn);
        
        return "verReporteNutricional";
    }
    
    	@RequestMapping(value = {"/modificarUsuarioC"},method = RequestMethod.GET)
	public String initForm(Model model) {
		Usuarios usuario= new Usuarios();
               	model.addAttribute("Usuario", usuario);
		List<Usuarios> usuarios = usuarioService.findAllUsuarios();
        
                List<String> usuariosLista = new ArrayList<String>();
        
                for(int i=0; i<usuarios.size();i++){
                    usuariosLista.add(Integer.toString(usuarios.get(i).getId())+"-"+usuarios.get(i).getNombre()+" "+usuarios.get(i).getApellidoPaterno()+" "+usuarios.get(i).getApellidoMaterno());
                }
        
                
                model.addAttribute("Usuarios", usuariosLista);		
                return "modificarUsuarioC";
	}
    
    @RequestMapping(value = {"/modificarUsuario"}, method = RequestMethod.POST)
    public String showModificarUsuarioPage(@RequestParam(value = "nombre", required = false) String pTexto,ModelMap model) {

        String[] resultados = pTexto.split("-");
        String idS = resultados[1];
        int id = Integer.parseInt(resultados[0]);
        
        Usuarios user = usuarioService.findById(id);
        
        model.addAttribute("usuario", user);
        
        return "ModificarUsuario";
    }
    
      @RequestMapping(value = {"/modificarUsuarioParam"}, method = RequestMethod.GET)
    public String showModificarUsuarioParameters(@RequestParam(value = "usuario", required = false) String pTexto,ModelMap model) {

        String[] resultados = pTexto.split("-");
        String idS = resultados[1];
        int id = Integer.parseInt(resultados[0]);
        
        Usuarios user = usuarioService.findById(id);
        
        model.addAttribute("usuario", user);
        return "ModificarUsuario";
    }
    
    @RequestMapping(value = "/evaluacionNutricionalSubmit", method = RequestMethod.POST)
    public String comepleteEvaluacionNutricionalSubmit(@RequestParam( value ="w", required = false) String peso, 
            @RequestParam( value ="iw", required = false) String intPeso,
    @RequestParam( value="e") String electrolitos,  @RequestParam("ie") String intElectrolitos, 
    @RequestParam("a") String albumina,  @RequestParam("ia") String intAlbumina, @RequestParam("imc") String imc,
    @RequestParam("iimc") String intImc,@RequestParam("db") String diamBrazo,@RequestParam("idb") String intDiamBrazo,
    @RequestParam("dp") String diamPierna, @RequestParam("idp") String intDiamPierna,@RequestParam("da") String diamAbdomen,
    @RequestParam("ida") String intDiamAbdomen,@RequestParam("p") String presion,@RequestParam("ip") String intPresion,
    @RequestParam("bh") String BH,@RequestParam("ibh") String intBH,@RequestParam("g") String glucosa,
    @RequestParam("ig") String intGlucosa,@RequestParam("l") String lipidos,@RequestParam("il") String intLipidos,
    @RequestParam("pacienteid") int idPaciente,
    ModelMap model) {
             
        Formularionutricion fss = new Formularionutricion();
        
        Pacientes p = pacienteService.findById(idPaciente);
        
        fss.setPacienteId(idPaciente);
        
        if(intLipidos != null){
            fss.setIntLipidos(intLipidos);
        }
        if(lipidos != null){
            fss.setLipidos(Double.parseDouble(lipidos));
        }
        if(intGlucosa != null){
            fss.setIntGlucosa(intGlucosa);
        }
        if(glucosa != null){
            fss.setGlucosa(Double.parseDouble(glucosa));
        }
        if(intBH != null){
            fss.setIntBH(intBH);
        }
        if(BH != null){
            fss.setBh(Double.parseDouble(BH));
        }
        if(intPresion != null){
            fss.setIntPresion(intPresion);
        }
        if(presion != null){
            fss.setPresion(Double.parseDouble(presion));
        }
        if(intDiamAbdomen != null){
            fss.setIntDiametroAbdomen(intDiamAbdomen);
        }
        if(diamAbdomen != null){
            fss.setDiametroAbdomen(Double.parseDouble(diamAbdomen));
        }
        if(intDiamPierna != null){
            fss.setIntDiametroPierna(intDiamPierna);
        }
        if(diamPierna != null){
            fss.setDiametroPierna(Double.parseDouble(diamPierna));
        }
        if(intDiamBrazo != null){
            fss.setIntDiametroBrazo(intDiamBrazo);
        }
        if(diamBrazo != null){
            fss.setDiametroBrazo(Double.parseDouble(diamBrazo));
        }
        if(intImc != null){
            fss.setIntIMC(intImc);
        }
        if(imc != null){
            fss.setImc(Double.parseDouble(imc));
        }
        if(intAlbumina != null){
            fss.setIntAlbumina(intAlbumina);
        }
        if(albumina != null){
            fss.setAlbumina(Double.parseDouble(albumina));
        }
        if(intElectrolitos != null){
            fss.setIntElectrolitos(intElectrolitos);
        }
        if(electrolitos != null){
            fss.setElectrolitos(Double.parseDouble(electrolitos));
        }
        if(intPeso != null){
            fss.setIntPeso(intPeso);
        }
        if(peso != null){
            fss.setPeso(Double.parseDouble(peso));
        }
        
        //terminar de llenar todos los campos
        
        fss.setLastUpdated(new LocalDate().toDateTimeAtStartOfDay().toDate());
        fss.setCreacion(new LocalDate().toDateTimeAtStartOfDay().toDate());

        NService.saveFormularionutricion(fss);
        
        if(p.getIdFormulariosNutricionales()!= null){
        StringBuilder sb = new StringBuilder(p.getIdFormulariosGenerales());
        String idFg = String.valueOf(fss.getId());
        sb.append("-"+idFg); //0 no contara
        String idString = sb.toString();
   
        p.setIdFormulariosNutricionales(idString);
        pacienteService.updatePacientes(p);
        }else{
        StringBuilder sb = new StringBuilder();
        String idFg = String.valueOf(fss.getId());
        sb.append(idFg);
        String idString = sb.toString();
   
        p.setIdFormulariosNutricionales(idString);
        pacienteService.updatePacientes(p);
        }

        if(user){
                    return "usuarioDashboard";

        }else{
                    return "adminDashboard";

        }
    }
    
          @RequestMapping(value = {"/crearNutricional"}, method = RequestMethod.GET)
    public String showNutricionalC(@RequestParam(value = "idPaciente", required = false) int idPaciente,ModelMap model) {
        
        Pacientes p = pacienteService.findById(idPaciente);
        
        model.addAttribute("Paciente", p);
        return "EvaluacionNutricional";
    }
    
    @RequestMapping(value = {"/verPaciente"}, method = RequestMethod.GET)
    public String showVerPacientePage(@RequestParam("idPaciente") int idPaciente, ModelMap model) {
        
        Pacientes p = pacienteService.findById(idPaciente);
        model.addAttribute("Paciente", p);
        
        return "VerPaciente";
    }
    
    @RequestMapping(value = {"/ResultadosFitbit"})
    public String showResultadosFitbit(ModelMap model) {
        return "ResultadosFitbit";
    }
    @RequestMapping(value = {"/fitbit"})
    public String showFitbit(ModelMap model) {
        //model.addAttribute("UserId", userId);
        return "Fitbit";
    }
    
    @RequestMapping(value = {"/EvaluacionGeriatrica"}, method = RequestMethod.GET)
    public String showEvaluacionGeriatrica(@RequestParam("idPaciente") int idPaciente,ModelMap model) {
        
        Pacientes p = pacienteService.findById(idPaciente);
        model.addAttribute("Paciente", p);
        
        return "EvaluacionGeriatrica";
    }
    
        @RequestMapping(value = {"/verHistorialGeriatrica"}, method = RequestMethod.GET)
    public String showHistorialGeriatrico(@RequestParam("idPaciente") int idPaciente,ModelMap model) {
        
        Pacientes p = pacienteService.findById(idPaciente);
        
        List<Formulariogeneral> fg = fgService.findAllFormularioGeneral();
        
        String[] formularios = p.getIdFormulariosGenerales().split("-");
        
        List<Formulariogeneral> fgUsar = new ArrayList<Formulariogeneral>();
        
        for(int i = 0; i<formularios.length;i++){
            fgUsar.add(fgService.findById(Integer.parseInt(formularios[i])));
        }
        
        model.addAttribute("Formularios", fgUsar);
        model.addAttribute("Paciente", p);
        
        return "HistorialGeriatrico";
    }
    
    @RequestMapping(value = {"/verHistorialGerontologico"}, method = RequestMethod.GET)
    public String showHistorialGerontologico(@RequestParam("idPaciente") int idPaciente,ModelMap model) {
        
        Pacientes p = pacienteService.findById(idPaciente);
                
        String[] formularios = p.getIdFormulariosSS().split("-");
        
        List<Formularioss> fgUsar = new ArrayList<Formularioss>();
        
        for(int i = 0; i<formularios.length;i++){
            fgUsar.add(formulariosSSService.findById(Integer.parseInt(formularios[i])));
        }
        
        model.addAttribute("Formularios", fgUsar);
        model.addAttribute("Paciente", p);
        
        return "HistorialGerontologico";
    }
    
        @RequestMapping(value = {"/verHistorialNutricional"}, method = RequestMethod.GET)
    public String showHistorialNutricional(@RequestParam("idNutricional") int idPaciente,ModelMap model) {
        
        Pacientes p = pacienteService.findById(idPaciente);
                
        String[] formularios = p.getIdFormulariosSS().split("-");
        
        List<Formularionutricion> fn = new ArrayList<Formularionutricion>();
        
        for(int i = 0; i<formularios.length;i++){
            fn.add(NService.findById(Integer.parseInt(formularios[i])));
        }
        
        model.addAttribute("Formularios", fn);
        model.addAttribute("Paciente", p);
        
        return "HistorialNutricional";
    }
    
    @RequestMapping(value = {"/EvaluacionNutricional"})
    public String showEvaluacionNutricional(ModelMap model) {
        return "EvaluacionNutricional";
    }
    
    
     @RequestMapping(value = "/submitLogin", method = RequestMethod.POST)
    public String submitLogin(@RequestParam("password") String password, @RequestParam("mail") String mail, ModelMap model) {

        List<Usuarios> u = usuarioService.findAllUsuarios();
        Usuarios us = usuarioService.findByMail(u, mail);

        if(us.getPass().equals(password)&& us.getTipo().equals("Administrador")){
            model.addAttribute("cliente", mail);
                return "adminDashboard";

        }if(us.getPass().equals(password)&& us.getTipo().equals("Usuario")){
            user = true;
            return "usuarioDashboard";
        }else{
            return "login";
        }
             
    }
    
    @RequestMapping( value = "/evaluacionGeriatricaSubmit", method=RequestMethod.POST)
    public String guardarEvaluacionGeriatrica(
            @RequestParam(value="evalKatzRes") String evalKatzRes,@RequestParam(value="evalKatzIntr") String evalKatzIntr,
            @RequestParam(value="escalaBorthelRes") String escalaBorthelRes, @RequestParam(value="escalaBorthelIntr") String escalaBorthelIntr, 
            @RequestParam(value="lawtonRes") String lawtonRes,@RequestParam(value="lawtonIntr") String lawtonIntr, 
            @RequestParam(value="exMinRes") String exMinRes, @RequestParam(value="exMinIntr") String exMinIntr,
            @RequestParam(value="depresionRes") String depresionRes, @RequestParam(value="depresionIntr") String depresionIntr,
            @RequestParam(value="cribadoRes", required = false) String cribadoRes, @RequestParam(value="cribadoIntr") String cribadoIntr,
            @RequestParam(value="pruebaFisicoRes", required = false) String pruebaFisicoRes, @RequestParam(value="pruebaFisicoIntr") String pruebaFisicoIntr,
            @RequestParam(value="levantateAndaRes", required = false) String levantateAndaRes, @RequestParam(value="levantateAndaIntr") String levantateAndaIntr,
            @RequestParam(value="perdidaPesoRes", required = false) String perdidaPesoRes, @RequestParam(value="perdidaPesoIntr") String perdidaPesoIntr,
            @RequestParam(value="pobreResistenciaYEnergiaRes", required = false) String pobreResistenciaYEnergiaRes, @RequestParam(value="pobreResistenciaYEnergiaIntr") String pobreResistenciaYEnergiaIntr,
            @RequestParam(value="velocidadDeMarchaRes", required = false) String velocidadDeMarchaRes, @RequestParam(value="velocidadDeMarchaIntr") String velocidadDeMarchaIntr,
            @RequestParam(value="debilitamientoRes", required = false) String debilitamientoRes, @RequestParam(value="debilitamientoIntr") String debilitamientoIntr,
            @RequestParam(value="actividadFisicaRes", required = false) String actividadFisicaRes, @RequestParam(value="actividadFisicaIntr") String actividadFisicaIntr,
            @RequestParam(value="diagnosticoRes", required = false) String diagnosticoRes, @RequestParam(value="diagnosticoIntr", required = false) String diagnosticoIntr, 
            @RequestParam(value="pacienteid") int pacienteid,
            ModelMap model){
        
        Pacientes p = pacienteService.findById(pacienteid);
        
        Formulariogeneral fg = new Formulariogeneral();
        
        fg.setPacienteId(pacienteid);
        
        if(evalKatzRes != null){
            fg.setKartz(evalKatzRes);
        }
        if(escalaBorthelRes != null){
            fg.setBarthel(escalaBorthelRes);
        }
        if(lawtonRes != null){
            fg.setLawtonBrody(lawtonRes);
        }
        if(exMinRes != null){
            fg.setMental(exMinRes);
        }
        if(depresionRes != null){
            fg.setEscalaDepresion(depresionRes);
        }
        if(cribadoRes != null){
            fg.setNutricional(cribadoRes);
        }
        if(pruebaFisicoRes != null){
            fg.setResistencia(pruebaFisicoRes);
        }
        if(perdidaPesoRes !=  null){
            fg.setPerdidaPeso(perdidaPesoRes);
        }
        if(pobreResistenciaYEnergiaRes != null){
            fg.setResistencia(depresionIntr);
        }
        if(velocidadDeMarchaRes != null){
            fg.setVelocidad(velocidadDeMarchaRes);
        }
        if(debilitamientoRes != null){
            fg.setDebilitamiento(debilitamientoRes);
        }
        if(actividadFisicaRes != null){
            fg.setActividad(actividadFisicaRes);
        }
        if(diagnosticoRes != null){
            fg.setDiagnostico(diagnosticoRes);
        }
        
        fg.setLastUpdated(new LocalDate().toDateTimeAtStartOfDay().toDate());
        fg.setCreacion(new LocalDate().toDateTimeAtStartOfDay().toDate());
        fg.setPacienteId(pacienteid);
        fg.setLastUpdated(new LocalDate().toDateTimeAtStartOfDay().toDate());
        fg.setCreacion(new LocalDate().toDateTimeAtStartOfDay().toDate());
        
        fgService.saveFormularioGeneral(fg);
        
        if(p.getIdFormulariosGenerales() != null){
        StringBuilder sb = new StringBuilder(p.getIdFormulariosGenerales());
        String idFg = String.valueOf(fg.getId());
        sb.append("-"+idFg); //0 no contara
        String idString = sb.toString();
   
        p.setIdFormulariosGenerales(idString);
        pacienteService.updatePacientes(p);
        }else{
        StringBuilder sb = new StringBuilder();
        String idFg = String.valueOf(fg.getId());
        sb.append(idFg);
        String idString = sb.toString();
   
        p.setIdFormulariosGenerales(idString);
        pacienteService.updatePacientes(p);
        }
        
        
         if(user){
                    return "usuarioDashboard";

        }else{
                    return "adminDashboard";

        }
    }
    @RequestMapping(value = "/evaluacionGerontologicaSubmit", method = RequestMethod.POST)
            public String comepleteEvaluacionGerontologicaSubmit(@RequestParam(value="pacienteid", required=false) int Id,
    @RequestParam( value ="dU", required = false) String dispositivosUso, @RequestParam( value ="dMU", required = false) String dispositivosMayorUso,
    @RequestParam( value="frecuenciaU") String frecuenciaUso,  @RequestParam("actU") String actividadesUso, 
    @RequestParam("usosFav") String usosFavorecer,  @RequestParam("apoyoSocial") String apoyoSocial,
    @RequestParam("actComu") String actividadesComunitarias, ModelMap model) {
             
        Pacientes p = pacienteService.findById(Id);
        model.addAttribute("Paciente", p);
        
        Formularioss fss = new Formularioss();
        
        
        if(dispositivosUso != null){
            fss.setDispositivos(dispositivosUso);
        }
        if(dispositivosMayorUso != null){
            fss.setDispMayorUso(dispositivosMayorUso);
        }
        
        if(frecuenciaUso != null){
            fss.setFrecuencia(frecuenciaUso);
        }     
                
        if(actividadesUso != null){
            fss.setActividadesUso(actividadesUso);
        }      
                
        if(usosFavorecer != null){
            fss.setUsosFavorecer(usosFavorecer);
        }
        if(apoyoSocial != null){
                fss.setApoyoSocial(apoyoSocial);
        }
                
        fss.setPacienteId(Id);

        if(actividadesComunitarias != null){
            fss.setActividadesComunitarias(actividadesComunitarias);
        }
   
        //terminar de llenar todos los campos
        fss.setPacienteId(Id);

        fss.setLastUpdated(new LocalDate().toDateTimeAtStartOfDay().toDate());
        fss.setCreacion(new LocalDate().toDateTimeAtStartOfDay().toDate());

        
        formulariosSSService.saveFormularioss(fss);

         if(p.getIdFormulariosSS()!= null){
        StringBuilder sb = new StringBuilder(p.getIdFormulariosSS());
        String idFg = String.valueOf(fss.getId());
        sb.append("-"+idFg); //0 no contara
        String idString = sb.toString();
   
        p.setIdFormulariosSS(idString);
        pacienteService.updatePacientes(p);
        }else{
        StringBuilder sb = new StringBuilder();
        String idFg = String.valueOf(fss.getId());
        sb.append(idFg);
        String idString = sb.toString();
   
        p.setIdFormulariosSS(idString);
        pacienteService.updatePacientes(p);
        }
        
        if(user){
                    return "usuarioDashboard";

        }else{
                    return "adminDashboard";

        }
    }
    
    
    
    
    @RequestMapping(value = {"/ValoracionGerontologica"})
    public String showValoracionGerontologica(ModelMap model) {
        return "ValoracionGerontologica";
    }
    
    @RequestMapping(value = {"/CrearPaciente"})
    public String showCrearPaciente(ModelMap model) {
        return "CrearPaciente";
    }
    
    @RequestMapping(value = {"/pacienteCreado"})
    public String completeModification(@RequestParam( value ="nombre", required = false) String nombre,
        @RequestParam(value="aPaterno", required=false) String aPaterno, @RequestParam(value="afiliacionMedica", required=false) String afiMed,
        @RequestParam(value="escolaridadMax", required=false) String escolaridadMax, @RequestParam(value= "aMaterno", required=false) String aMaterno, 
        @RequestParam(value= "email", required=false) String email, @RequestParam(value="edad", required=false) String edad,
        @RequestParam(value="autoreportePadecimientos", required=false) String autoreportePadecimientos, 
        @RequestParam(value="escalaAMAI", required=false) String escalaAMAI, @RequestParam(value="estadoCivil", required=false) String estadoCivil,
        @RequestParam(value="cohabitacion", required=false) int cohabitacion, @RequestParam(value="telefono", required=false) String telefono,
        @RequestParam(value="domicilio", required=false) String domicilio, ModelMap model) {
        
        Pacientes p = new Pacientes();
        
        p.setCreacion(new LocalDate().toDateTimeAtStartOfDay().toDate());
        p.setLastUpdated(new LocalDate().toDateTimeAtStartOfDay().toDate());
        p.setNombre(nombre);
        p.setApellidoMaterno(aMaterno);
        p.setApellidoPaterno(aPaterno);
        p.setAfiliacion(afiMed);
        p.setEscolaridad(escolaridadMax);
        p.setEmail(email);
        p.setEscalaAMAI(escalaAMAI);
        p.setAutopadecimiento(autoreportePadecimientos);
        p.setEdad(edad);
        p.setEstadoCivil(estadoCivil);
        if(cohabitacion==0){
            p.setCohabitacion(false);
        }else{
            p.setCohabitacion(true);
        }
        p.setTelefono(telefono);
        p.setDireccion(domicilio);
        p.setActivo(true);
        
        pacienteService.savePacientes(p);
        
            if(user){
                return "usuarioDashboard";
            }else{
                return "adminDashboard";
            }
    }
    
      @RequestMapping(value = {"/ModificarPaciente"})
    public String showModificarPaciente(ModelMap model) {
        return "ModificarPaciente";
    }
    
          @RequestMapping(value = {"/pacienteModificado"}, method = RequestMethod.POST)
    public String modificarPaciente2(@RequestParam( value ="nombre", required = false) String nombre, 
        @RequestParam( value ="aPaterno", required = false) String aPaterno,
        @RequestParam(value="pacienteid", required=false) int Id,
        @RequestParam( value ="aMaterno", required = false) String aMaterno,
        @RequestParam( value ="email", required = false) String email,
        @RequestParam( value ="edad", required = false) String edad,
        @RequestParam( value ="estadoCivil", required = false) String estadoCivil,
        @RequestParam( value ="escolaridadMax", required = false) String escolaridadMax,
        @RequestParam( value ="cohabitacion", required = false) String cohabitacion,
        @RequestParam( value ="escalaAMAI", required = false) String escalaAMAI,
        @RequestParam( value ="autoreportePadecimientos", required = false) String autoreportePadecimientos,
        @RequestParam( value ="telefono", required = false) String telefono,
        @RequestParam( value ="direccion", required = false) String direccion,
        @RequestParam( value ="afiliacionMedica", required = false) String afiliacionMedica,

       ModelMap model) {
        
        Pacientes p = pacienteService.findById(Id);
        
        if(nombre != null){
            p.setNombre(nombre);
        }
        if(aPaterno != null){
            p.setApellidoPaterno(aPaterno);
        }
        
        if(aMaterno != null){
            p.setApellidoMaterno(aMaterno);
        }
        if(email != null){
            p.setEmail(email);
        }
        if(edad != null){
            p.setEdad(edad);
        }
                if(estadoCivil != null){
            p.setEstadoCivil(estadoCivil);
        }
        if(escolaridadMax != null){
            p.setEscolaridad(escolaridadMax);
        }
        
        if(cohabitacion.equals("true")){
            p.setCohabitacion(true);
        }else{p.setCohabitacion(false);}
         

        if(afiliacionMedica != null){
            p.setAfiliacion(afiliacionMedica);
        }
        if(escolaridadMax != null){
            p.setEscolaridad(escolaridadMax);
        }
        
        if(autoreportePadecimientos != null){
            p.setAutopadecimiento(autoreportePadecimientos);
        }
        if(escalaAMAI != null){
            p.setEscalaAMAI(escalaAMAI);
        }
        if(estadoCivil != null){
            p.setEstadoCivil(estadoCivil);
        }
        if(telefono != null){
            p.setTelefono(telefono);
        }
        if(direccion != null){
            p.setDireccion(direccion);
        }
      
         p.setLastUpdated(new LocalDate().toDateTimeAtStartOfDay().toDate());
                
        pacienteService.updatePacientes(p);
        
        
            if(user){
                    return "usuarioDashboard";
            }else{
                    return "adminDashboard";
            }        }
    

    
    @RequestMapping(value = {"/EliminarPaciente"})
    public String showEliminarPaciente(ModelMap model) {
        return "EliminarPaciente";
    }
    
        @RequestMapping(value = {"/pacienteEliminado"}/*, method = RequestMethod.POST*/)
    public String borrarPaciente(@RequestParam(value="pacienteId") int id,ModelMap model) {    
       pacienteService.deletePacientes(id);
        if(user){
                    return "usuarioDashboard";

        }else{
                    return "adminDashboard";

        }    }
         @RequestMapping(value = {"/GenerarReporte"})
    public String showGenerarReporte(ModelMap model) {
        return "GenerarReporte";
    }
    
    @RequestMapping(value = "/usuarioAgregado", method = RequestMethod.POST)
    public String completeRegistration(@RequestParam("nombre") String nombre, @RequestParam("aPaterno") String aPaterno, 
    @RequestParam("aMaterno") String aMaterno, ModelMap model) {
                 
        Usuarios u = new Usuarios();
        
        u.setCreacion(new LocalDate().toDateTimeAtStartOfDay().toDate());
        u.setLastUpdated(new LocalDate().toDateTimeAtStartOfDay().toDate());
        u.setEmail(nombre+"."+aPaterno+String.valueOf(aMaterno.charAt(0))+"@email.com");
        u.setNombre(nombre);
        u.setApellidoMaterno(aMaterno);
        u.setApellidoPaterno(aPaterno);
        u.setPass(nombre+aMaterno+aPaterno);
        u.setTipo("Usuario"); //agregar tipo de jefe de geriatria, etc...
        u.setActivo(true);
                
        usuarioService.saveUsuarios(u);

            if(user){
                return "usuarioDashboard";
            }else{
                return "adminDashboard";
            }    
    }
    
    @RequestMapping(value = "/usuarioModificado", method = RequestMethod.POST)
    public String completeModification(@RequestParam( value ="nombre", required = false) String nombre, @RequestParam( value ="domicilio", required = false) String domicilio, 
            @RequestParam(value="password", required=false) String password, @RequestParam(value="id", required=false) int Id,  @RequestParam(value= "aPaterno", required=false) String aPaterno,
            @RequestParam(value= "aMaterno", required=false) String aMaterno, @RequestParam(value= "email", required=false) String email, 
            @RequestParam(value="telefono", required=false) String telefono, @RequestParam(value="estado", required=false) int estado,
            @RequestParam(value="edad", required=false) String edad, @RequestParam(value="tipo", required=false) int tipo, ModelMap model) {
             
        Usuarios uM = usuarioService.findById(Id);
        
        if(nombre != null){
            uM.setNombre(nombre);
        }
        if(aPaterno != null){
            uM.setApellidoPaterno(aPaterno);
        }
        if(aMaterno != null){
            uM.setApellidoMaterno(aMaterno);
        }
        if(password != null || !password.equals("")){
            uM.setPass(password);
        }else{
            uM.setPass(nombre+aMaterno+aPaterno);
        }
        if(domicilio != null){
            uM.setDomicilio(domicilio);
        }
        if(email != null){
            uM.setEmail(email);
        }
        if(telefono != null){
            uM.setTelefono(telefono);
        }
        if(estado == 0){
            uM.setActivo(true);
        }else{uM.setActivo(false);}
        if(edad != null){
            uM.setEdad(edad);
        }
        if(tipo == 0 ){
            uM.setTipo("Usuario");
        }else{uM.setTipo("Administrador");}
        
        //terminar de llenar todos los campos
        
        uM.setLastUpdated(new LocalDate().toDateTimeAtStartOfDay().toDate());
                
        usuarioService.updateUsuarios(uM);

        if(user){
                    return "usuarioDashboard";

        }else{
                    return "adminDashboard";

        }    
    }
    
    @RequestMapping(value = {"/salirSinGuardar"})
    public String salirSinGuardar(ModelMap model) {
        
        if(user){
                    return "usuarioDashboard";

        }else{
                    return "adminDashboard";

        }
    }
}

