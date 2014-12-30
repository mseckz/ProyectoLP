<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html><!--[if lt IE 7]><html class="no-js ie ie6 lt-ie7 lt-ie8 lt-ie9 lt-ie10"><![endif]-->
<!--[if IE 7]>   <html class="no-js ie ie7 lt-ie8 lt-ie9 lt-ie10"><![endif]-->
<!--[if IE 8]>   <html class="no-js ie ie8 lt-ie9 lt-ie10"><![endif]-->
<!--[if IE 9]>   <html class="no-js ie ie9 lt-ie10"><![endif]-->
<!--[if gt IE 9]><html class="no-js ie ie10"><![endif]-->
<!--[if !IE]><!-->
<html class="no-js"><!--<![endif]-->
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
    <title>SASUKI : VIDEOGAMES</title>
    <link rel="shortcut icon" href="images/S-naruto.jpg"/>
    <!-- Modernizr -->
    <script src="../js/libs/modernizr-2.6.2.min.js"></script>
    <!-- jQuery-->
    <script type="text/javascript" src="js/libs/jquery-1.10.2.min.js"></script>
    <!-- framework css --><!--[if gt IE 9]><!-->
    <link type="text/css" rel="stylesheet" href="css/groundwork.css"><!--<![endif]--><!--[if lte IE 9]>
    <link type="text/css" rel="stylesheet" href="../css/groundwork-core.css">
    <link type="text/css" rel="stylesheet" href="../css/groundwork-type.css">
    <link type="text/css" rel="stylesheet" href="../css/groundwork-ui.css">
    <link type="text/css" rel="stylesheet" href="../css/groundwork-anim.css">
    <link type="text/css" rel="stylesheet" href="../css/groundwork-ie.css"><![endif]-->
    <style type="text/css">
      .logo {
        position: relative;
        top: -0.5em;
      }
      .logo a, .logo a:visited {
        text-decoration: none;
        color: #2B2B2D;
      }
      .logo img {
        height: 2em;
        position: relative;
        top: 0.55em;
        margin-right: 0.3em;
      }
      
    </style>
    <!-- snippet (syntax highlighting for code examples)-->
    <script type="text/javascript" src="js/demo/jquery.snippet.min.js"></script>
    <link type="text/css" rel="stylesheet" href="css/demo/jquery.snippet.css"><script type="text/javascript">
(function() {

  $(document).ready(function() {
    $('pre[data-lang="html"]').snippet("html", {
      style: "groundwork",
      clipboard: "js/demo/ZeroClipboard.swf"
    });
    $('pre[data-lang="css"]').snippet("css", {
      style: "groundwork",
      clipboard: "js/demo/ZeroClipboard.swf"
    });
    $('pre[data-lang="sass"]').snippet("sass", {
      style: "groundwork",
      clipboard: "../js/demo/ZeroClipboard.swf"
    });
    return $('pre[data-lang="js"]').snippet("javascript", {
      style: "groundwork",
      clipboard: "js/demo/ZeroClipboard.swf"
    });
  });

}).call(this);
</script>
  </head>
  <body>
<header class="padded">
      <div class="container">
        <div class="row">
          <div class="one half">
            <h2 class="logo"><a href="/" target="_parent"><img src="images/groundwork-logo.png" alt=""><strong>SASUKI</strong></a></h2>
          </div>
          <div class="one half">

            <p class="small double-pad-top no-pad-small-tablet align-right align-left-small-tablet">
<a href="#" class="gap-right" >Registrarse<i class="icon-user"></i></a>
            </p>
          </div>
        </div>
        <nav role="navigation" class="nav gap-top">
          <ul role="menubar">
            <li><a href="index.jsp"><i class="icon-home"></i> SASUKI</a></li>
            <li role="menu">
              <button  onclick = "location='games.jsp'">BUSCAR JUEGOS</button>
              <ul>
                <li role="menu">
                  <button title="Navigation, buttons, boxes, message boxes, tables, tabs, and forms" onclick = "location='games.jsp'">Los más vendidos</button></a>
                  <ul>
                    <li><a href="./navigation.html" title="Navigation">STARCRAFT II</a></li>
                    <li><a href="./buttons.html" title="Buttons, button groups, button menus">BATLEFIELD IV</a></li>
                    <li><a href="./boxes.html" title="Boxes">METAL GEAR SOLID : RISING</a></li>
                    <li><a href="./messages.html" title="Message boxes">WASTELAND</a></li>
                    <li><a href="./tables.html" title="Tables">FINAL FANTASY XIV</a></li>
                    <li><a href="./tabs.html" title="Tabs">GOD OF WAR : ASCENTION</a></li>
                    <li><a href="./forms.html" title="Form elements">WORLD OF WARCRAFT : PANDARIAN</a></li>
                  </ul>
                </li>
        <li role="menu">
                  <button title="Navigation, buttons, boxes, message boxes, tables, tabs, and forms">Todos los juegos</button>
                  <ul>
                    <li><a href="./navigation.html" title="Navigation"><strong>Por Género</strong></a></li>
                    <li><a href="./buttons.html" title="Buttons, button groups, button menus">MMO</a></li>
                    <li><a href="./boxes.html" title="Boxes">RPG</a></li>
                    <li><a href="./messages.html" title="Message boxes">MMORPG</a></li>
                    <li><a href="./tables.html" title="Tables">SHOOTERS</a></li>
                    <li><a href="./tabs.html" title="Tabs">MMORPS</a></li>
                    <li><a href="./forms.html" title="Form elements">DANCING</a></li>
                  </ul>
                </li>
                <li><a href="./icons.html" title="Icons">Ultimos Lanzamientos</a></li>
                <li><a href="./responsive-text.html" title="Responsive text and multi-line text block truncation">Proximos Lanzamientos</a></li>
                <li><a href="./placeholder-text.html" title="Placeholder text and placeholder fonts for rapid prototyping and wireframes">Los mas Recomendados</a></li>
                <li><a href="./animations.html" title="Pure CSS3 Animations">Lo mas Rankeado</a></li>
              </ul>
            </li>
      <li role="menu">
                <button>Sobre Nosotros</button>
              <ul>
                <li><a href="./grid.html" title="Responsive grid system, grid adapters and helpers">Historia</a></li>
                <li><a href="./helpers.html" title="Layout helpers, spinners and much more">Mision</a></li>
                <li><a href="./typography.html" title="Text elements, quotes, code and web fonts">Vision</a></li>
                <li><a href="./icons.html" title="Icons">Unetenos</a></li>
                <li><a href="./responsive-text.html" title="Responsive text and multi-line text block truncation">Socios Estrategicos</a></li>
                <li><a href="./placeholder-text.html" title="Placeholder text and placeholder fonts for rapid prototyping and wireframes">Eventos</a></li>
              </ul>
            </li>
            <li><a href="register.jsp"><i class=""></i> Registrarse</a></li>
       <input id="search-box" name="q" onblur="if (this.value == &quot;&quot;) this.value = &quot;Buscar...&quot;;" onfocus="if (this.value == &quot;Buscar...&quot;) this.value = &quot;&quot;;" size="5" type="text" value="Buscar...">
          </ul>
     
        </nav>
      </div>
    </header>
    <div class="container">
      <div class="padded">
        <div class="row">
          <div class="three fifths bounceInRight animated">
            <h1 class="zero museo-slab">TODOS LOS JUEGOS</h1>
            <p class="quicksand"></p>
          </div>
          <div class="two fifths align-right-ipad align-right-desktop flipInX animated">
          <!--  <p class="quicksand"></p>
            <p><a href="layout-b.html" rel="prev" class="blue button"></a> <a href="layout-d.html" rel="next" class="green button"></a></p>-->
          </div>
        </div>
      </div>
      <hr>
      <div class="row">
        <aside class="one fifth padded bounceInLeft animated">
          <nav title="Shop by Category" role="menu" class="small-tablet nav vertical menu">
            <ul>
              <li class="one whole"><a>Por Categoria</a></li>
              <li class="one whole"><a>Por Precios</a></li>
              <li class="one whole"><a>Ultimos Lanzamientos</a></li>
              <li class="one whole"><a>Proximos Lanzamientos</a></li>
              <li class="one whole"><a>La vieja Escuela</a></li>
            </ul>
          </nav>
        </aside>
        <article class="four fifths">
          <div class="row">
            <div class="one fourth three-up-small-tablet two-up-mobile padded bounceInDown animated">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero">Product 1</h4><img src="images/bsellers/AssassinsCreedUnity.jpg">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one fourth three-up-small-tablet two-up-mobile padded bounceInUp animated">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero">Product 2</h4><img src="images/bsellers/BoundByFlame.jpg">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one fourth three-up-small-tablet two-up-mobile padded rotateInDownRight animated">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero">Product 3</h4><img src="images/bsellers/CrysisTrilogy.jpg">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one fourth three-up-small-tablet two-up-mobile padded bounceInRight animated">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero">Product 4</h4><img src="images/bsellers/FarCray4.jpg">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one fourth three-up-small-tablet two-up-mobile padded bounceInDown animated">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero">Product 5</h4><img src="images/bsellers/battlefield4.jpg">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one fourth three-up-small-tablet two-up-mobile padded bounceInUp animated">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero">Product 6</h4><img src="images/bsellers/dragonage.jpg">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one fourth three-up-small-tablet two-up-mobile padded rotateInDownRight animated">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero">Product 7</h4><img src="images/bsellers/plantsvsZombies.jpg">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one fourth three-up-small-tablet two-up-mobile padded bounceInRight animated">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero">Product 8</h4><img src="images/bsellers/MetalGearRising.jpg">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one fourth three-up-small-tablet two-up-mobile padded bounceInDown animated">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero">Product 9</h4><img src="images/bsellers/NeedForSpeed.jpg">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one fourth three-up-small-tablet two-up-mobile padded bounceInUp animated">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero">Product 10</h4><img src="images/bsellers/MetalGearRising.jpg">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one fourth three-up-small-tablet two-up-mobile padded rotateInDownRight animated">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero">Product 11</h4><img src="images/bsellers/watchDogs.jpg">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
            <div class="one fourth three-up-small-tablet two-up-mobile padded bounceInRight animated">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero">Product 12</h4><img src="http://placehold.it/300x300/f1c40f/ffffff/&amp;text=Product+12">
                <p class="truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p>$8.00 USD<i class="icon-shopping-cart pull-right large"></i></p>
              </div>
            </div>
          </div>
        </article>
      </div>
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