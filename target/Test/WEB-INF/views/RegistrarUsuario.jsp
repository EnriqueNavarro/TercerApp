<%-- 
    Document   : RegistrarUsuario
    Created on : 19-abr-2018, 10:34:08
    Author     : Francisco
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <html>

            <head>
                <title>Registrar Usuarios</title>

                <script type="text/javascript">
                    $(document).ready(function() {

                    });
                </script>
            </head>

            <body>
                <div class="container ">
                    <h1 class="well centerData">Ingresa los datos del usuario</h1>
                    <div class="" id="">
                        <div class="row centerData">
                            <form role="form" id="formR" method="post" action="<c:url value='/' />usuarioAgregado">
                                    <div class="row">
                                        <div class="one-third column ">
                                          <label>Nombre</label>
                                            <input type="text" placeholder="Nombre" class="form-control" id="nombreID" name="nombre" required>
                                        </div>
                                        <div class="one-third column ">
                                           <label>Apellido Paterno</label>
                                           <input type="text" placeholder="Apellido Paterno" class="form-control" id="aPaternoID" name="aPaterno" required>
                                        </div>
                                        <div class="one-third column ">
                                          <label>Apellido Materno</label>
                                            <input type="text" placeholder="Apellido Materno" class="form-control" id="aMaternoID" name="aMaterno" required>
                                        </div>
                                    </div>
                                <div id="submitID">
                                <input type="submit" value="Registrar" id="" class="btn btn-info">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </body>

            </html>