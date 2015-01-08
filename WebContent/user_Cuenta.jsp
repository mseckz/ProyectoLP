<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<c:import url="head.jsp" />
<body>
<header>
	<c:import url="header.jsp" />
	<c:import url="menuUser.jsp" />
</header>
<div class="container">
	<div class="padded">
        <div class="row">
          	<div class="three fifths bounceInRight animated">
            	<h1 class="zero museo-slab">MODULO DE ADMINISTRACION DE CUENTA DE USUARIO SASUKI</h1>
            	<p class="quicksand"></p>
            	<p class="quicksand"> </p>
          	</div>
          	
        </div>
    </div>
    <hr>
<div class="pad-top pad-left pad-right bounceInRight animated">
	<h4 class="zero">Administracion de cuenta</h4>
        <p></p>
</div>
<article class="row bounceInUp animated">
	<section class="one">
    	<div class="row">
            <div class="two-up-small-tablet one-up-mobile">
              	<a href="user_CambioInfo.jsp" class="gap-right" >Modificar informacion de contacto</i></a>
            </div>
            <div class="two-up-small-tablet one-up-mobile">  	
              	<a href="user_CambioPassword.jsp" class="gap-right" >Cambio de Contraseña</i></a>
            </div>
            <div class="two-up-small-tablet one-up-mobile">   	
              	<a href="" class="gap-right" >Opciones de Pago</i></a>
            </div>   	
            
        </div>
    </section>
    
</article>
<script src="js/jquery-1.11.1.js"></script>
<script src="js/bootstrap.min.js"></script>
</div>
<hr>
<c:import url="footer.jsp" />
</body>
</html>