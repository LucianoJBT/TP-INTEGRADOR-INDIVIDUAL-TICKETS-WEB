<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="ServletTest">
		<input type="text" name="username" placeholder="Ingrese nombre de usuario">
		<br>
		<input type="email" name="email" placeholder="Ingrese su email"><br>
		<input type="password" name="password" placeholder="Ingrese una contraseña"><br>
		<input type="tel" name="tel" placeholder="Ingrese su teléfono"><br>
		<input type="submit" value="Enviar">
	</form>
	
	    <main class="container" style="margin-top: 3%;">
       
        <form  id="formularioLogin"  method="post"  action="ServletTest" >
            <div class="mb-3">
              <label for="email" class="form-label ">Correo electr&oacute;nico: </label>
              <input type="email"  name="email"   class="form-control" id="email"  >
              <div id="emailHelp" class="form-text">No comparta su email con nadie.</div>
              <p class="text-danger mb-2 d-none" id="errorEmail"></p>
            </div>
            <div class="mb-3">
              <label for="pass" class="form-label ">Contraseña: </label>
              <input type="password"  name="password"   class="form-control" id="pass"  >
              <div id="emailHelp" class="form-text">y mucho menos comparta su contraseña.</div>
              <p class="text-danger mb-2 d-none" id="errorPass"></p>
            </div>
            <button type="submit" class="btn btn-primary"  id="iniciasSesion">Iniciar sesi&oacute;n</button>
        </form>
        
        <div class="alert alert-success mt-2 d-none" id="alertSuccess" onclick="window.location.href ='../index.html'">

        </div>
     
    </main>
</body>
</html>