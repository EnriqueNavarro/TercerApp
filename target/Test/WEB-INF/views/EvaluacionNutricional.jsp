<%-- 
    Document   : EvaluacionNutricional
    Created on : May 15, 2018, 12:48:44 PM
    Author     : Arpi
--%>

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
        <body>
                <form method="post" action="evaluacionNutricionalSubmit">
                <div class="container ">
                    <h1 class="well">Evaluación nutricional del paciente</h1>
                    <input type="hidden" value="${Paciente.getId()}" class="form-control" id="nombreCompletoID" name="pacienteid" >
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
                          <td><input type="text" name="w" value="50.2"/></td>
                          <td><input type="text" name="iw" value="Interpretación"/></td>
                      </tr>
                      <tr>
                          <td>Electrolitos</td>
                          <td><input type="text" name="e" value="2.43"/></td>
                          <td><input type="text" name="ie" value="Interpretación"/></td>
                      </tr>
                      <tr>
                          <td>Albumina</td>
                          <td><input type="text" name="a" value="2.43"/></td>
                          <td><input type="text" name="ia" value="Interpretación"/></td>
                      </tr>
                      <tr>
                          <td>Indice de masa corporal</td>
                          <td><input type="text" name="imc" value="2.43"/></td>
                          <td><input type="text" name="iimc" value="Interpretación"/></td>
                      </tr>
                      <tr>
                          <td>Diametro de brazo</td>
                          <td><input type="text" name="db" value="2.43"/></td>
                          <td><input type="text" name="idb" value="Interpretación"/></td>
                      </tr>
                      <tr>
                          <td>Diametro de pierna</td>
                          <td><input type="text" name="dp" value="2.43"/></td>
                          <td><input type="text" name="idp" value="Interpretación"/></td>
                      </tr>
                      <tr>
                          <td>Diametro de abdomen</td>
                          <td><input type="text" name="da" value="2.43"/></td>
                          <td><input type="text" name="ida" value="Interpretación"/></td>
                      </tr>
                      <tr>
                          <td>Presion</td>
                          <td><input type="text" name="p" value="2.43"/></td>
                          <td><input type="text" name="ip" value="Interpretación"/></td>
                      </tr>
                      <tr>
                          <td>BH</td>
                          <td><input type="text" name="bh" value="2.43"/></td>
                          <td><input type="text" name="ibh" value="Interpretación"/></td>
                      </tr>
                      <tr>
                          <td>Glucosa</td>
                          <td><input type="text" name="g" value="2.43"/></td>
                          <td><input type="text" name="ig" value="Interpretación"/></td>
                      </tr>
                      <tr>
                          <td>Lipidos</td>
                          <td><input type="text" name="l" value="2.43"/></td>
                          <td><input type="text" name="il" value="Interpretación"/></td>
                      </tr>
                    </tbody>
                  </table>
                  </div>
                <input type="submit" value="Guardar" class="btn btn-success" />
                </form>
                <input type="submit" onclick="location.href='/TercerApp'" value="Salir sin guardar" class="btn btn-primary top-buffer" />
    </body>
</html>
