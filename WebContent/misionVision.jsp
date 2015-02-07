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
            	<h1 class="zero museo-slab">NUESTRA MISIÓN</h1>
            	<p class="quicksand"></p>
            	<p class="quicksand"> </p>
          	</div>
        </div>
    </div>
    <hr>
    <p>
<img src="images/mision.png" WIDTH=150 HEIGHT=100 align="left" style="margin-right: 20px">
SASUKI es una empresa peruana que se dedica a la comercialización de licencias de videojuegos; 
que pone a disposición a nuestros clientes productos innovadores y de alta calidad en nuestra página web, 
para satisfacer las necesidades de la manera más eficiente por medio de un recurso humano altamente capacitado.
<br><br><br><br><br><br><br>
</p>
<div class="padded">
        <div class="row">
          	<div class="three fifths bounceInRight animated">
            	<h1 class="zero museo-slab">NUESTRA VISIÓN</h1>
            	<p class="quicksand"></p>
            	<p class="quicksand"> </p>
          	</div>
        </div>
    </div>
    <hr>
    <p>
    <img src="images/vision.jpg" WIDTH=160 HEIGHT=120 align="left" style="margin-right: 20px">
    Ser la empresa líder en la representación de patentes para la venta de licencias de videojuegos a nivel nacional.
    
    </p>
    <br><br>
    <img src="images/equipodetrabajo.jpg" align="left"><br><br><br><br>
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
