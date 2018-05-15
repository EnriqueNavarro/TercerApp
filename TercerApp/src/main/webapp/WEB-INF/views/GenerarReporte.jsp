<%-- 
    Document   : GenerarReporte
    Created on : 24-abr-2018, 12:48:36
    Author     : Francisco
--%>

            <html>

            <head>
                <title>Generar Reporte </title>

                <script type="text/javascript">
                    $(document).ready(function() {

                    });
                </script>
            </head>

            <body>
                <div class="container ">
                    <h1 class="well centerData">Generar Reporte</h1>
                    <div class="" id="">
                        <div class="row centerData">
                            <form role="form" id="formR" method="post" action="reporteGenerado">
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
                                <input type="submit" value="Generar Reporte" id="" class="btn btn-primary">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </body>

            </html>