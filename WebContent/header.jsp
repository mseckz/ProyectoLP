<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<header class="padded">
<div class="container">
	<div class="row">
    	<div class="one half">
        	<h2 class="logo"><a href="/" target="_parent"><img src="images/groundwork-logo.png" alt=""><strong>SASUKI</strong></a></h2>
        </div>
        <div class="one half">
			<p class="small double-pad-top no-pad-small-tablet align-right align-left-small-tablet">
			<a href="register.jsp" class="gap-right" >Registrarse<i class="icon-user"></i></a>
            </p>
        </div>
    </div>
    <nav role="navigation" class="nav gap-top">
    	<ul role="menubar">
            <li><a href="index.jsp"><i class="icon-home"></i> SASUKI</a></li>
            <li role="menu">
            	<button  onclick = "location='ListadoJuegos'">BUSCAR JUEGOS</button>
                <ul>
                	<li role="menu">
                  		<button title="Navigation, buttons, boxes, message boxes, tables, tabs, and forms" onclick = "location='listado.html'">Los más vendidos</button></a>
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
            <li class="pull-right"><a>Cerrar Sesion</a></li>
            <li role="menu" class="pull-right">
            	<button>Carrito<i class="icon-shopping-cart"></i></button>
            	<ul>
            		
            	</ul>
            </li>
       		<input id="search-box" name="q" onblur="if (this.value == &quot;&quot;) this.value = &quot;Buscar...&quot;;" onfocus="if (this.value == &quot;Buscar...&quot;) this.value = &quot;&quot;;" size="5" type="text" value="Buscar...">
        </ul>
    </nav>
</div>
</header>