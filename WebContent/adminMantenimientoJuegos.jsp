<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@taglib uri="WEB-INF/libreria.tld" prefix="libreria"%>

<!DOCTYPE html>
<html>
<c:import url="head.jsp" />
<body>
	<c:import url="header.jsp" />
	<div class="container">
		<div class="padded">
			<div class="row">
				<div class="three fifths bounceInRight animated">
					<h1 class="zero museo-slab">Mantenimiento de Juegos</h1>
					<p class="quicksand"></p>
				</div>
			</div>
			<div>
				<c:if test="${requestScope.error != null}">
					<p class="alert dismissible message"><c:out value="${requestScope.error}"></c:out></p>
				</c:if>
				<c:if test="${requestScope.confirmacion != null}">
					<p class="success dismissible message"><c:out value="${requestScope.confirmacion}"></c:out></p>
				</c:if>	
			</div>
		</div>
		<hr>
		<form action="BuscarModificarJuego" method="get" enctype="multipart/form-data">
			<div class="row">
				<div class="one whole padded">
					<div class="bounceInLeft animated">
						<div class="row">
							<div class="one half padded">
								<label for="name">Codigo Juego</label> 
								<input id="name" name="txtCodigoJuego" placeholder="Codigo de Juego" value="${param.codjuego}">
							</div>
							<div class="one half padded">
								<label for="name">Juego</label> 
								<input id="name" name="txtNombreJuego" placeholder="Nombre de Juego" value="${param.nombre}">
							</div>
							<div class="one half padded">
								<label for="name">Precio</label>
								<input id="name" name="txtPrecioJuego" type="text" placeholder="Precio" value="${param.precio}">
							</div>
							<div class="one half padded">
								<label for="name">Descripcion</label> 
								<input id="name" name="txtDescripcionJuego" type="textarea" placeholder="Descripcion" value="${param.descrip}">
							</div>
							<div class="one half padded">
								<span class="select-wrap"><label for="name">Tipo de Juego</label>
								<select name="cboTipo">
									<option value="">Elija Tipo</option>
									<c:forEach var="tipo" items="${sessionScope.listaTipo}">
										<option value="${tipo.idtipo}" ${tipo.idtipo == param.tipo ? 'selected="selected"' : ''}>${tipo.descripcion}</option>
									</c:forEach>
								</select>
								</span>
							</div>
							<div class="one half padded">
								<span class="select-wrap"> <label for="name">Categoria</label>
								<select name="cboCategoria">
									<option value="">Elija Categoria</option>
									<c:forEach var="categ" items="${sessionScope.listaCat}">
										<option value="${categ.idcategoria}" ${categ.idcategoria == param.categ ? 'selected="selected"' : ''}>${categ.descripcion}</option>
									</c:forEach>
								</select>
								</span>
							</div>
							<div class="one half padded">
								<span class="select-wrap"> <label for="name">Estado</label>
									<select name="cboEstadoJuegos">
										<option value="">Estado</option>
										<option value="activo" ${param.estado == 'activo' ? 'selected="selected"' : ''}>Activo</option>
										<option value="inactivo" ${param.estado == 'inactivo' ? 'selected="selected"' : ''}>Inactivo</option>
								</select></span>
							</div>
							<div class="one half padded">
								<label for="name">Imagen</label> 
								<input id="name" name="file" type="file" >
							</div>
						</div>
					</div>
					<div class="row">
						<div class="one half padded">
							<label for="name"> 
							<input id="Agregar" type="submit" value="Agregar" name="action"> 
							<input id="Buscar" type="submit" value="Buscar" name="action">
							<input id="Modificar" type="submit" value="Modificar" name="action" required> <input id="Limpiar" type="reset"value="Limpiar">
							</label>
						</div>
						<div class="one whole padded">
							<display:table name="${sessionScope.listado}" pagesize="50"
								export="true" decorator="decorator.WrapperJuegos">
								<display:column title="Codigo de Juego" property="codigojuego"
									sortable="true" />
								<display:column title="Juego" property="nombre" sortable="true" />
								<display:column title="Descripcion" property="descripcion"
									sortable="true" />
								<display:column title="Administrador"
									property="codigoadministrador" sortable="true" />
								<display:column title="Estado" property="estado" sortable="true" />
								<display:column title="Fecha Ingreso" property="fechaingreso"
									sortable="true" />
								<display:column title="Accion" property="recurso"
									sortable="true" />
							</display:table>
						</div>
					</div>
					<div class="row">
						<div class="one whole pad-left pad-right"></div>
					</div>
				</div>
				<hr>
				<br>
			</div>
		</form>
	</div>
	<c:import url="footer.jsp" />
</body>
</html>