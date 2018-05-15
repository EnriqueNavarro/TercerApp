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
                            <form method="post" action="archivoUpload" enctype="multipart/form-data">
                            <input type="file" name="archivoFitbit" value="Archivo" size="50" />
                            <input type="submit" value="Guardar" class="btn btn-success" />
                            </form>
                            <input type="button" value="Salir" onclick="return confirm('¿Seguro que quiere salir? Su progreso se perderá')" id="btnSalirID" class="btn btn-primary">
                                              
                        </div>
                    </div>
                </div>
            </body>