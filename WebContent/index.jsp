
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<c:import url="head.jsp" />
<body>
<c:import url="header.jsp" />
<c:import url="menuNormal.jsp" />
<div class="container">
	<div class="padded">
        <div class="row">
          	<div class="three fifths bounceInRight animated">
            	<h1 class="zero museo-slab">ULTIMOS ESTRENOS</h1>
            	<p class="quicksand"></p>
            	<p class="quicksand"> </p>
          	</div>
          	<div class="two fifths align-right-ipad align-right-desktop flipInX animated">
            	<p class="quicksand"></p>
            	<p><a href="games.jsp" rel="next" class="green button">Ver Mas </a></p>
          	</div>
        </div>
    </div>
    <hr>
	<!-- INICIO CARRUSEL -->
	<div id="myCarousel" class="carousel slide"  style="width:600px;height:350px;background-position:center top"> 
  	<!-- Carousel indicators -->
    	<ol class="carousel-indicators">
      		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      		<li data-target="#myCarousel" data-slide-to="1"></li>
      		<li data-target="#myCarousel" data-slide-to="2"></li>
      		<li data-target="#myCarousel" data-slide-to="3"></li>
      		<li data-target="#myCarousel" data-slide-to="4"></li>
    	</ol>
    	<!-- Carousel items -->
    	<div class="carousel-inner">
      		<div class="item active">
        		<img src="images/slide/Banner-dragonage.jpg"  alt="Dragon Age">
     	 	</div>
      		<div class="item">
        		<img src="images/slide/Banner-fifa15.jpg" alt="FIFA 15">
      		</div>
      		<div class="item">
        		<img src="images/slide/Banner-grimrock.jpg" alt="GrimRock">
      		</div>
      		<div class="item">
        		<img src="images/slide/Banner-shadow.jpg" alt="Shadow">
      		</div>  
      		<div class="item">
        		<img src="images/slide/Banner-styx.jpg" alt="STYX">
      		</div>                    
    	</div>
  		<!-- Carousel nav -->
    	<a class="carousel-control left" href="#myCarousel" data-slide="prev">Prev</a>
    	<a class="carousel-control right" href="#myCarousel" data-slide="next">Next</a>
  	</div><hr><hr>
	<!--TERMINA CARRUSEL-->
<div class="pad-top pad-left pad-right bounceInRight animated">
	<h4 class="zero">Proximos Lanzamientos</h4>
        <p></p>
</div>
<article class="row bounceInUp animated">
	<section class="one third padded">
    	<h3>Section Heading 3</h3>
        <div class="row">
            <div class="two-up-small-tablet one-up-mobile align-center"><img src="images/extras/foro.jpg" alt=""></div>
           	<div class="two-up-small-tablet one-up-mobile">
              	<p class="padded no-pad-mobile">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales urna non odio egestas tempor. Nunc vel vehicula ante. Etiam bibendum iaculis libero, eget molestie nisl pharetra in. In semper consequat est, eu porta velit mollis nec. Curabitur posuere enim eget turpis feugiat tempor. Etiam ullamcorper lorem dapibus velit suscipit ultrices.</p>
            </div>
        </div>
    </section>
    <section class="one third padded">
    	<h3>Section Heading 3</h3>
        <div class="row">
            <div class="two-up-small-tablet one-up-mobile align-center"><img src="images/extras/foro.jpg" alt=""></div>
            <div class="two-up-small-tablet one-up-mobile">
              	<p class="padded no-pad-mobile">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales urna non odio egestas tempor. Nunc vel vehicula ante. Etiam bibendum iaculis libero, eget molestie nisl pharetra in. In semper consequat est, eu porta velit mollis nec. Curabitur posuere enim eget turpis feugiat tempor. Etiam ullamcorper lorem dapibus velit suscipit ultrices.</p>
            </div>
        </div>
    </section>
    <section class="one third padded">
    	<h3>Section Heading 3</h3>
        <div class="row">
            <div class="two-up-small-tablet one-up-mobile align-center"><img src="images/extras/foro.jpg" alt=""></div>
            <div class="two-up-small-tablet one-up-mobile">
              	<p class="padded no-pad-mobile">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales urna non odio egestas tempor. Nunc vel vehicula ante. Etiam bibendum iaculis libero, eget molestie nisl pharetra in. In semper consequat est, eu porta velit mollis nec. Curabitur posuere enim eget turpis feugiat tempor. Etiam ullamcorper lorem dapibus velit suscipit ultrices.</p>
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
