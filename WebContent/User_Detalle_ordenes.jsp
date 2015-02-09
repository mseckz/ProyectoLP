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
    <h2>Detalle de Ordenes</h2>
    <hr>
	<table>
		<thead>
			<tr>
				<th>N° Licencia</th><th> </th><th>Codigo</th><th>Juego</th><th>Licencia</th><th>Costo</th>
			</tr>
		</thead>
		<c:set var="count" value="0" scope="page" />
		<c:forEach var="deta" items="${ordenesdet}">
			<tr>
				<c:set var="count" value="${count + 1}" scope="page"/>
				<td><c:out value="${count}"></c:out></td>
				<td><img class="imggameslitle" src="images/bsellers/<c:out value='${deta.codigojuego}'></c:out>.jpg"></td>
				<td><c:out value="${deta.codigoventa}"></c:out></td>
				<td><c:out value="${deta.juego.getNombre()}"></c:out></td>
				<td><c:out value="${deta.numserial}"></c:out></td>
				<td><c:out value="${deta.costo}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
<hr>
</div>

<c:import url="footer.jsp" />
</body>
</html>