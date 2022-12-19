<%@ page import="ar.com.cac.modelo.Usuario" %>
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

<link rel="stylesheet" href="../css/estilos.css">
 <% 
 // SessionManager sessionManager = SessionManager.getInstance(request); 
 HttpSession sesion = request.getSession(true);
Usuario usuarioActual = (Usuario) sesion.getAttribute("usuarioActual");  //request.getAttribute("usuarioActual"); 
String nombreYApellido= "Visitante";
if(usuarioActual != null){
 nombreYApellido = usuarioActual.getNombre() + " "+ usuarioActual.getApellido();
}

System.out.println(nombreYApellido); 
   %>
    <title>Incio de sesiÃ³n</title>
</head>
<body>


   <!--INICION NAVBAR -->
   <header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
        <!--div class="container-fluid row margenHeader "-->
        <div class="container-fluid row margenHeader">
            <div class="col-4 ">
                <!-- para poder separar agregue  divs  y asi alinear s-->
                <a class="navbar-brand " href="#">
                    <img src="../imagenes/codoacodo.png" alt="Logo" width="120" height="42"
                        class="d-inline-block ">
                    Conf Bs As
                </a>
            </div>
            <div class="col-8 ">

                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-link active" aria-current="page" href="#">La conferencia</a>
                        <a class="nav-link" href="#">Los oradores</a>
                        <a class="nav-link" href="#">El lugar y la fecha</a>
                        <a class="nav-link" href="#">Convi&eacute;rtete en orador</a>
                        <a class="nav-link" id="verde" href="../pages/comprarTickets.jsp">Comprar tickets</a>

                        <a class="nav-link"  href="../pages/login.jsp">Iniciar sesi&oacute;n</a>
                        <a class="nav-link"  href="../pages/register.jsp">Registrarse</a>

                        <div  class="nav-link"  id ="nombreUsuarioId" Style="color: red">
                            <%=nombreYApellido %> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</header>
<!--FIN  NAVBAR -->

    <main class="container" style="margin-top: 3%;">
        <!-- FORMULARIO -->
        <form  id="formularioLogin"  method="post"  action="../ServletLogin" >
        <!--form  id="formularioLogin"  method="post"  action="/UsuarioLogin" -->
            <div class="mb-3">
              <label for="email" class="form-label ">Correo electr&oacute;nico: </label>
              <input type="email"  name="email"  class="form-control" id="email"  >
              <div id="emailHelp" class="form-text">No comparta su email con nadie.</div>
              <p class="text-danger mb-2 d-none" id="errorEmail"></p>
            </div>
            <div class="mb-3">
              <label for="pass" class="form-label ">Contraseña: </label>
              <input type="password"  name="password"   class="form-control" id="pass"  >
              <div id="emailHelp" class="form-text">y mucho menos comparta su contraseña.</div>
              <p class="text-danger mb-2 d-none" id="errorPass"></p>
            </div>
            <!--div class="mb-3 form-check">
              <input type="checkbox" class="form-check-input" id="check">
              <label class="form-check-label text-white" for="check">Check me out</label>
            </div-->
            <button type="submit" class="btn btn-primary"  id="iniciasSesion">Iniciar sesi&oacute;n</button>
        </form>
        
        <div class="alert alert-success mt-2 d-none" id="alertSuccess" onclick="window.location.href ='../index.html'">

        </div>
     
    </main>
    <footer>

        <!--div class=" wrapFooter ">
            <ul class="list-unstyled d-flex ">
                <li class="wrapContenidoFooter"> ContÃ¡ctanos </li>
                <li class="wrapContenidoFooter"> Prensa </li>
                <li class="wrapContenidoFooter">Conferencias </li>
                <li class="wrapContenidoFooter"> TÃ©rminos y<br> condiciones </li>
                <li class="wrapContenidoFooter">Privacidad </li>
                <li class="wrapContenidoFooter"> Estudiantes</li>
            </ul>
            <div>

            </div>


        </div-->
<%@include file="footer.jsp" %>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"
        integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js"
        integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
    
</body>
<!--script src="../js/login.js"></script-->
</html>