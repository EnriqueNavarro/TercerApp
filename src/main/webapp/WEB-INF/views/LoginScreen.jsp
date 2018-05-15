
<%-- 
    Document   : LoginScreen
    Created on : 19-abr-2018, 10:11:54
    Author     : Francisco
--%>


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Login</title>

        <!-- Bootstrap core CSS -->
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
        
        <!-- Custom fonts for this template-->
        <link rel="stylesheet" href="<c:url value='/' />css/adminHome/font-awesome.min.css" type="text/css">
        <!-- Custom styles for this template-->
        <link rel="stylesheet" href="<c:url value='/' />css/adminHome/sb-admin.css">

        <!-- Bootstrap core JavaScript-->
       <script src="<c:url value='/' />js/jquery.min.js" ></script>
       <script src="<c:url value='/' />js/bootstrap.bundle.min.js" ></script>
       <!-- Core plugin JavaScript-->
       <script src="<c:url value='/' />js/jquery.easing.min.js" ></script>

        <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Roboto" rel="stylesheet">
        <!-- Custom styles for this template -->
        <!--<link rel="stylesheet" href="<c:url value='/' />css/registerStyle.css">-->
             <script>
                $(document).ready(function() {    

    
                                var path = "<c:url value='/' />submitLogin";
                                console.log(path);
                                $('#path1').val(path);
                                $('#form1').attr('action', path);

                      
                            });
        
    </script>
            
    </head>
    <body class="bg-dark">        
    <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Login</div>
      <div class="card-body">
        <form id="form1" method="post" action="submitLogin">
          <div class="form-group">
            <label>Email address</label>
            <input class="form-control" id="exampleInputEmail1" type="email" aria-describedby="emailHelp" placeholder="Enter email" name="mail" required>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input class="form-control" id="exampleInputPassword1" type="password" placeholder="Password" name="password" required>
          </div>
            <input id="submitB" type="submit"  value="Login" class="btn btn-primary btn-block center"/>
        </form>
      </div>
    </div>
  </div>
    </body>
</html>
