<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<header class="padded">
<div class="container">
	<nav role="navigation" class="nav gap-top">
    	<ul role="menubar">
            <li><a href="admin_main.jsp"><i class="icon-home"></i>SASUKI</a></li>
            <li role="menu">
            	<button  title = "Mantenimientos">Mantenimientos</button>
                <ul>
	                <li><a href="ListarJuegosMant" title="Navigation">Juegos</a></li>
	                <li><a href="ListarLicenciasTabla" title="Buttons, button groups, button menus">Licencias</a></li>
	                <li><a href="ListarUsuariosTabla" title="Boxes">Usuarios</a></li>
          		</ul>
            </li>
            <li role="menu">
                  		<button title="Navigation, buttons, boxes, message boxes, tables, tabs, and forms">Reportes</button>
                  		<ul>
                    		<li><a href="./navigation.html" title="Navigation"><strong>Reportes1</strong></a></li>
                    		<li><a href="./buttons.html" title="Buttons, button groups, button menus">Reportes2</a></li>
                    		<li><a href="./boxes.html" title="Boxes">Reportes3</a></li>
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
       		<input id="search-box" name="q" onblur="if (this.value == &quot;&quot;) this.value = &quot;Buscar...&quot;;" onfocus="if (this.value == &quot;Buscar...&quot;) this.value = &quot;&quot;;" size="5" type="text" value="Buscar...">
        </ul>
    </nav>
</div>
</header>