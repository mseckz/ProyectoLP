<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header class="padded">
   <div class="container">
      <nav role="navigation" class="nav gap-top">
         <ul role="menubar">
            <li><a href="user_main.jsp"><i class="icon-home"></i>SASUKI</a></li>
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
         <li role="menu">
            <button  title = "Mantenimientos">Mi Cuenta</button>
            <ul>
               <li><a href="user_Cuenta.jsp" title="Navigation">Cuenta</a></li>
               <li><a href="user_Ordenes.jsp" title="Navigation">Ordenes</a></li>
               <li><a href="LibreriaUsuario" title="Buttons, button groups, button menus">Libreria</a></li>
            </ul>
         </li>
         <li role="menu">
            <button>Carrito<i class="icon-shopping-cart"></i></button>
            <ul>
               <c:forEach var="det" items="${sessionScope.listaCarrito}">
                  <li>
                     <a>
                        <c:out value='${det.juego.getNombre()}'></c:out>
                     </a>
                  </li>
               </c:forEach>
               <li><a href="Carrito.jsp">Ir a carrito</a></li>
            </ul>
         </li>
         <input id="search-box" name="q" onblur="if (this.value == &quot;&quot;) this.value = &quot;Buscar...&quot;;" onfocus="if (this.value == &quot;Buscar...&quot;) this.value = &quot;&quot;;" size="5" type="text" value="Buscar...">
         </ul>
      </nav>
   </div>
</header>