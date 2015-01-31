<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<c:import url="head.jsp"></c:import>
<body>
	<header>
		<c:import url="header.jsp"></c:import>
	</header>
	<fmt:setLocale value="es_PE"/>
	<div class="container">
	<div class="padded">
	<div class="row">
		<div class="one whole padded">
			<p><c:out value="${requestScope.mensaje}"></c:out></p>
			<div class="row">
				<div class="col-md-6"><h2>Carrito de Compra</h2></div>
				<div class="col-md-6"><span class="pull-right"><a class="btn btn-primary" href="#">Comprar</a></span></div>
			</div>
			<c:choose>
    			<c:when test="${empty sessionScope.listaCarrito}">
    				<div>
    					<p>No hay items en el Carrito</p>
    				</div>
    			</c:when>
    			<c:otherwise>
    			<form action="UpdateCarrito" method="post">
    			<table>
    				<thead>
						<th>Juego</th><th>Costo</th><th width="150px">Cantidad</th><th>Subtotal</th><th>Eliminar</th>
					</thead>
					<c:forEach var="det" items="${sessionScope.listaCarrito}">
        			<tr>
        				<td><c:out value='${det.juego.getNombre()}'></c:out></td>
        				<td><fmt:formatNumber value="${det.costo}" type="currency"/></td>
						<td><input type="text" value="<c:out value='${det.cantidad}'></c:out>" name="txtCantidad" ></td>
						<td><fmt:formatNumber value="${det.subtotal}" type="currency"/></td>
						<td align="center"><a href="EliminarJuegoCarrito?codjuego=${det.codigoJuego}" class="center large"><i class="icon-trash"></i></a></td>
					</tr>
					</c:forEach>
				</table>
				<br><input type="submit" value="Actualizar carrito de compra">
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