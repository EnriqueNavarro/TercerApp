<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Panel de Usuario</title>
  <!-- Bootstrap core CSS-->
  <!-- Custom fonts for this template-->
  <link rel="stylesheet" href="<c:url value='/' />css/normalize.css">
  <link rel="stylesheet" href="<c:url value='/' />css/adminHome/font-awesome.min.css" type="text/css">
  <!-- Custom styles for this template-->
  <link rel="stylesheet" href="<c:url value='/' />css/adminHome/sb-admin.css">


        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
          
        <meta name="description" content="">
        <meta name="author" content="">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="<c:url value='/' />css/formStyle.css">
        <link href="https://fonts.googleapis.com/css?family=Raleway:500" rel="stylesheet">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
   <i class="fa fa-paste" aria-hidden="true"></i>
    <a class="navbar-brand" href="#">Tercer App</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarResponsive">
      
        <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="#">
            <i class="fa fa-fw fa-pencil"></i>
            <span class="nav-link-text">Usuario</span>
          </a>
        </li>
        
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="ver_paciente">
            <a class="nav-link" href="#" id="verPacienteID">
            <i class="fa fa-fw fa fa-address-card"></i>
            <span class="nav-link-text">Ver Paciente</span>
          </a>
        </li>
                <li class="nav-item" data-toggle="tooltip" data-placement="right" title="registrar_paciente">
            <a class="nav-link" href="#" id="registrarPacienteID">
            <i class="fa fa-fw fa fa-user-plus"></i>
            <span class="nav-link-text">Registrar Paciente</span>
          </a>
        </li>
        
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="modificar_paciente">
            <a class="nav-link" href="#" id="modificarPacienteID">
            <i class="fa fa-fw fa fa-address-book"></i>
            <span class="nav-link-text">Modificar Paciente</span>
          </a>
        </li>

        
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="eliminar_paciente">
            <a class="nav-link" href="#" id="eliminarPacienteID">
            <i class="fa fa-fw fa fa-user-times"></i>
            <span class="nav-link-text">Eliminar Paciente</span>
          </a>
        </li>
        

        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="generar_reporte">
            <a class="nav-link" href="#" id="generarReporteID">
            <i class="fa fa-fw fa fa-clipboard"></i>
            <span class="nav-link-text">Generar Reporte</span>
          </a>
        </li>
        
      <!--<a class="btn btn-primary" href="#" id="toggleNavColor">Tema</a>-->

      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      
          
    </div>
  </nav>
  <div class="content-wrapper">
      <div class="container-fluid" id="infoScreen"> <!-- Container TODO    -->
      
          <h2 class="">Bienvenido al panel de administración</h2>
      <hr>
      <!-- Blank div to give the page height to preview the fixed vs. static navbar-->
      <div style="height: 1000px;"></div>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small></small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>

    <!-- Bootstrap core JavaScript-->
    <script src="<c:url value='/' />js/jquery.min.js" ></script>
    <script src="<c:url value='/' />js/bootstrap.bundle.min.js" ></script>
    <!-- Core plugin JavaScript-->
    <script src="<c:url value='/' />js/jquery.easing.min.js" ></script>
    <!-- Custom scripts for all pages-->
    <script src="<c:url value='/' />js/sb-admin.min.js" ></script>
    <!-- Custom scripts for this page-->
    
    <script>
                $(document).ready(function() {    
                    
                $('#registarUsuarioID').click(function() {
                    $.ajax({
                        type: 'POST',
                        url: '${pageContext.request.contextPath}/registrarUsuario',
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });
                                
                $('#modificarUsuarioID').click(function() {
                    $.ajax({
                        type: 'GET',
                        url: '${pageContext.request.contextPath}/modificarUsuarioC',
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });
                                
                $('#verPacienteID').click(function() {
                    $.ajax({
                        type: 'POST',
                        url: '${pageContext.request.contextPath}/verPaciente',
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });
                
                $('#registrarPacienteID').click(function() {
                    $.ajax({
                        type: 'POST',
                        url: '${pageContext.request.contextPath}/CrearPaciente',
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            
                                        }
                                    });
                                });
            
                $('#modificarPacienteID').click(function() {
                    $.ajax({
                        type: 'POST',
                        url: '${pageContext.request.contextPath}/ModificarPaciente',
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });
                                
                            $('#eliminarPacienteID').click(function() {
                    $.ajax({
                        type: 'POST',
                        url: '${pageContext.request.contextPath}/EliminarPaciente',
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });
                                
                                                            $('#generarReporteID').click(function() {
                    $.ajax({
                        type: 'POST',
                        url: '${pageContext.request.contextPath}/GenerarReporte',
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });
                                
                    $('#modificarProductoId').click(function() {
                    $.ajax({
                        type: 'GET',
                        url: '${pageContext.request.contextPath}/modificarProductoC',
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });
                                
                    $('#modificarRespuestaId').click(function() {
                    $.ajax({
                        type: 'GET',
                        url: '${pageContext.request.contextPath}/RespuestaController',
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });
                                   
                                
                            });
        
    </script>
    
    <!-- Toggle between fixed and static navbar-->
    <script>
    $('#toggleNavPosition').click(function() {
      $('body').toggleClass('fixed-nav');
      $('nav').toggleClass('fixed-top static-top');
    });

    </script>
    <!-- Toggle between dark and light navbar-->
    <script>
    $('#toggleNavColor').click(function() {
      $('nav').toggleClass('navbar-dark navbar-light');
      $('nav').toggleClass('bg-dark bg-light');
      $('body').toggleClass('bg-dark bg-light');
    });

    </script>
  </div>
</body>

</html>