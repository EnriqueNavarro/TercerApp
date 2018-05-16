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

                                
                    $('.verReporteGeriatrico').click(function() {
                    $.ajax({
                        type: 'GET',
                        url: '${pageContext.request.contextPath}/verGeriatrica?idGeriatrica='+selectedIdAnswer,
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
                    <h1 class="well">Escoge un formularios</h1>
                    <table class="table table-striped table-hover table-bordered">
                    <thead>
                      <tr>
                        <th scope="col">id</th>
                        <th scope="col">Creación</th>
                        <th scope="col">Última Modificación</th>
                        <th scope="col">Kartz</th>
                        <th scope="col">Mental</th>
                        <th scope="col">Lawton Brody</th>
                        <th scope="col">Escala Depresión</th>
                        <th scope="col">Nutricional</th>
                        <th scope="col">Perdida de Peso</th>
                        <th scope="col">Resistencia</th>
                        <th scope="col">Velocidad</th>
                        <th scope="col">Debilitamiento</th>
                        <th scope="col">Actividad</th>
                        <th scope="col">Diagnostico</th>
                        <th scope="col">Generar Reporte</th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${Formularios}" var="f">
                        <tr>
                        <th scope="row">${f.getId()}</th>
                        <td>${f.getCreacion()}</td>
                        <td>${f.getLastUpdated()}</td>
                        <td>${f.getKartz()}</td>
                        <td>${f.getMental()}</td>
                        <td>${f.getLawtonBrody()}</td>
                        <td>${f.getEscalaDepresion()}</td>
                        <td>${f.getNutricional()}</td>
                        <td>${f.getPerdidaPeso()}</td>
                        <td>${f.getResistencia()}</td>
                        <td>${f.getVelocidad()}</td>
                        <td>${f.getDebilitamiento()}</td>
                        <td>${f.getActividad()}</td>
                        <td>${f.getDiagnostico()}</td>
                        <td>
                            <button type="button" class="btn btn-outline-primary verReporteGeriatrico" id="" onclick="setValue(${f.getId()})">Generar Reporte</button>
                        </td>
                        </tr>
                    </c:forEach>

                     </tbody>
                  </table>
               
                  </div>
                
             </body>
</html>

