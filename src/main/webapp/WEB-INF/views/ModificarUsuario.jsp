<%-- 
    Document   : ModificarUsuario
    Created on : 21-abr-2018, 17:25:08
    Author     : Francisco
--%>
<html>

            <head>
                <title>Modificar Usuario</title>

            </head>

            <body>
                <div class="container centerData">
                    <h1 class="well">Modifica al usuario con id</h1>
                    <div class="" id="">
                        <div class="row">
                            <form role="form" id="formR" method="post" action="usuarioModificado">
                                    <div class="row">
                                        <div class="col-4">
                                          <label>Usuario:</label>
                                          <input type="text" placeholder="id" class="form-control" id="usuarioID" name="usuarioid" value="<%= request.getParameter("nombre") %>">
                                        </div>
                                                          
                                        <div class="creationInfo">
                                            ID:<input type="number" placeholder="id" class="form-control" id="id" name="id" value="${usuario.getId()}">
                                            <p>Usuario creado:  ${usuario.getCreacion()}   Ultima modificación: ${usuario.getLastUpdated()}</p>
                                        </div>
                                    </div>
                                    <div class="row top-buffer">
                                        <div class="col-4">
                                          <label>Nombre</label>
                                          <input type="text" placeholder="Nombre" class="form-control" id="nombreID" name="nombre" value="${usuario.getNombre()}">
                                        </div>
                                        <div class="col-4">
                                          <label>Apellido Paterno</label>
                                            <input type="text" placeholder="Apellido Paterno" class="form-control" id="aPaternoID" name="aPaterno" value="${usuario.getApellidoPaterno()}">
                                        </div>
                                        <div class="col-4">
                                          <label>Apellido Materno</label>
                                          <input type="text" placeholder="Apellido Materno" class="form-control" id="aMaternoID" name="aMaterno" value="${usuario.getApellidoMaterno()}">
                                        </div>
                                        
                                    </div>
                                    <div class="row top-buffer">
                                        <div class="col-4">
                                          <label>Contraseña</label>
                                          <input type="password" placeholder="Contraseña" class="form-control" id="passwordID" name="password" >
                                        </div>
                                        <div class="col-4">
                                           <label>Domicilio</label>
                                           <input type="text" placeholder="Domicilio" class="form-control" id="domicilioID" name="domicilio" value="${usuario.getDomicilio()}">
                                        </div>
                                        <div class="col-4">
                                           <label>Teléfono</label>
                                           <input type="text" placeholder="Tel." class="form-control" id="telefonoID" name="telefono" value="${usuario.getTelefono()}">
                                        </div>
                                        
                                    </div>
                                    <div class="row top-buffer">
                                        <div class="col-4">
                                          <label>Estado</label>
                                          <select id="estadoID" name="estado" class="form-control">
                                              <option value="0" selected>Activo</option>
                                              <option value="1">Inactivo</option>
                                            </select>
                                        </div>
                                        <div class="col-4">
                                           <label>Correo Electrónico</label>
                                           <input type="text" placeholder="Correo Electrónico" class="form-control" id="emailID" name="email" ${usuario.getEmail()} >
                                        </div>
                                        <div class="col-4">
                                           <label>Edad</label>
                                           <input type="text" placeholder="Edad" class="form-control" id="edadID" name="edad" value="${usuario.getEdad()}">
                                        </div>
                                          <label>Tipo</label>
                                          <select id="tipoID" name="tipo" class="form-control">
                                              <option value="0" selected>Usuario</option>
                                              <option value="1">Administrador</option>
                                            </select>
                                        </div>
                                    </div>
                                <div id="submitID">
                                <input type="submit" value="Modificar" id="" class="btn btn-info" >
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </body>

            </html>
