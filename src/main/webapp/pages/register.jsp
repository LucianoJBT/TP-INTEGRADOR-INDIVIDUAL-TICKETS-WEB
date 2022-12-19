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

    <title>Incio de sesi&oacute;n</title>
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
        <form  id="formularioRegister">
            
        </form>
     
        <main class="container" style="margin-top: 2%;">
            <!-- FORMULARIO -->
            <!-- form class="row g-3 needs-validation" id="formularioRegistro" novalidate-->
            <form  id="formularioRegistro" class="row g-3 needs-validation"  novalidate  method="post"  action="../ServletRegister" >
                      
                <div class="col-md-6">
                  <label for="validationNombre" class="form-label">Nombre: </label>
                  <input type="text" class="form-control" name="nombre" id="validationNombre" required>
                  <div class="valid-feedback">
                    Perfecto!
                  </div>
                  <div class="invalid-feedback">
                    Por favor ingrese su nombre.
                  </div>
                </div>
                <div class="col-md-6">
                  <label for="validationApellido" class="form-label ">Apellido: </label>
                  <input type="text" class="form-control"  name="apellido" id="validationApellido" required>
                  <div class="valid-feedback">
                    Perfecto!
                  </div>
                  <div class="invalid-feedback">
                    Por favor ingrese su apellido.
                  </div>
                </div>
                <!--div class="col-md-4">
                  <label for="validationCustomUsername" class="form-label ">Username</label>
                  <div class="input-group has-validation">
                    <input type="text" class="form-control" id="validationCustomUsername" aria-describedby="inputGroupPrepend" required>
                    <div class="invalid-feedback">
                      Please choose a new username.
                    </div>
                  </div>
                </div-->
    
                <div class="col-md-6">
                    <label for="validationCustomEmail" class="form-label ">Email: </label>
                    <div class="input-group has-validation">
                      <span class="input-group-text" id="inputGroupPrepend">@</span>
                      <input type="email" class="form-control" name="email" id="validationCustomEmail" required>
                      <div class="invalid-feedback">
                        Por favor ingrese su email.
                      </div>
                    </div>
                </div>
    
                <div class="col-md-6">
                    <label for="validationCustomPassword" class="form-label ">Contraseña</label>
                    <div class="input-group has-validation">
                      <input type="password" class="form-control" name="contrasenia" id="validationCustomPassword" required>
                      <div class="invalid-feedback">
                        Por favor ingrese su Contraseña.
                      </div>
                    </div>
                </div>
               
    
                <div class="col-md-6">
                  <label for="validationCiudad" class="form-label ">Ciudad:</label>
                  <input type="text" class="form-control" name="ciudad" id="validationCiudad" required>
                  <div class="invalid-feedback">
                    Por favor ingrese su ciudad.
                  </div>
                </div>
                <div class="col-md-6">
                    <label for="validationDireccion" class="form-label ">Direcci&oacute;n:</label>
                    <input type="text" class="form-control" name="direccion" id="validationDireccion" required>
                    <div class="invalid-feedback">
                      Por favor ingrese su direcci&oacute;n.
                    </div>
                  </div>
                <!--div class="col-md-3">
                  <label for="validationCustom04" class="form-label ">State</label>
                  <select class="form-select" id="validationCustom04" required>
                    <option selected disabled value="">Choose your Marital Status</option>
                    <option>Single</option>
                    <option>Married</option>
                    <option>Divorcee</option>
                    <option>Widow</option>
                  </select>
                  <div class="invalid-feedback">
                    Please select a valid state.
                  </div>
                </div-->
                <div class="col-md-6">
                  <label for="validationTelefono" class="form-label ">Tel&eacute;fono:</label>
                  <input type="text" class="form-control"  name="telefono"id="validationTelefono" required>
                  <div class="invalid-feedback">
                    Por favor ingrese su tel&eacute;fono.
                  </div>
                </div>
                <div class="col-md-6">

                </div>




               <div class="col-12">
                  <button class="btn btn-primary" type="submit" id="botonRegistrar">Registrar</button>
                </div>
              </form>
    
        </main>


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
<script src="../js/register.js"></script>
</html>