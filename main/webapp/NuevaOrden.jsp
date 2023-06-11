<!DOCTYPE html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Inventario</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

</head>

<body>

    <div class="container">
        <div class="header clearfix">
            <nav>
                <ul class="nav nav-pills float-right">
                    <li class="nav-item">
                        <a class="nav-link active" href="Medicamentos.jsp"
                            style="float: none; opacity: 1; background-color: rgb(255, 255, 255); width: 128px; color: rgb(82, 94, 169);">Medicamento<span
                                class="sr-only"></span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="NuevaOrden.jsp"
                            style="color: rgb(226, 229, 241); background-color: rgb(82, 94, 169);">Nueva Orden</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Reportes.jsp" style="color: rgb(82, 94, 169);">Reporte por Medicamento</a>
                    </li>
                </ul>
            </nav>
            <h4 class="text-muted"
                style="line-height: 39px; text-align: justify; letter-spacing: 1px; font-weight: 100;"
                contenteditable="true" spellcheckker="false">Inventario</h4>
            <div class="container" style=""></div>
        </div>



        <div class="row marketing">



        </div>



    </div> <!-- /container -->


    <div class="container" style="width: 768px;">
        <div class="m-5">
            <div class="row" style="">
                <div class=" col-sm-2">
                    <h3></h3>
                </div>
                <div class=" col-5 col-sm-8">
                    
                    <h3></h3>
                    <h5 style="float: none;" contenteditable="true" spellcheckker="false">Identificador de producto para
                        generar orden de inventario</h5>
                    <div class="form-group" style=""><label>Identificador</label><input type="text" class="form-control"
                            fdprocessedid="80b8lh"></div>

                    <button type="button" class="btn btn-primary" fdprocessedid="2arkypj"
                        style="text-decoration-line: none; width: 80px; background-color: rgb(57, 71, 162); opacity: 0.7;">Buscar</button>
                </div>
                <div class=" col-sm-2">
                    <h3><br></h3>
                </div>
            </div> 
            <hr style="">
            <h5 style="">Registrar orden de inventario</h5>
            <div class="form-group" style="">
                <div class="form-group" style=""></div>
                <div class="form-group" style="">
                    <div class="row" style="">
                        <div class=" col-sm-6">
                            <div class="form-group" style=""><label>Identificador Producto</label><input type="text"
                                    class="form-control" fdprocessedid="dzszsd">
                                <div class="form-group" style=""><label>Tipo de Orden</label><input type="text"
                                        class="form-control" fdprocessedid="mxzm2">
                                    <div class="form-group" style=""><label>Razón</label><input type="text"
                                            class="form-control" fdprocessedid="8l504l"></div>
                                </div>
                            </div>
                            <h3></h3>
                        </div>
                        <div class=" col-5 col-sm-6">
                            <div class="form-group" style=""><label>Descripción</label><input type="text"
                                    class="form-control" fdprocessedid="18fvuj"></div>
                            <h3></h3>
                            <div class="form-group" style="height: 70px; margin-top: -16px;">
                                <label>Cantidad</label><input type="text" class="form-control" fdprocessedid="fs2h6a">
                            </div><button type="button" class="btn btn-primary" fdprocessedid="ybe65g"
                                style="background-color: rgb(116, 126, 190);">Registrar</button>
                        </div>
                        <div class="col-sm-4"></div>
                    </div>
                    <div class="form-group" style=""></div><label></label>
                </div>
            </div>
        </div>
         <img src="logo.jpg" height="50" width="50" style="border-radius: 10%; top: 20rem; bottom: 20rem; padding-top: 0%; padding-bottom: 2%;"></div>
        <br>
    </div>

</body>

</html>