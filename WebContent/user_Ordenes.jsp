<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<c:import url="head.jsp" />
<body>
<header>
	<c:import url="header.jsp" />
</header>
<div class="container">
    <h2>Ordenes de Juegos</h2>
    <hr>
	<table>
		<thead>
			<tr>
				<th>N� Venta</th><th>Codigo</th><th>Fecha Venta</th><th>Estado</th><th>Total</th><th>Estado</th><th>Ver Detalle</th>
			</tr>
		</thead>
		<c:set var="count" value="0" scope="page" />
		<c:forEach var="orden" items="${ordenes}">
			<tr>
				<c:set var="count" value="${count + 1}" scope="page"/>
				<td><c:out value="${count}"></c:out></td>
				<td><c:out value="${orden.codigoventa}"></c:out></td>
				<td><c:out value="${orden.fechaven}"></c:out></td>
				<td><c:out value="${orden.igv}"></c:out></td>
				<td><c:out value="${orden.total}"></c:out></td>
				<td><c:out value="${orden.estado}"></c:out></td>
				<td><a href="ListarDetalleOrdenes?codigoventa=${orden.codigoventa}" class="btn btn-primary">Ver Detalle</a></td>
			</tr>
		</c:forEach>
	</table>
<hr>
</div>

<c:import url="footer.jsp" />
</body>
</html>