<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

            <head>
                <title>Evaluacion Gerontologica</title>

                <script type="text/javascript">
                    $(document).ready(function() {
                                var path = "<c:url value='/' />evaluacionGerontologicaSubmit";
                                console.log(path);
                                $('#path1').val(path);
                                $('#form1').attr('action', path);
                    });
                </script>
                
              

            </head>

            <body>
                <form method="post" action="evaluacionGerontologicaSubmit" id="form1">
                <div class="container ">
                    <h1 class="well">Evaluación gerontológica del paciente</h1>
                    <table class="table table-striped table-hover table-bordered">
                    <thead>
                      <tr>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td colspan="2">Dispositivos en uso: </td>
                        <td colspan="2"><input type="text" name="dU" value="Lap-top, tableta teléfono inteligente y cámara fotográfica"/></td>
                        <input type="hidden" value="${Paciente.getId()}" class="form-control" id="nombreCompletoID" name="pacienteid" >
                      </tr>
                      <tr>
                        <th scope="row">2</th>
                        <td colspan="2">Dispositivo de mayor uso: </td>
                        <td colspan="2"><input type="text" name="dMU" value="Lap-top y teléfono inteligente"/></td>

                      </tr>
                      <tr>
                        <th scope="row">3</th>
                        <td colspan="2">Frecuencia de uso: </td>
                        <td colspan="2"><input type="text" name="frecuenciaU" value="Diario entre 1 y 3 horas"/></td>
                      </tr>
                      <tr>
                        <th scope="row">4</th>
                        <td colspan="2">Actividades de uso:</td>
                        <td colspan="2"><input type="text" name="actU" value="Búsqueda y obtención de información"/></td>
                      </tr>
                      <tr>
                        <th scope="row">5</th>
                        <td colspan="2">Usos a favorecer: </td>
                        <td colspan="2"><input type="text" name="usosFav" value="Realización de trámites, pagos, compras y servicios (farmacia, súper, etc.)"/></td>
                      </tr>
                      <tr>
                        <th scope="row">6</th>
                        <td colspan="2">Apoyo social percibido (prueba Duke - corta): </td>
                        <td colspan="2"><input type="text" name="apoyoSocial" value="41 puntos ? cuenta con buenas redes de apoyo social "/></td>
                      </tr>
                      <tr>
                        <th scope="row">7</th>
                        <td colspan="2">Actividades comunitarias a favorecer:</td>
                        <td colspan="2"><input type="text" name="actComu" value="Asistir a actividades socio-culturales fuera de su entorno primario"/></td>
                      </tr>
                    </tbody>
                  </table>
               
                  </div>
                <input type="submit" value="Guardar" class="btn btn-success" />
            </form>
                <input type="submit" value="Salir sin guardar" class="btn btn-primary top-buffer" />
            </body>

            </html>