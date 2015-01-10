<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html><!--[if lt IE 7]><html class="no-js ie ie6 lt-ie7 lt-ie8 lt-ie9 lt-ie10"><![endif]-->
<!--[if IE 7]>   <html class="no-js ie ie7 lt-ie8 lt-ie9 lt-ie10"><![endif]-->
<!--[if IE 8]>   <html class="no-js ie ie8 lt-ie9 lt-ie10"><![endif]-->
<!--[if IE 9]>   <html class="no-js ie ie9 lt-ie10"><![endif]-->
<!--[if gt IE 9]><html class="no-js ie ie10"><![endif]-->
<!--[if !IE]><!-->
<html class="no-js"><!--<![endif]-->
<c:import url="head.jsp" />
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
    <link type="text/css" rel="stylesheet" href="css/estilos.css">
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
	<c:import url="header.jsp" />
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
          <c:forEach var="juego" items="${juegos}" >
          	<div class="one fourth three-up-small-tablet two-up-mobile padded bounceInDown animated">
              <div class="box">
                <h4 data-compression="7" data-max="20" class="responsive align-center zero"><c:out value="${juego.nombre}" ></c:out></h4><img src="images/bsellers/AssassinsCreedUnity.jpg">
                <div id="datosjuego">
                	<p class="truncate"><c:out value="${juego.descripcion}"></c:out></p>
                	<p>$<c:out value="${juego.costo}"></c:out> USD</p>
                </div>
                <form action="ListarDetalleCarrito" method="POST" id="frmCarrito">
                	<input type="hidden" name="codigo" value="<c:out value='${juego.codigojuego}'></c:out>">
                	<input type="hidden" name="nombre" value="<c:out value='${juego.nombre}'></c:out>">
                	<button type="submit" class="btn btn-primary">
  						<i class="icon-shopping-cart center large"></i>
					</button>
                </form>
              </div>
            </div>
          </c:forEach>
          </div>
        </article>
      </div>
    </div>
   <c:import url="footer.jsp"></c:import>
  </body>
</html>