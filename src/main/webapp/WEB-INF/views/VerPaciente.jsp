<%-- 
    Document   : VerPaciente
    Created on : 21-abr-2018, 21:05:47
    Author     : Francisco
--%>

<head>
                <title>Ver Paciente</title>

                <script type="text/javascript">
                    
                    function openResultadosFitbit(){
                        window.open('${pageContext.request.contextPath}/ResultadosFitbit')
                    }
                    
                    $(document).ready(function() {
                        
                    $('#resultadosFitbitID').click(function() {
                    $.ajax({
                        type: 'POST',
                        url: '${pageContext.request.contextPath}/ResultadosFitbit',
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });
                    $('#evaluacionNutricionalID').click(function() {
                    $.ajax({
                        type: 'POST',
                        url: '${pageContext.request.contextPath}/EvaluacionNutricional',
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });            
                    $('#evaluacionGeriatricaID').click(function() {
                    $.ajax({
                        type: 'POST',
                        url: '${pageContext.request.contextPath}/EvaluacionGeriatrica',
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });
                    $('#valoracionGerontologicaID').click(function() {
                    $.ajax({
                        type: 'POST',
                        url: '${pageContext.request.contextPath}/ValoracionGerontologica',
                                        success: function(result) {
                                            $('#infoScreen').html(result);
                                            

                                        }
                                    });
                                });
                    });
                </script>
            </head>

            <body>
                <div class="container centerData">
                    <h1 class="well">Datos generales del paciente</h1>
                    <div class="" id="">
                        <div class="row">
                            <form role="form" id="formR" method="post" action="usuarioModificado">
                                    <div class="row">
                                        <div class="col-5">
                                          <label>Nombre completo</label>
                                            <input type="text" placeholder="nombre_aPaterno_aMaterno" class="form-control" id="nombreCompletoID" name="nombreCompleto" required>
                                        </div>
                                        <div class="col-5">
                                           <label>Correo Electrónico</label>
                                           <input type="text" placeholder="Email" class="form-control" id="emailID" name="email" required>
                                        </div>
                                             <div class="col-5 top-buffer">
                                          <label>Edad</label>
                                            <input type="text" placeholder="Edad" class="form-control" id="edadID" name="edad" required>
                                        </div>
                                    </div>
                                    <div class="row top-buffer">
                                   
                                        <div class="col-5">
                                           <label>Co-habitación</label>
                                           <input type="number" placeholder="Cohabitacion" class="form-control" id="cohabitacionID" name="cohabitacion" required>
                                        </div>
                                            <div class="col-5">
                                          <label>Escolaridad máxima alcanzada</label>
                                            <input type="text" placeholder="Escolaridad" class="form-control" id="escolaridadID" name="escolaridad" required>
                                        </div>
                                        <div class="col-5 top-buffer">
                                           <label>Afiliación Médica</label>
                                           <input type="text" placeholder="Afiliacion" class="form-control" id="afilID" name="afiliacion" required>
                                        </div>
                                    </div>
                                    <div class="row top-buffer">
                                       <div class="col-5">
                                          <label>Estado Civil</label>
                                            <input type="text" placeholder="Estado Civil" class="form-control" id="edoCivilID" name="estadoCivil" required>
                                        </div>
                                        <div class="col-5">
                                           <label>Escala AMAI</label>
                                           <input type="text" placeholder="escalaAMAI" class="form-control" id="escalaAMAID" name="escalaAMAI" required>
                                        </div>
                                          <div class="col-5 top-buffer">
                                          <label>Autoreporte de padecimientos</label>
                                            <input type="text" placeholder="autoreporte" class="form-control" id="autoreporteID" name="autoreporte" required>
                                        </div>
                                    </div>
                                
                                    <div class="row top-buffer">
                                        <div class="col-5">
                                           <label>Fecha de evaluación</label>
                                           <input type="text" placeholder="dd/mm/yyyy" class="form-control" id="fechaEvalID" name="fechaEvaluacion" required>
                                        </div>
                                        
                                     <div class="creationInfo">
                                            <p>Creación de paciente:</p>
                                            <p>Última modificación del paciente:</p>
                                        </div>
                                    </div>
                                
                               
                                
                                           
                                <div class="top-buffer">
                                    <input type="button" value="Valoración geriatrica" onclick="" id="evaluacionGeriatricaID" class="btn btn-info">
                                </div>
                                <div class="top-buffer">
                                    <input type="button" value="Valoración fitbit"  id="resultadosFitbitID" class="btn btn-success">
                                </div>
                                <div class="top-buffer">
                                    <input type="button" value="Valoración nutricional"  id="evaluacionNutricionalID" class="btn btn-success">
                                </div>
                               <div class="top-buffer">
                                    <input type="button" value="Valoración gerontológica" id="valoracionGerontologicaID" class="btn btn-primary">
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </body>