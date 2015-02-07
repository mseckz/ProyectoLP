<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<c:import url="head.jsp" />
<body>
<header>
<c:import url="header.jsp" />
</header>
<div class="container">
	<div class="padded">
        <div class="row">
          	<div class="three fifths bounceInRight animated">
            	<h1 class="zero museo-slab">NUESTRA HISTORIA</h1>
            	<p class="quicksand"></p>
            	<p class="quicksand"> </p>
          	</div>
        </div>
    </div>
    <hr>
    <p>
<div>
<img src="images/fb_computers.png" align="left" style="margin-right: 30px">
</div>

Estás aquí porque adoras los juegos. Nuestro objetivo es que tu experiencia sea la mejor. Te puedes unir a Sasuki gratis. 
Es fácil de navegar e intuitivo. Sasuki es más que una tienda. Es un servicio de juegos digital. 
Disponemos de juegos increíbles a los que querrás jugar. Están llenos de características diseñadas para una mayor diversión. 
Gestiona la biblioteca de juegos digital, chatea con tus amigos e incluso transmite tus partidas al mundo mediante el clic de un botón.
Siempre tendrás algo estupendo a lo que jugar en Sasuki. Juegos exclusivos como Battlefield, FIFA, Need for Speed y Titanfall o juegos 
gratuitos para tu colección. 
<div>
<img src="images/quienes_somos.jpg" WIDTH=200 HEIGHT=243 align="right" style="margin-right: 30px">
</div>
<br><br><br>
Las descargas de juegos de Sasuki son súper rápidas. Podrás sacar el máximo partido a la conexión de banda 
ancha, ya sea en casa, en el trabajo o en el punto Wi-Fi de tu cafetería favorita. Garantizar que obtienes los juegos lo más rápido posible 
es nuestra prioridad principal. Adelante: elige el juego de EA que quieras en Sasuki. Si no te encanta, devuélvelo. 
Te cubriremos con la Garantía de Gran Juego. Si tu experiencia de juego se fastidia, estaremos ahí para devolverte al juego.
Convertirse en digital es increíble. Déjanos mostrarte por qué.

<br><br><br><br><br>

<img src="images/los-mejores-juegos-para-pc.jpg" align="left" style="margin-right: 20px">
</p>
<!--  <div class="pad-top pad-left pad-right bounceInRight animated">
	<h4 class="zero">Proximos Lanzamientos</h4>
</div>
-->

<script src="js/jquery-1.11.1.js"></script>
<script src="js/bootstrap.min.js"></script>
</div>
<hr>
<c:import url="footer.jsp" />
</body>
<script>
// Load this when the DOM is ready
$(function(){
  $('#myCarousel').carousel();
});
</script>
</html>
