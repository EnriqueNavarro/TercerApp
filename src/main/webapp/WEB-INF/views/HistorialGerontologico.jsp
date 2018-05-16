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


        <title>Ver Historial</title>
        
        <script type="text/javascript">
            
            var selectedIdAnswer = 0;

            function setValue(idRespuesta) {
                console.log("Valor del formulario (id): " + idRespuesta);
                selectedIdAnswer=idRespuesta;
            }


            
              $(document).ready(function() {
                //Ocultar todos los divs

                                
                    $('.verGeriatriaC').click(function() {
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
                        <th scope="col">Dispositivos de Uso</th>
                        <th scope="col">Dispositivo Mayor Uso</th>
                        <th scope="col">Frecuencia</th>
                        <th scope="col">Actividades de Uso</th>
                        <th scope="col">Usos a favorecer</th>
                        <th scope="col">Apoyo Social</th>
                        <th scope="col">Actividades Comunitarias</th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${Formularios}" var="f">
                        <tr>
                        <th scope="row">${f.getId()}</th>
                        <td>${f.getCreacion()}</td>
                        <td>${f.getLastUpdated()}</td>
                        <td>${f.getDispositivos()}</td>
                        <td>${f.getDispMayorUso()}</td>
                        <td>${f.getFrecuencia()}</td>
                        <td>${f.getActividadesUso()}</td>
                        <td>${f.getUsosFavorecer()}</td>
                        <td>${f.getApoyoSocial()}</td>
                        <td>${f.getActividadesComunitarias()}</td>
                        </tr>
                    </c:forEach>

                     </tbody>
                  </table>
               
                  </div>
                
             </body>
</html>

