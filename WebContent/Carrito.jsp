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
	</header>
	<div class="container">
	<div class="padded">
	<div class="row">
		<div class="one whole padded">
			<p><c:out value="${requestScope.confirmacion}"></c:out></p>
			<c:choose>
    			<c:when test="${empty juego}">
    				<div>
    					<p>No hay items en el Carrito</p>
    				</div>
    			</c:when>
    			<c:otherwise>
    			<form>
    			<table>
    				<thead>
						<th>Juego</th><th>Genero</th><th>Costo</th><th>Cantidad</th>
					</thead>
        			<tr>
						<td><c:out value="${juego.nombre}"></c:out></td>
						<td><c:out value="${juego.categoria}"></c:out></td>
						<td><c:out value="${juego.costo}"></c:out></td>
						<td>
							<input type="text" value="1" name="txtCantidad">
						</td>
					</tr>
				</table>
				<input type="submit" value="Actualizar carrito de compra">
				</form>
    			</c:otherwise>
			</c:choose>
		</div>
	</div>
	</div>
	</div>
<c:import url="footer.jsp"></c:import>
</body>
</html>