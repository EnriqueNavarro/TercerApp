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

                                
                    $('.verReporteNutricional').click(function() {
                    $.ajax({
                        type: 'GET',
                        url: '${pageContext.request.contextPath}/verReporteNutricional?idNutricional='+selectedIdAnswer,
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
                        <th scope="col">Creaci�n</th>
                        <th scope="col">�ltima Modificaci�n</th>
                        <th scope="col">Peso</th>
                        <th scope="col">Electrolitos</th>
                        <th scope="col">Albumina</th>
                        <th scope="col">IMC</th>
                        <th scope="col">Generar Reporte</th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${Formularios}" var="f">
                        <tr>
                        <th scope="row">${f.getId()}</th>
                        <td>${f.getCreacion()}</td>
                        <td>${f.getLastUpdated()}</td>
                        <td>${f.getPeso()}</td>
                        <td>${f.getElectrolitos()}</td>
                        <td>${f.getAlbumina()}</td>
                        <td>${f.getImc()}</td>
                       
                        <td>
                            <button type="button" class="btn btn-outline-primary verReporteNutricional" id="" onclick="setValue(${f.getId()})">Generar Reporte</button>
                        </td>
                        </tr>
                    </c:forEach>

                     </tbody>
                  </table>
               
                  </div>
                <form method="post" action="salirSinGuardar">
                <input type="submit" value="Salir" class="btn btn-primary top-buffer" />
            </form>
             </body>
</html>

