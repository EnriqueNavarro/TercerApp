<%-- 
    Document   : ModificarPaciente
    Created on : 22-abr-2018, 22:16:01
    Author     : Francisco
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
            <head>
                <title>Modificar paciente</title>

                <script type="text/javascript">
                    $(document).ready(function() {

                    });
                </script>
            </head>

            <body>
                <div class="container centerData">
                    <h1 class="well">Modifica los datos del paciente</h1>
                        <div class="row">
                            <form role="form" id="formR" method="post" action="<c:url value='/' />pacienteModificado">
                                    <div class="row">
                                        <div class="col-4">
                                          <label>Paciente:</label>
                                            <input type="text" placeholder="id" class="form-control" id="pacienteID" name="pacienteid" >
                                        </div>
                                                            
                                        <div class="creationInfo">
                                            <p>Paciente creado:     Ultima modificación: </p>
                                        </div>
                                    </div>
                                    <div class="row top-buffer">
                                        <div class="col-4">
                                          <label>Nombre</label>
                                            <input type="text" placeholder="Nombre" class="form-control" id="nombreID" name="nombre" required>
                                        </div>
                                        <div class="col-4">
                                           <label>Estado Civil</label>
                                            <select name="estadoCivil" form="formR">
                                            <option value="Casado">Casado</option>
                                            <option value="Divorciado">Divorciado</option>
                                            <option value="Soltero">Soltero</option>
                                          </select>
                                        </div>
                                        <div class="col-4">
                                          <label>Correo electrónico</label>
                                          <input type="text" placeholder="email" class="form-control" id="passwordID" name="email" required>
                                        </div>
                                    </div>
                                    <div class="row top-buffer">
                                        <div class="col-4">
                                          <label>Apellido Paterno</label>
                                            <input type="text" placeholder="Apellido Paterno" class="form-control" id="aPaternoID" name="aPaterno" required>
                                        </div>
                                        <div class="col-4">
                                           <label>Afiliación Médica</label>
                                           <input type="text" placeholder="Afiliacion medica" class="form-control" id="afiliacionMedicaID" name="afiliacionMedica" required>
                                        </div>
                                        <div class="col-4">
                                          <label>Escolaridad máxima alcanzada</label>
                                            <input type="text" placeholder="Escolaridad" class="form-control" id="escolaridadMaxID" name="escolaridadMax" required>
                                        </div>
                                    </div>
                                    <div class="row top-buffer">
                                        <div class="col-4">
                                          <label>Apellido Materno</label>
                                            <input type="text" placeholder="Apellido Materno" class="form-control" id="aMaternoID" name="aMaterno" required>
                                        </div>
                                        <div class="col-4">
                                           <label>Autoreporte de padecimientos</label>
                                           <input type="text" placeholder="Autoreporte" class="form-control" id="autoreporteID" name="autoreportePadecimientos" required>
                                        </div>
                                         <div class="col-4">
                                           <label>Cohabitación</label>
                                            <select name="cohabitacion" form="formR">
                                            <option value="1">Si</option>
                                            <option value="0">No</option>
                                          </select>
                                        </div>
                                    </div>
                                    <div class="row top-buffer">
                                        <div class="col-4">
                                          <label>Edad</label>
                                            <input type="text" placeholder="Edad" class="form-control" id="edadID" name="edad" required>
                                        </div>
                                        <div class="col-4">
                                           <label>Escala AMAI</label>
                                           <input type="text" placeholder="AMAI" class="form-control" id="escalaAMAID" name="escalaAMAI" required>
                                        </div>
                                        <div class="col-4">
                                           <label>Telefono</label>
                                           <input type="text" placeholder="Telefono" class="form-control" id="telefonoID" name="telefono" required>
                                        </div>
                                    </div>
                                    <div class="row top-buffer">
                                        <div class="col-4">
                                          <label>Domicilio</label>
                                            <input type="text" placeholder="Domicilio" class="form-control" id="domicilioID" name="domicilio" required>
                                        </div>
                                        <div class="col-4">
                                          <label>Estado</label>
                                          <select id="estadoID" name="estado" class="form-control">
                                              <option value="0" selected>Activo</option>
                                              <option value="1">Inactivo</option>
                                            </select>
                                        </div>

                                       
                                    </div>
                                <div id="submitID">
                                <input type="submit" value="Modificar" id="" class="btn btn-info">
                                </div>
                            </form>
                        </div>
                </div>
            </body>

            </html>
