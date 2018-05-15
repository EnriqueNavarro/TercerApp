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
                <div class="container ">
                    <h1 class="well">Evaluación geriátrica del paciente</h1>
                    <div class="row">
                        <div class="col-4">
                          <label>Paciente:</label>
                            <input type="text" placeholder="id" class="form-control" id="pacienteID" name="pacienteid" >
                        </div>
                    </div>
                    <table class="table table-striped table-hover table-bordered">
                    <thead>
                      <tr>
                        <th scope="col">Pruebas Aplicadas</th>
                        <th scope="col">Resultado</th>
                        <th scope="col">Interpretación</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                          <td>Evaluación de Katz</td>
                          <td><input type="text" name="evalKatzRes" value="2.43"/></td>
                          <td><input type="text" name="evalKatzIntr" value="3.43"/></td>
                      </tr>
                      <tr>
                        <td>Escala de Borthel</td>
                        <td><input type="text" name="escalaBorthelRes" value="2.43"/></td>
                        <td><input type="text" name="escalaBorthelIntr" value="2.43"/></td>
                      </tr>
                      <tr>
                        <td>Escala de Lawton-Brady</td>
                        <td><input type="text" name="lawtonRes" value="2.43"/></td>
                        <td><input type="text" name="lawtonIntr" value="2.43"/></td>
                      </tr>
                      <tr>
                        <td>Examen mínimo del estado mental</td>
                        <td><input type="text" name="exMinRes" value="2.43"/></td>
                        <td><input type="text" name="exMinIntr" value="2.43"/></td>
                      </tr>
                                            <tr>
                        <td>Escala de Depresión Geriátrica</td>
                        <td><input type="text" name="depresionRes" value="2.43"/></td>
                        <td><input type="text" name="depresionIntr" value="2.43"/></td>
                      </tr>
                      <tr>
                        <td>Cribado nutricional</td>
                        <td><input type="text" name="cribadoRes" value="2.43"/></td>
                        <td><input type="text" name="cribadoIntr" value="2.43"/></td>
                      </tr>
                       <tr>
                        <td>Prueba corta de desempeño físico</td>
                        <td><input type="text" name="pruebaFisicoRes" value="2.43"/></td>
                        <td><input type="text" name="pruebaFisicoIntr" value="2.43"/></td>
                      </tr>
                      <tr>
                        <td>Prueba levántate y anda</td>
                        <td><input type="text" name="levantateAndaRes" value="2.43"/></td>
                        <td><input type="text" name="levantateAndaIntr" value="2.43"/></td>
                      </tr>
                    </tbody>
                  </table>
                <table class="table table-striped table-hover table-bordered top-buffer">
                    <thead>
                      <tr>
                        <th scope="col">Evaluación de fragilidad </th>
                        <th scope="col">Resultado</th>
                        <th scope="col">Interpretación</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>Perdida de peso</td>
                        <td><input type="text" name="perdidaPesoRes" value="2.43"/></td>
                        <td><input type="text" name="perdidaPesoIntr" value="2.43"/></td>
                      </tr>
                      <tr>
                        <td>Pobre resistencia y energía disminuida</td>
                        <td><input type="text" name="pobreResistenciaYEnergiaRes" value="2.43"/></td>
                        <td><input type="text" name="pobreResistenciaYEnergiaIntr" value="2.43"/></td>
                      </tr>
                      <tr>
                        <td>Velocidad de la marcha</td>
                        <td><input type="text" name="velocidadDeMarchaRes" value="2.43"/></td>
                        <td><input type="text" name="velocidadDeMarchaIntr" value="2.43"/></td>
                      </tr>
                      <tr>
                        <td>Debilitamiento(Fuerza de Prensión)</td>
                        <td><input type="text" name="debilitamientoRes" value="2.43"/></td>
                        <td><input type="text" name="debilitamientoIntr" value="2.43"/></td>
                      </tr>
                                            <tr>
                        <td>Actividad Física</td>
                        <td><input type="text" name="actividadFisicaRes" value="2.43"/></td>
                        <td><input type="text" name="actividadFisicaIntr" value="2.43"/></td>
                      </tr>
                      <tr>
                        <td>Diagnóstico</td>
                        <td><input type="text" name="diagnosticoRes" value="2.43"/></td>
                        <td><input type="text" name="diagnosticoIntr" value="2.43"/></td>
                      </tr>
                    </tbody>
                  </table>
                  </div>
                <input type="submit" value="Guardar" class="btn btn-success" />
            </form>
                <input type="submit" onclick="location.href='/TercerApp'" value="Salir sin guardar" class="btn btn-primary top-buffer" />
            </body>

            </html>
