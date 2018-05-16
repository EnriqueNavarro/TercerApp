
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Evaluacion Nutricional</title>
        <script type="text/javascript">
                    $(document).ready(function() {
  var path = "<c:url value='/' />evaluacionNutricionalSubmit";
                                console.log(path);
                                $('#path1').val(path);
                                $('#form1').attr('action', path);
                    });
        </script>
    </head>
    <body>
            <form method="post" action="evaluacionNutricionalSubmit">
                <div class="container " id="HTMLtoPDF">
                    <h1 class="well">Evaluación nutricional del paciente</h1>
                    <input type="hidden" value="${Formulario.getId()}" class="form-control" id="nombreCompletoID" name="pacienteid" >
                    <table class="table table-striped table-hover table-bordered">
                    <thead>
                      <tr>
                        <th scope="col">Parametro</th>
                        <th scope="col">Resultado</th>
                        <th scope="col">Interpretación</th>
                      </tr>
                    </thead>
                    <tbody>
                        <tr>
                          <td>Peso</td>
                          <td><input type="text" name="w" value="${Formulario.getPeso()}"/>${Formulario.getPeso()}</td>
                          <td><input type="text" name="iw" value="Interpretación"/>${Formulario.getIntPeso()}</td>
                      </tr>
                      <tr>
                          <td>Electrolitos</td>
                          <td><input type="text" name="e" value=""/>${Formulario.getElectrolitos()}</td>
                          <td><input type="text" name="ie" value="Interpretación"/>${Formulario.getIntElectrolitos()}</td>
                      </tr>
                      <tr>
                          <td>Albumina</td>
                          <td><input type="text" name="a" value=""/>${Formulario.getAlbumina()}</td>
                          <td><input type="text" name="ia" value="Interpretación"/>${Formulario.getIntAlbumina()}</td>
                      </tr>
                      <tr>
                          <td>Indice de masa corporal</td>
                          <td><input type="text" name="imc" value=""/>${Formulario.getImc()}</td>
                          <td><input type="text" name="iimc" value=""/>${Formulario.getIntIMC()}</td>
                      </tr>
                      <tr>
                          <td>Diametro de brazo</td>
                          <td><input type="text" name="db" value=""/>${Formulario.getDiametroBrazo()}</td>
                          <td><input type="text" name="idb" value=""/>${Formulario.getIntDiametroBrazo()}</td>
                      </tr>
                      <tr>
                          <td>Diametro de pierna</td>
                          <td><input type="text" name="dp" value=""/>${Formulario.getDiametroPierna()}</td>
                          <td><input type="text" name="idp" value=""/>${Formulario.getIntDiametroPierna()}</td>
                      </tr>
                      <tr>
                          <td>Diametro de abdomen</td>
                          <td><input type="text" name="da" value=""/>${Formulario.getDiametroAbdomen()}</td>
                          <td><input type="text" name="ida" value=""/>${Formulario.getIntDiametroAbdomen()}</td>
                      </tr>
                      <tr>
                          <td>Presion</td>
                          <td><input type="text" name="p" value=""/>${Formulario.getPresion()}</td>
                          <td><input type="text" name="ip" value=""/>${Formulario.getIntPresion()}</td>
                      </tr>
                      <tr>
                          <td>BH</td>
                          <td><input type="text" name="bh" value=""/>${Formulario.getBh()}</td>
                          <td><input type="text" name="ibh" value=""/>${Formulario.getIntBH()}</td>
                      </tr>
                      <tr>
                          <td>Glucosa</td>
                          <td><input type="text" name="g" value=""/>${Formulario.getGlucosa()}</td>
                          <td><input type="text" name="ig" value=""/>${Formulario.getIntGlucosa()}</td>
                      </tr>
                      <tr>
                          <td>Lipidos</td>
                          <td><input type="text" name="l" value=""/>${Formulario.getLipidos()}</td>
                          <td><input type="text" name="il" value=""/>${Formulario.getIntLipidos()}</td>
                      </tr>
                    </tbody>
                  </table>
                  </div>
                <input type="submit" value="Guardar" class="btn btn-success" />
                <button type="button" class="btn btn-outline-primary" id="generarReporteID" onClick="HTMLtoPDF()">Generar Reporte</button>

                </form>
                <form method="post" action="salirSinGuardar">
                 <input type="submit" value="Salir sin guardar" class="btn btn-primary top-buffer" />
                </form>
             <script src="js/jspdf.js"></script>
             <script src="js/jquery-2.1.3.js"></script>
             <script src="js/pdfFromHTML.js"></script>
    </body>
</html>
