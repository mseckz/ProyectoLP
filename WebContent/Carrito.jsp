<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://displaytag.sf.net" prefix="display" %>

<!DOCTYPE html>
<html>
<c:import url="head.jsp"></c:import>
<body>
	<header>
		<c:import url="header.jsp"></c:import>
		<c:import url="menuNormal.jsp"></c:import>
	</header>
	<div class="container">
	<div class="padded">
	<div class="row">
		<div class="one whole padded">
		<table>
			<thead>
				<th>Juego</th><th>Genero</th><th>Costo</th><th>Cantidad</th>
			</thead>
			<c:forEach var="det" items="${listaCarrito}">
				<tr>
					<td><c:out value="${det.codigoJuego}"></c:out></td>
					<td><c:out value="${det.codigoJuego}"></c:out></td>
					<td><c:out value="${det.costo}"></c:out></td>
					<td><input type="text" value="<c:out value="${det.cantidad}"></c:out>" name="txtCantidad"></td>
				</tr>
			</c:forEach>
			<c:choose>
    			<c:when test="${empty juego}">
    			</c:when>
    			<c:otherwise>
        			<tr>
						<td><c:out value="${juego.nombre}"></c:out></td>
						<td><c:out value="${juego.categoria}"></c:out></td>
						<td><c:out value="${juego.costo}"></c:out></td>
						<td>
						<form>
							<input type="text" value="1" name="txtCantidad">
						</form>
						</td>
					</tr>
    			</c:otherwise>
			</c:choose>
		</table>
		</div>
	</div>
	</div>
	</div>
<c:import url="footer.jsp"></c:import>
</body>
</html>