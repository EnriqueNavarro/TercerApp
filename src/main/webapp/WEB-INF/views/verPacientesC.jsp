<%-- 
    Document   : verPacientesC
    Created on : 15-may-2018, 13:13:42
    Author     : Francisco
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        
<!DOCTYPE html>
<html lang="es">


    <html>
    <head>
<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>


        <title>Ver Pacientes</title>
        
        <script type="text/javascript">
            
            var selectedIdAnswer = 0;

            function setValue(idRespuesta) {
                console.log("Valor del formulario (id): " + idRespuesta);
                selectedIdAnswer=idRespuesta;
            }


            
              $(document).ready(function() {
                //Ocultar todos los divs
                
                $('.evaluacionGeriatrica').click(function() {
                    $.ajax({
                        type: 'GEt',
                        url: '${pageContext.request.contextPath}/EvaluacionGeriatrica?idPaciente='+selectedIdAnswer,
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });
                                
                                
                $('.datosGenerales').click(function() {
                    $.ajax({
                        type: 'GET',
                        url: '${pageContext.request.contextPath}/verPaciente?idPaciente='+selectedIdAnswer,
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });
                                
                            $('.datosGerontologicos').click(function() {
                    $.ajax({
                        type: 'GET',
                        url: '${pageContext.request.contextPath}/verGerontologicaC?idPaciente='+selectedIdAnswer,
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });
                                
                    $('.verGeriatriaC').click(function() {
                    $.ajax({
                        type: 'GET',
                        url: '${pageContext.request.contextPath}/verGeriatrica?idGeriatrica='+selectedIdAnswer,
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });
                    $('.verResultadosF').click(function() {
                    $.ajax({
                        type: 'POST',
                        url: '${pageContext.request.contextPath}/ResultadosFitbit',
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });
                                
                            });
            
        </script>
        
    </head>
    <body>
                <c:set var="i" value="0"  scope="page"></c:set>

                 <div class="container ">
                    <h1 class="well">Escoge un paciente</h1>
                    <table class="table table-striped table-hover table-bordered">
                    <thead>
                      <tr>
                        <th scope="col">id</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido Paterno</th>
                        <th scope="col">Apellido Materno</th>
                        <th scope="col">Datos Generales</th>
                        <th scope="col">Evaluaci�n geriatrica</th>
                        <th scope="col">Resultados Fitbit</th>
                        <th scope="col">Evaluaci�n gerontol�gica</th>
                        <th scope="col">Evaluaci�n Nutricional</th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${Pacientes}" var="p">
                        <tr>
                        <th scope="row">${p.getId()}</th>
                        <td>${p.getNombre()}</td>
                        <td>${p.getApellidoPaterno()}</td>
                        <td>${p.getApellidoMaterno()}</td>
                        <td><button type="button" class="btn btn-primary datosGenerales" onclick="setValue(${p.getId()}) ">Ver</button>
                        </td>
                        <td>  <div class="form-group">
                        <label for="evalGeriatricas"${p.getId()}>Historial</label>
                        <c:set var="b" value="Paciente${p.getId()}" scope="page"></c:set>
                        <c:set var="a" value="${b}.get().getId()"></c:set>
                        <select class="form-control" id="evalGeriatricas"${p.getId()} name="fgSeleccionado">
                            <option onclick="setValue(13)" value="${Paciente15.get(0).getId()}">${Paciente15.get(0).getId()}</option>
                            <option onclick="setValue(14)">${Paciente15.get(1).getId()}</option>
                            <option onclick="setValue(15)">${Paciente15.get(2).getId()}</option>
                        </select>
                        
                         </div>
                        <button type="button" class="btn btn-outline-primary verGeriatriaC" onclick="setValue(13)" id="verValoracionNID" >Ver</button>
                          <button type="button" class="btn btn-outline-success evaluacionGeriatrica" id="evaluacionGeriatricaID" onclick="setValue(${p.getId()})">Crear</button>
                        </td>
                        <td><button type="button" class="btn btn-outline-primary verResultadosF" id="resultadosFitbitID">Ver</button>
                        </td>
                        <td><button type="button" class="btn btn-outline-primary datosGerontologicos" id="valoracionGerontologicaID">Crear</button>
                        </td>
                        <td><button type="button" class="btn btn-outline-primary" id="evalNutricional">Crear</button>
                        </td>
                        </tr>
                    </c:forEach>

                     </tbody>
                  </table>
               
                  </div>
                
             </body>
</html>
