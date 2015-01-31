<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display" %>

<!DOCTYPE html>
<html>
<c:import url="head.jsp" />
<body>
<header>
	<c:import url="header.jsp" />
</header>
	<div class="container">
		<div class="padded">
			<div class="row">
				<div class="three fifths bounceInRight animated">
					<h1 class="zero museo-slab">Mantenimiento de Usuarios</h1>
					<p class="quicksand"></p>
				</div>
				<div
					class="two fifths align-right-ipad align-right-desktop flipInX animated">

				</div>
			</div>
		</div>
		<hr>
		<form action="buscaModUsuarios" method="get">
			<div class="row">
				<div class="one whole padded">
					<div class="bounceInLeft animated">
						<div class="row">
							<div class="one half padded">
								<label for="name">Nombre y/o Apellido del Usuario</label> <input
									id="name" type="text" name="txtNombre"
									placeholder="Nombre de Usuario">
							</div>
							<div class="one half padded">
								<label for="name">Status</label> <select name="cboStatus">
									<option value="" disabled="" selected="">Status</option>
									<option value="Activo">Activo</option>
									<option value="Inactivo">Inactivo</option>
								</select></span>
							</div>
							<div class="one half padded">
								<label for="name">Codigo del Usuario</label> <input id="name"
									type="text" name="txtCodigo" placeholder="Codigo del Usuario"
									value="${param.cod}">
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="one half padded">
						<label for="name"></label> <input id="Buscar" type="submit"
							value="Buscar" name="action" required> <input
							id="Modificar" type="submit" value="Modificar" name="action"
							required> <input id="Limpiar" type="reset"
							value="Limpiar" required>
					</div>
					<div class="one whole padded">
						<h1>
							<%
								String mensaje1=(String) request.getAttribute("mensaje1");
								if(mensaje1!=null)
									out.println("<center>"+mensaje1+"<center>");				
						%>
						</h1>
					</div>
					<div class="one whole padded">
						<display:table name="${sessionScope.mensaje}" pagesize="10"
							export="true" decorator="decorator.Wrapper">
							<display:column title="Codigo de Usuario" property="codigoUsuario" sortable="true" />
							<display:column title="Nombre" property="nombre" sortable="true" />
							<display:column title="Apellido Paterno" property="apellidoPaterno" sortable="true" />
							<display:column title="Apellido Materno" property="apellidoMaterno" sortable="true" />
							<display:column title="Estado" property="estado" sortable="true" />
							<display:column title="Seleccionar" property="recurso" />
						</display:table>
					</div>
				</div>
				<div class="row">
					<div class="one whole pad-left pad-right"></div>
				</div>
			</div>
		</form>
		<hr>
		<br>
	</div>
	<c:import url="footer.jsp" />    
</body>
</html>