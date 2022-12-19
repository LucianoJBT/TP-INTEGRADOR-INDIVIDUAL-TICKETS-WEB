<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

    <link rel="stylesheet" href="./css/estilos.css">
    <style>
       
    </style>
    <title>Document</title>
</head>

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


<body>

    <!--INICION NAVBAR -->
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
               <!--div class="container-fluid row margenHeader "-->
            <div class="container-fluid row margenHeader">
                <div class="col-3 ">
                   <!-- para poder separar agregue  divs  y asi alinear s-->
                    <a class="navbar-brand " href="#">
                        <img src="./imagenes/codoacodo.png" alt="Logo" width="120" height="42"
                            class="d-inline-block ">
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
                            <a class="nav-link" id="verde" href="./pages/comprarTickets.jsp">Comprar tickets</a>

                            <a class="nav-link"  href="./pages/login.jsp">Iniciar sesi&oacute;n</a>
                            <a class="nav-link"  href="./pages/register.jsp">Registrarse</a>
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


    <!--INICION seccion 1 -->

    <!--FIN  seccion 1 -->


    <div class="wrap">
        <div class="wrap-texto">
            <div>
                <h3> CONF BS AS</h3>
            </div>
            <div>
                <p>
                    Bs As llega por primera vez a la Argentina. Un evento para compartir con <br>
                    nuestra comunidad el conocimiento y experiencia de los expertos que <br>
                    están creando el futuro del internet.Ven a conocer a miembros del <br>
                    evento, a otros estudiantes de Codo a Codo y los oradores del primer <br>
                    nivel que tenemos para tí. Te Esperamos!
                </p>
            </div>
            <button type="button" class="btn botonTransparente ">Quiero ser Orador</button>
            <button type="button" class="btn btn-success" onclick="location.href='./pages/comprarTickets.html'"> Comprar Tickets</button>
            <div>

            </div>


        </div>
    </div>


    <div class="container ">
        <div style="text-align: center;">CONOCE A LOS </div>
        <div style="text-align: center;">
            <H3>ORADORES</H3>
        </div>
     </div> 

    <!--/div class="container"-->
    <div class="card-group" style="margin-left:15% ; margin-right: 15%;">
        <div class="card" style="margin-left:15px ; margin-right: 15px;">
            <img src="./imagenes/steve.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <button type="button" class="btn btn-warning btn-sm"><b>JavaScript</b></button>
                <button type="button" class="btn btn-info btn-sm"><b>React</b></button>
                <h5 class="card-title fw-bold">Steve Jobs</h5>
                <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim, consectetur quod.
                    Labore debitis reiciendis ipsam ad sapiente aperiam maiores cupiditate! Alias, sequi? Alias non
                    ratione eum culpa similique placeat sed!</p>
                <!--p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p-->
            </div>
        </div>
        <div class="card" style="margin-left:15px ; margin-right: 15px;">
            <img src="./imagenes/bill.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <button type="button" class="btn btn-warning btn-sm"><b>JavaScript</b></button>
                <button type="button" class="btn btn-info btn-sm"><b>React</b></button>
                <h5 class="card-title fw-bold">Bill Gates</h5>
                <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim, consectetur quod.
                    Labore debitis reiciendis ipsam ad sapiente aperiam maiores cupiditate! Alias, sequi? Alias non
                    ratione eum culpa similique placeat sed!</p>
            </div>
        </div>
        <div class="card" style="margin-left:15px ; margin-right: 15px;">
            <img src="./imagenes/ada.jpeg" class="card-img-top" alt="...">
            <div class="card-body">
                <button type="button" class="btn btn-danger btn-sm"><b>JavaScript</b></button>
                <button type="button" class="btn btn-secondary btn-sm"><b>React</b></button>
                <h5 class="card-title fw-bold">Ada Lovelace</h5>
                <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim, consectetur quod.
                    Labore debitis reiciendis ipsam ad sapiente aperiam maiores cupiditate! Alias, sequi? Alias non
                    ratione eum culpa similique placeat sed!</p>
            </div>
        </div>
    </div>

    <!--/div-->

    <div class="container2">
        <div class="row">
            <div class="col-6 ">
                <img src="./imagenes/honolulu.jpg" style="width: 100%; " alt="">
            </div>
            <div class="col-6  backgroundBsAs  ">
                <div class="textoBsAs">
                    <h2>Bs As - Octubre</h2>
                    <p>Buenos Aires es la provincia y localidad mas grande del estado de Argentina, en los Estados
                        Unidos, Honolulu es la mas sureña de entre las principales ciudades estadounidenses. Aunque el
                        nombre de Honolulu se refiere al area urbana en la costa sureste de la isla de Oahu, la ciudad y
                        el condado de Honolulu han formado una ciudad-condado consolidada que cubre toda la ciudad
                        (aproximadamente 600km2 de superficie).</p>
                    <button type="button" class="btn btn-outline-secondary botonTransparente">Conocé mas</button>
                </div>
            </div>
        </div>
    </div>
    </div>


    <div class="container4 ">
        <div style="text-align: center;">CONVERTITE EN UN  </div>
        <div style="text-align: center;">
            <H3>ORADOR</H3>
            <p> Anótate como orador para dar una <decoracion class="estiloSubrayado">charla ignite</decoracion>. Cuéntanos de que quieras hablar!</p>
        </div>
        <div class=" mb-3 row">
            <div class="col" >
                <input type="text" class="form-control" placeholder="Nombre" aria-label="First name">
            </div>
            <div class="col">
              <input type="text" class="form-control" placeholder="Apellido" aria-label="Last name">
            </div>


        </div>
        <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label"></label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Sobre que quieres hablar?"></textarea>
           <p class="color">Recuerda incluir un titulo para tu charla</p>
           <div class="d-grid gap-2">
            <button class="btn btn-success" type="button">Enviar</button>
          </div>
          </div>
    </div>


    <footer>

        <!--div class=" wrapFooter ">
            <ul class="list-unstyled d-flex ">
                <li class="wrapContenidoFooter"> Contáctanos </li>
                <li class="wrapContenidoFooter"> Prensa </li>
                <li class="wrapContenidoFooter"> Conferencias </li>
                <li class="wrapContenidoFooter"> Términos y<br> condiciones </li>
                <li class="wrapContenidoFooter"> Privacidad </li>
                <li class="wrapContenidoFooter"> Estudiantes</li>
            </ul>
            <div>

            </div>


        </div-->

<%@include file="./pages/footer.jsp" %>

    </footer>



    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"
        integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js"
        integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
<!--script src="./js/script.js"></script-->
</html>



