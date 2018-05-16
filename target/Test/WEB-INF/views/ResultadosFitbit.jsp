<%-- 
    Document   : ResultadosFitbit
    Created on : 22-abr-2018, 1:23:33
    Author     : Francisco
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <head>
                <title>Resultados Fitbit</title>

                <script type="text/javascript">      
         

                    $(document).ready(function() {
                    $('#btnSalirID').click(function() {
                    $.ajax({
                        type: 'POST',
                        url: '${pageContext.request.contextPath}/verPaciente',
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });
                    });
                </script>
            </head>

            <body>
                <div class="container ">
                    <h1 class="well centerData">Resultados Fitbit-zip del paciente</h1>
                    <div id="graficaFitbit" class="centerData">
                      <img src="<c:url value='/' />css/fitbit-graph.png">

                    </div>
                    <div>
                        <div class="row centerData">
                            <form method="post" action="https://www.fitbit.com/oauth2/authorize?response_type=token&client_id=22CSMG&redirect_uri=http://localhost:8080/TercerApp/fitbit?userId=&scope=activity%20heartrate%20location%20nutrition%20profile%20settings%20sleep%20social%20weight&expires_in=604800" enctype="multipart/form-data">
                            
                                <input type="submit" value="Ir a Fitbit" class="btn btn-success" />
                            </form>
                            
                            <form method="post" action="salirSinGuardar">
                                <input type="submit" value="Salir sin guardar" class="btn btn-primary top-buffer" />
                            </form>
                                              
                        </div>
                    </div>
                </div>
            
            <script src="auth0info.js"></script>
            </body>