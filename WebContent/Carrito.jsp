<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
    			<c:when test="${empty sessionScope.listaCarrito}">
    				<div>
    					<p>No hay items en el Carrito</p>
    				</div>
    			</c:when>
    			<c:otherwise>
    			<table>
    				<thead>
						<th>Juego</th><th>Genero</th><th>Costo</th><th>Cantidad</th><th>Eliminar</th>
					</thead>
					<c:forEach var="det" items="${sessionScope.listaCarrito}">
        			<tr>
        				<td><c:out value='${det.get("nombreJuego")}'></c:out></td>
        				<td><c:out value='${det.get("categoria")}'></c:out></td>
        				<td><c:out value='${det.get("costo")}'></c:out></td>
        				<td><input type="text" name="cantidad" value='<c:out value='${det.get("cantidad")}'></c:out>'></td>
						<td><form><input type="submit" value="Eliminar"></form></td>
					</tr>
					</c:forEach>
				</table>
				<input type="submit" value="Actualizar carrito de compra">
    			</c:otherwise>
			</c:choose>
		</div>
	</div>
	</div>
	</div>
<c:import url="footer.jsp"></c:import>
</body>
</html>