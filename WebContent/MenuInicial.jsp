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
                     <button title="Navigation, buttons, boxes, message boxes, tables, tabs, and forms" onclick = "location='ListadoJuegos'">Todos los juegos</button></a>
                  </li>
                  <li role="menu">
                    <button title="Navigation, buttons, boxes, message boxes, tables, tabs, and forms">Por Categorias</button>
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
                	<li><a href="./grid.html" title="Responsive grid system, grid adapters and helpers">Historia</a></li>
                	<li><a href="./helpers.html" title="Layout helpers, spinners and much more">Mision</a></li>
                	<li><a href="./typography.html" title="Text elements, quotes, code and web fonts">Vision</a></li>
                	<li><a href="./icons.html" title="Icons">Unetenos</a></li>
                	<li><a href="./responsive-text.html" title="Responsive text and multi-line text block truncation">Socios Estrategicos</a></li>
                	<li><a href="./placeholder-text.html" title="Placeholder text and placeholder fonts for rapid prototyping and wireframes">Eventos</a></li>
              	</ul>
            </li>
            <li class="pull-right"><a href="register.jsp">Registrarse</a></li>
       		<input id="search-box" name="q" onblur="if (this.value == &quot;&quot;) this.value = &quot;Buscar...&quot;;" onfocus="if (this.value == &quot;Buscar...&quot;) this.value = &quot;&quot;;" size="5" type="text" value="Buscar...">
        </ul>
    </nav>
</div>