<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">

    <link rel="stylesheet" href="../css/comprarTicket.css">


    <title>Document</title>
</head>

<body>

    <!--INICION NAVBAR -->
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
            <!--div class="container-fluid row margenHeader "-->
            <div class="container-fluid row margenHeader">
                <div class="col-3 ">
                    <!-- para poder separar agregue  divs  y asi alinear s-->
                    <a class="navbar-brand " href="../index.html">
                        <img src="../imagenes/codoacodo.png" alt="Logo" width="120" height="42" class="d-inline-block ">
                        Conf Bs As
                    </a>
                </div>
                <div class="col-9 ">

                    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                        <div class="navbar-nav">
                            <a class="nav-link active" aria-current="page" href="#">La conferencia</a>
                            <a class="nav-link" href="#">Los oradores</a>
                            <a class="nav-link" href="#">El lugar y la fecha</a>
                            <a class="nav-link" href="#">Convi&eacute;rtete en orador</a>
                            <a class="nav-link" id="verde" href="#">Comprar tickets</a>

                            <a class="nav-link" href="../pages/login.jsp">Iniciar sesi&oacute;n</a>
                            <a class="nav-link" href="../pages/register.jsp">Registrarse</a>

                            <div class="nav-link" id="nombreUsuarioId" Style="color: red">
                                visitante
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </header>
    <!--FIN  NAVBAR -->



    <div class="container">

        <!--div class="row">
            <div class="col-sm-4">
                <div class="card" id="tarjeta_1">
                    <div class="card-body">
                        <h5 class="card-title fw-bold">Estudiante</h5>
                        <p class="card-text">Tiene un descuento</p>
                        <p class="card-text">80%</p>
                        <p class="card-text"><small class="text-muted">* Presentar documentación</small></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card" id="tarjeta_2">
                    <div class="card-body">
                        <h5 class="card-title fw-bold">Trainee</h5>
                        <p class="card-text">Tiene un descuento</p>
                        <p class="card-text">50%</p>
                        <p class="card-text"><small class="text-muted">* Presentar documentación</small></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card" id="tarjeta_3">
                    <div class="card-body">
                        <h5 class="card-title fw-bold">Junior</h5>
                        <p class="card-text">Tiene un descuento</p>
                        <p class="card-text">15%</p>
                        <p class="card-text"><small class="text-muted">* Presentar documentación</small></p>
                    </div>
                </div>
            </div>
        </div-->

        <div id="tarjetas" class="d-flex justify-content-around ">

        </div>

        <div id="contenedorVenta">
            VENTA

        </div>


        <div id="contenedorValorVenta">
            VALOR DE TICKET $200
        </div>


        <form>
            <div class="row">
                <div class="col">
                    <input type="text" class="form-control" placeholder="Nombre" name="nombre" id="nombre">
                </div>
                <div class="col">
                    <input type="text" class="form-control" placeholder="Apellido" name="apellido" id="apellido">
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <input type="text" class="form-control" placeholder="Correo" name="email" id="email">
                </div>
            </div>

            <div class="row">
                <div class="col">
                    Cantidad
                </div>
                <div class="col">
                    Categoria
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <input type="text" class="form-control" placeholder="cantidad" name="cantidad" id="cantidad">
                </div>
                <div class="col">
                    <div id="comboCategoria">
                        <!--select class="form-select" aria-label="Default select example" id="categoriaId">
                        <option selected>Seleccione la categoria</option>
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                    </select-->
                    </div>
                </div>
            </div>


            <div id="contenedorCosto">
                <p>
                    Total a pagar: $ <span id="resultadoId"> </span>
                </p>

            </div>

            <div class="row ">
                <div class="col">
                    <button type="submit" class="btn boton" id="borrarId">Borrar</button>
                </div>
                <div class="col">
                    <button type="submit" class="btn  boton" id="resumenId">Resumen</button>
                </div>
            </div>

        </form>

    </div>
    <!--script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"
        integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN"
        crossorigin="anonymous"></script-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js"
        integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>

    <script src="../js/comprarTicket.js"></script>

    <footer>

        <!--div class=" wrapFooter ">
            <ul class="list-unstyled d-flex ">
                <li class="wrapContenidoFooter"> Contáctanos </li>
                <li class="wrapContenidoFooter"> Prensa </li>
                <li class="wrapContenidoFooter">Conferencias </li>
                <li class="wrapContenidoFooter"> Términos y<br> condiciones </li>
                <li class="wrapContenidoFooter">Privacidad </li>
                <li class="wrapContenidoFooter"> Estudiantes</li>
            </ul>
            <div>

            </div>


        </div-->
        <%@include file="footer.jsp" %>

    </footer>


</body>

</html>