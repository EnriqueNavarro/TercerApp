<%-- 
    Document   : EliminarPaciente
    Created on : 22-abr-2018, 22:21:23
    Author     : Francisco
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

            <html>

            <head>
                <title>Eliminar Pacientes</title>

                <script type="text/javascript">
                    $(document).ready(function() {

                    });
                </script>
            </head>

            <body>
                <div class="container ">
                    <h1 class="well centerData">Eliminar Pacientes</h1>
                    <div class="" id="">
                        <div class="row centerData">
                            <form role="form" id="formR" method="post" action="<c:url value='/' />pacienteEliminado">
                                    <div class="row">
                                        <div class="one-third column ">
                                        </div>
                                        <div class="one-third column ">
                                           <label>Id</label>
                                           <input type="text" placeholder="id" class="form-control" id="pacienteID" name="pacienteId" required>
                                        </div>
                                        <div class="one-third column ">
                                        </div>
                                    </div>
                                <div id="submitID">
                                <input type="submit" value="Eliminar" id="" class="btn btn-primary">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </body>

            </html>