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
            	<h1 class="zero museo-slab">ÚNETE A UNA COMUNIDAD DE MILES DE JUGADORES</h1>
            	<p class="quicksand"></p>
          	</div>
        </div>
    </div>
    <hr>
    <p>
<div>
<img src="images/gente.jpg" WIDTH=350 HEIGHT=174 align="left" style="margin-right: 80px">
</div>
<br><br>
Durante este año, Sasuki ha pensado en crear  una comunidad de jugadores por todo el Perú. Actualmente, 
miles de personas disfrutan los juegos que brindamos y mes a mes  nuevos jugadores se unen a este servicio cada día. 
Únete a ellos ahora para formar parte de uno de las más cuidadas, dedicadas y divertidas comunidades de jugadores online.

<br><br><br><br><br>

<button name="boton" type="submit"><img src="images/unete.png" > </button>

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
