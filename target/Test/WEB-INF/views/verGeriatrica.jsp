<%-- 
    Document   : EvaluacionGeriatrica
    Created on : 22-abr-2018, 13:53:33
    Author     : Francisco
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <html>

            <head>
                <title>Evaluacion Geriatrica</title>

                <script type="text/javascript">
                    $(document).ready(function() {
  var path = "<c:url value='/' />evaluacionGeriatricaSubmit";
                                console.log(path);
                                $('#path1').val(path);
                                $('#form1').attr('action', path);
                    });
                </script>
                
              

            </head>

            <body>
                <form method="post" action="evaluacionGeriatricaSubmit">
                    <div class="container " id="HTMLtoPDF">
                    <h1 class="well">Evaluaci�n geri�trica del paciente</h1>
                    <table class="table table-striped table-hover table-bordered">
                    <thead>
                      <tr>
                        <th scope="col">Pruebas Aplicadas</th>
                        <th scope="col">Resultado   :     �ltima evaluaci�n</th>
                        <th scope="col">Interpretaci�n</th>
                      </tr>
                    </thead>
                    <tbody>
             <input type="hidden" value="" class="form-control" id="pacienteID" name="pacienteid" >
                      <tr>
                          <td>Evaluaci�n de Katz</td>
                          <td><input type="text" name="evalKatzRes" value="${FG.getKartz()}"/>:      ${FG.getKartz()}</td>
                          <td><input type="text" name="evalKatzIntr" value="3.43"/>Normal</td>
                      </tr>
                      <tr>
                        <td>Escala de Borthel</td>
                        <td><input type="text" name="escalaBorthelRes" value="${FG.getBarthel()}"/>:  ${FG.getBarthel()}</td>
                        <td><input type="text" name="escalaBorthelIntr" value="2.43"/>Normal</td>
                      </tr>
                      <tr>
                        <td>Escala de Lawton-Brady</td>
                        <td><input type="text" name="lawtonRes" value="${FG.getLawtonBrody()}"/>:${FG.getLawtonBrody()}</td>
                        <td><input type="text" name="lawtonIntr" value="2.43"/>Normal</td>
                      </tr>
                      <tr>
                        <td>Examen m�nimo del estado mental</td>
                        <td><input type="text" name="exMinRes" value="${FG.getMental()}"/>:${FG.getMental()}</td>
                        <td><input type="text" name="exMinIntr" value="2.43"/>Normal</td>
                      </tr>
                                            <tr>
                        <td>Escala de Depresi�n Geri�trica</td>
                        <td><input type="text" name="depresionRes" value="${FG.getEscalaDepresion()}"/>:${FG.getEscalaDepresion()}</td>
                        <td><input type="text" name="depresionIntr" value="2.43"/>Normal</td>
                      </tr>
                      <tr>
                        <td>Cribado nutricional</td>
                        <td><input type="text" name="cribadoRes" value="${FG.getNutricional()}"/>:${FG.getNutricional()}</td>
                        <td><input type="text" name="cribadoIntr" value="2.43"/>Normal</td>
                      </tr>
                       <tr>
                        <td>Prueba corta de desempe�o f�sico</td>
                        <td><input type="text" name="pruebaFisicoRes" value="${FG.getResistencia()}"/>:${FG.getResistencia()}</td>
                        <td><input type="text" name="pruebaFisicoIntr" value="2.43"/>Bueno</td>
                      </tr>
                      <tr>
                        <td>Prueba lev�ntate y anda</td>
                        <td><input type="text" name="levantateAndaRes" value="${FG.getActividad()}"/>:${FG.getActividad()}</td>
                        <td><input type="text" name="levantateAndaIntr" value="2.43"/>Normal</td>
                      </tr>
                    </tbody>
                  </table>
                <table class="table table-striped table-hover table-bordered top-buffer">
                    <thead>
                      <tr>
                        <th scope="col">Evaluaci�n de fragilidad </th>
                        <th scope="col">Resultado</th>
                        <th scope="col">Interpretaci�n</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>Perdida de peso</td>
                        <td><input type="text" name="perdidaPesoRes" value="${FG.getPerdidaPeso()}"/>:${FG.getPerdidaPeso()}</td>
                        <td><input type="text" name="perdidaPesoIntr" value="2.43"/>Normal</td>
                      </tr>
                      <tr>
                        <td>Pobre resistencia y energ�a disminuida</td>
                        <td><input type="text" name="pobreResistenciaYEnergiaRes" value="${FG.getResistencia()}"/>:${FG.getResistencia()}</td>
                        <td><input type="text" name="pobreResistenciaYEnergiaIntr" value="2.43"/>Normal</td>
                      </tr>
                      <tr>
                        <td>Velocidad de la marcha</td>
                        <td><input type="text" name="velocidadDeMarchaRes" value="${FG.getVelocidad()}"/>:${FG.getVelocidad()}</td>
                        <td><input type="text" name="velocidadDeMarchaIntr" value="2.43"/>Normal</td>
                      </tr>
                      <tr>
                        <td>Debilitamiento(Fuerza de Prensi�n)</td>
                        <td><input type="text" name="debilitamientoRes" value="${FG.getDebilitaminto()}"/>:${FG.getDebilitamiento()}</td>
                        <td><input type="text" name="debilitamientoIntr" value="2.43"/>Normal</td>
                      </tr>
                                            <tr>
                        <td>Actividad F�sica</td>
                        <td><input type="text" name="actividadFisicaRes" value="${FG.getActividad()}"/>:${FG.getActividad()}</td>
                        <td><input type="text" name="actividadFisicaIntr" value="2.43"/>Normal</td>
                      </tr>
                      <tr>
                        <td>Diagn�stico</td>
                        <td><input type="text" name="diagnosticoRes" value="${FG.getDiagnostico()}"/>:${FG.getDiagnostico()}</td>
                        <td><input type="text" name="diagnosticoIntr" value="2.43"/>Bueno</td>
                      </tr>
                    </tbody>
                  </table>
                  </div>
                <input type="submit" value="Guardar" class="btn btn-success" />
            </form>
            <form method="post" action="salirSinGuardar">
                <input type="submit" value="Salir sin guardar" class="btn btn-primary top-buffer" />
            </form>

            </body>

            </html>
