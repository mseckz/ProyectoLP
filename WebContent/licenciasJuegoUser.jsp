<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<c:import url="head.jsp" />
<body>
<header>
	<c:import url="header.jsp" />
</header>
<div class="container">
	<div class="padded">
	<h2>Licencias de  <c:out value="${nombrejuego}"></c:out></h2>
	<hr>
	<table>
		<thead>
			<tr>
				<th>Item</th><th>Licencia</th>
			</tr>
		</thead>
		<c:set var="count" value="0" scope="page" />
		<c:forEach var="juego" items="${requestScope.listaxjuego}">
			<tr>
				<c:set var="count" value="${count + 1}" scope="page"/>
				<td><c:out value="${count}"></c:out></td>
				<td><c:out value="${juego.numserial}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
	</div>
</div>
<c:import url="footer.jsp"></c:import>
</body>
</html>