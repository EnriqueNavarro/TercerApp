<%-- 
    Document   : VerPaciente
    Created on : 21-abr-2018, 21:05:47
    Author     : Francisco
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
                <title>Ver Paciente</title>

                <script type="text/javascript">
                    
                    $(document).ready(function() {
                        var path = "<c:url value='/' />pacienteModificado";
                                console.log(path);
                                $('#path1').val(path);
                                $('#form1').attr('action', path);
                               
                                            
                    $('#resultadosFitbitID').click(function() {
                    $.ajax({
                        type: 'POST',
                        url: '${pageContext.request.contextPath}/ResultadosFitbit',
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });
                    $('#evaluacionNutricionalID').click(function() {
                    $.ajax({
                        type: 'POST',
                        url: '${pageContext.request.contextPath}/EvaluacionNutricional',
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });            
                    $('#evaluacionGeriatricaID').click(function() {
                    $.ajax({
                        type: 'POST',
                        url: '${pageContext.request.contextPath}/EvaluacionGeriatrica',
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });
                    $('#valoracionGerontologicaID').click(function() {
                    $.ajax({
                        type: 'POST',
                        url: '${pageContext.request.contextPath}/ValoracionGerontologica',
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });
                    });
                </script>
            </head>

            <body>
                <div class="container centerData">
                    <h1 class="well">Datos generales del paciente</h1>
                    <div class="" id="">
                        <div class="row">
                            <form role="form" id="form1" method="post" action="pacienteModificado">
                                    <div class="row">
                                        <div class="col-5">
                                          <label>Nombre</label>
                                          <input type="text" value="${Paciente.getNombre()}" class="form-control" id="nombreCompletoID" name="nombre" >
                                        </div>
                                        <input type="hidden" value="${Paciente.getId()}" class="form-control" id="nombreCompletoID" name="pacienteid" >
                                        <div class="col-5">
                                          <label>ApellidoPaterno</label>
                                          <input type="text" value="${Paciente.getApellidoPaterno()}" class="form-control" id="nombreCompletoID" name="aPaterno" >
                                        </div>                                    
                                        <div class="col-5">
                                          <label>Apellido Materno</label>
                                          <input type="text" value="${Paciente.getApellidoMaterno()}" class="form-control" id="nombreCompletoID" name="aMaterno" >
                                        </div>
                                        </div>
                                    <div class="row top-buffer">
                                        <div class="col-5">
                                           <label>Correo Electrónico</label>
                                           <input type="text" value="${Paciente.getEmail()}" class="form-control" id="emailID" name="email" >
                                        </div>
                                             <div class="col-5 top-buffer">
                                          <label>Edad</label>
                                            <input type="text" value="${Paciente.getEdad()}" class="form-control" id="edadID" name="edad" >
                                        </div>
                                        <div class="col-5 top-buffer">
                                          <label>Estado Civil</label>
                                            <input type="text" value="${Paciente.getEstadoCivil()}" class="form-control" id="edadID" name="estadoCivil" >
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                   
                                        <div class="col-5">
                                           <label>Co-habitación</label>
                                            <input type="text" value="${Paciente.getCohabitacion()}" class="form-control" id="cohabitacionID" name="cohabitacion" >
                                        </div>
                                            <div class="col-5">
                                          <label>Escolaridad máxima alcanzada</label>
                                            <input type="text" value="${Paciente.getEscolaridad()}" class="form-control" id="escolaridadID" name="escolaridadMax" >
                                        </div>
                                        <div class="col-5 top-buffer">
                                           <label>Afiliación Médica</label>
                                           <input type="text" value="${Paciente.getAfiliacion()}" class="form-control" id="afilID" name="afiliacionMedica" >
                                        </div>
                                    </div>
                                    <div class="row top-buffer">
                                        <div class="col-5">
                                           <label>Escala AMAI</label>
                                           <input type="text" value="${Paciente.getEscalaAMAI()}" class="form-control" id="escalaAMAID" name="escalaAMAI" >
                                        </div>
                                          <div class="col-5 top-buffer">
                                          <label>Autoreporte de padecimientos</label>
                                            <input type="text" value="${Paciente.getAutopadecimiento()}" class="form-control" id="autoreporteID" name="autoreportePadecimientos" >
                                        </div>
                                        <div class="col-5">
                                           <label>Teléfono</label>
                                           <input type="text" value="${Paciente.getTelefono()}" class="form-control" id="telefonoID" name="telefono" >
                                        </div>
                                    </div>
                                
                                    <div class="row top-buffer">
                                        <div class="col-5">
                                           <label>Dirección</label>
                                           <input type="text" value="${Paciente.getDireccion()}" class="form-control" id="telefonoID" name="direccion" >
                                        </div>
                                     <div class="creationInfo">
                                            <p>Creación de paciente: ${Paciente.getCreacion()}</p>
                                            <p>Última modificación del paciente: ${Paciente.getLastUpdated()}</p>
                                        </div>
                                    </div>
                                <input type="submit" value="Modificar" id="" class="btn btn-info">
                                <button type="button" class="btn btn-outline-primary" id="generarReporteID">Generar Reporte</button>

                            </form>
                        </div>
                    </div>

                </div>
            </body>