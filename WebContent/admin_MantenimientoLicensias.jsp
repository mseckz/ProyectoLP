<%@ taglib uri = "WEB-INF/libreria.tld" prefix = "libreria"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display" %>

<!DOCTYPE html>
<html class="no-js">
  <c:import url="head.jsp" />
  <body>
    <header class="padded">
      <c:import url="header.jsp" />
    </header>
    <div class="container">
      <div class="padded">
        <div class="row">
          <div class="three fifths bounceInRight animated">
            <h1 class="zero museo-slab">Mantenimiento de Licencias</h1>
            <p class="quicksand"></p>
          </div>
          <div class="row">
			<c:if test="${requestScope.error != null}">
				<p class="alert dismissible message"><c:out value="${requestScope.error}"></c:out></p>
			</c:if>
			<c:if test="${requestScope.confirmacion != null}">
				<p class="success dismissible message"><c:out value="${requestScope.confirmacion}"></c:out></p>
			</c:if>	
		  </div>
        </div>
      </div>
      <hr>
      <form action="ModificarLicencias" method="get">
      <div class="row">
        <div class="one whole padded">
          <div class="bounceInLeft animated">
            <h4>Agregar Juegos</h4>
            <div class="row">
                <div class="one half padded">
                  <label for="name">Juego</label>
                  	<select name="cboJuegos">
						<option value="">Elija Juego</option>
						<c:forEach var="juego" items="${sessionScope.listaJuegos}">
							<option value="${juego.codigojuego}">${juego.nombre}</option>
						</c:forEach>
					</select>                 
                </div>
                <div class="one half padded">
                  <label for="name">Licencia</label>
                  <input id="name" type="text" name="txtLicencia" placeholder="Licencia" >
                </div>
                <div class="one half padded">
					<label for="name">Codigo de Licencia</label> 
					<input id="name" type="text" name="txtCodigo" placeholder="Codigo de Licencia" value="${param.cod}">
				</div>
							
                <div class="one half padded">
					<label for="name">Status</label>
						<select name="cboStatus">
							<option value="">Status</option>
							<option value="Libre" ${param.estado == 'Libre' ? 'selected="selected"' : ''}>Libre</option>
							<option value="Usado" ${param.estado == 'Usado' ? 'selected="selected"' : ''}>Usado</option>
						</select>
				</div>
              </div>
              </div>

            <div class="row">
                <div class="one half padded">
                  <label for="name"></label>
                  <input id="Buscar" type="submit" value="Buscar" name="action" required> 
                  <input id="name" type="submit" value="Agregar" name="action" required>
                  <input id="Modificar" type="submit" value="Modificar" name="action" required>
                  <input id="name" type="button" value="Limpiar" required>
                </div>
               
				<div class="one whole padded">

						<display:table name="${sessionScope.mensaje}" pagesize="10"	export="true" decorator="decorator.WrapperLicencia">
							<display:column title="Codigo de Licencia"	property="codigoSerial" sortable="true" />
							<display:column title="Codigo del Juego" property="codigoJuego" sortable="true" />
							<display:column title="Serial" property="serial" sortable="true" />
							<display:column title="Estado" property="estado" sortable="true" />
							<display:column title="Seleccionar" property="recurso" />
						</display:table>
					</div>             
            </div>
            <div class="row">
              <div class="one whole pad-left pad-right">
              </div>
            </div>
          </div>
        </div>
        
        </form>
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