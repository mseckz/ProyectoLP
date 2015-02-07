<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
	<nav role="navigation" class="nav gap-top">
    	<ul role="menubar">
            <li><a href="index.jsp"><i class="icon-home"></i> SASUKI</a></li>
            <li role="menu">
            	<button  onclick = "location='ListadoJuegos'">BUSCAR JUEGOS</button>
               <ul>
                  <li>
                     <button title="Todos los Juegos" onclick = "location='ListadoJuegos'">Todos los juegos</button></a>
                  </li>
                  <li role="menu">
                    <button title="Por Categorias">Por Categorías</button>
                    <ul>
                     <c:forEach var="cat" items="${sessionScope.listaCategorias}">
                  		<li>
                     		<a href="ListarJuegosporCategoria?categoria=${cat.idcategoria}">
                        		<c:out value='${cat.descripcion}'></c:out>
                     		</a>
                  		</li>
               		</c:forEach>
               		</ul> 
                  </li>
         	 </ul>
            </li>
      		<li role="menu">
            	<button>Sobre Nosotros</button>
              	<ul>
                	<li><a href="historia.jsp" title="Historia">Historia</a></li>
                	<li><a href="misionVision.jsp" title="Misión">Misión y Visión</a></li>
                	<li><a href="./icons.html" title="Únetenos">Únetenos</a></li>
                	<li><a href="./responsive-text.html" title="Socios Estratégicos">Socios Estratégicos</a></li>
                	<li><a href="./placeholder-text.html" title="Eventos">Eventos</a></li>
              	</ul>
            </li>
            <li class="pull-right"><a href="register.jsp">Registrarse</a></li>
       		<input id="search-box" name="q" onblur="if (this.value == &quot;&quot;) this.value = &quot;Buscar...&quot;;" onfocus="if (this.value == &quot;Buscar...&quot;) this.value = &quot;&quot;;" size="5" type="text" value="Buscar...">
        </ul>
    </nav>
</div>