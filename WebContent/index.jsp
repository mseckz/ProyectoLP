<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="header.jsp" />
<!--FIN MENU -->
<!--CONTENEDOR-->
<!--PRUEBA SI FUNKO-->
<!--PRUEBA SI FUNKO 2-->
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
    <a class="carousel-control left" href="#myCarousel"
    data-slide="prev">Prev</a>
    <a class="carousel-control right" href="#myCarousel"
    data-slide="next">Next</a>
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
      </div>
      <hr>


    </div>
    <footer class="gap-top bounceInUp animated">
      <div class="box square charcoal">
        <div class="container padded">
          <div class="row">
            <div class="one small-tablet fourth padded">
              <h5 class="green">Example Layouts</h5>
              <ul class="unstyled">
                <li><a href="./layout-a.html">Web Page</a></li>
                <li><a href="./layout-b.html">Image Gallery</a></li>
                <li><a href="./layout-c.html">Ecommerce Page</a></li>
                <li><a href="./layout-d.html">Contact Page</a></li>
              </ul>
            </div>
            <div class="three small-tablet fourths padded">
              <h5 class="blue">Documentation</h5>
              <ul class="unstyled three-column two-column-mobile">
                <li><a href="./grid.html" title="Responsive grid system, grid adapters and helpers">Grid</a></li>
                <li><a href="./helpers.html" title="Layout helpers, spinners and much more">Helpers</a></li>
                <li><a href="./typography.html" title="Text elements, quotes, code and web fonts">Typography</a></li>
                <li><a href="./navigation.html" title="Navigation">Navigation</a></li>
                <li><a href="./buttons.html" title="Buttons, button groups, button menus">Buttons</a></li>
                <li><a href="./boxes.html" title="Boxes">Boxes</a></li>
                <li><a href="./messages.html" title="Message boxes">Message Boxes</a></li>
                <li><a href="./tables.html" title="Tables">Tables</a></li>
                <li><a href="./tabs.html" title="Tabs">Tabs</a></li>
                <li><a href="./forms.html" title="Form elements">Form Elements</a></li>
                <li><a href="./icons.html" title="Icons">Icons</a></li>
                <li><a href="./responsive-text.html" title="Responsive text and multi-line text block truncation">Responsive Text</a></li>
                <li><a href="./placeholder-text.html" title="Placeholder text and placeholder fonts for rapid prototyping and wireframes">Placeholder Text</a></li>
                <li><a href="./animations.html" title="Pure CSS3 Animations">Animations</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      
      <div class="box square">
        <div class="container padded">
          <div class="row">
            <div class="one half padded">
              <p>GroundworkCSS is <b>100% free</b> and <b>open source</b>. <a href="mailto:groundworkcss@gmail.com">Give a shout out</a> if you have any feedback.</p>
              <p>Find a bug? Help squash it by <a href="https://github.com/groundworkcss/groundwork/issues" target="_blank">filing an issue</a> on Github.</p>
            </div>
            <div class="one half padded">
              <p class="large padded align-right align-center-small-tablet"><a href="http://twitter.com/groundworkcss" target="_blank" title="@groundworkcss" style="text-decoration:none;" class="large inline gapped"></a><a href="http://github.com/groundworkcss" target="_blank" title="@groundworkcss" style="text-decoration:none;" class="large inline gapped"></a><a href="mailto:groundworkcss@gmail.com" title="groundworkcss@gmail.com" style="text-decoration:none;" class="large inline gapped"></a></p>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- javascript-->
    <script type="text/javascript" src="js/groundwork.all.js"></script>
    <!-- google analytics-->
    <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-XXXXXXXX-X']);
      _gaq.push(['_trackPageview']);
      (function() {
      var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
    </script>
  </body>
</html>
