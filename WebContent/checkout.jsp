<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="head.jsp"></c:import>
<body>
	<fmt:setLocale value="es_PE"/>
	<header>
		<c:import url="header.jsp"></c:import>
	</header>
	<div class="container">
		<div class="padded">
			<div class="row">
			<div class="col-md-8">
				<h1>Revisión de Pedido</h1>
				<table>
					<thead>
						<th>Juego</th><th width="100px">Costo</th><th width="100px">Cantidad</th><th width="100px">Subtotal</th>
					</thead>
					<c:forEach var="det" items="${sessionScope.listaCarrito}">
	        			<tr>
	        				<td><c:out value='${det.juego.getNombre()}'></c:out></td>
	        				<td><fmt:formatNumber value="${det.costo}" type="currency"/></td>
							<td><c:out value='${det.cantidad}'></c:out></td>
							<td><fmt:formatNumber value="${det.subtotal}" type="currency"/></td>
						</tr>
						</c:forEach>
						<tr><td colspan="2"></td><td><fmt:formatNumber value="${det.costo}" type="currency"/></td></tr>
				</table>
			</div>
			</div>
		</div>
	</div>
</body>
</html>