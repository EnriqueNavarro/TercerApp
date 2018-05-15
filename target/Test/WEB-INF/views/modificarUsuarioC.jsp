<%-- 
    Document   : modificarUsuarioC
    Created on : 04-may-2018, 15:43:26
    Author     : Francisco
--%>


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <head>

        <title>Admin usuarios</title>
 <script>
                $(document).ready(function() {    

                    
                                
                    /*$('#modificarUsuarioCID').click(function() {
                    $.ajax({
                        type: 'POST',
                        url: '${pageContext.request.contextPath}/modificarUsuario',
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            
                                        }
                                    });
                                });*/
    
                                var path = "<c:url value='/' />modificarUsuario";
                                console.log(path);
                                $('#path1').val(path);
                                $('#form1').attr('action', path);

                        /*        
                     $('#btnSubmit').click(function() {
                     //var selectOption = $( "#selectForm" ).val();
                    $.ajax({
                        type: 'GET',
                        url: '${pageContext.request.contextPath}/modificarUsuarioParam?usuario='+selectOption,
                                        success: function(result) {
                                            //console.log("Contenido:" + selectOption);
                                            $('#mostratUsuarioScreen').html(result);
                                        }
                                    });
                                });
                            });                                
                  */
                            });
        
    </script>
                
        </head>
            
        <body>
            <div class="centerData">
                <h1 class="well">Busca un usuario</h1>
                <c:url var="modUrl" value="modificarUsuario"/>
                <form:form method="POST" commandName="Usuario" action="modificarUsuario" id="form1">
		<table>
			<tr>
				<td>Selecciona:</td>
                                <td><form:select path="nombre" name="usuario" id="selectForm" >
					  <form:option value="usuario"  label="..." />
                                          <form:options items="${Usuarios}"/>
				       </form:select>
                                </td>
			</tr>
			<tr>
                            <td><input type="submit" name="submit" value="Modificar" id="modificarUsuarioCID"></td>
			</tr>
			<tr>
		</table>
                <button type="button" class="btn btn-info" value="Modificar" id="btnSubmit">
	</form:form>
            </div>
                <div id="mostratUsuarioScreen">
                    
                    
                </div>
        </body>
        </html>

