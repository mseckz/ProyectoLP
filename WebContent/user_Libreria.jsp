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
<style>
	.imagen {
		width: 150px;
		height: 300px;
	}
</style>
<div class="container">
    <div class="padded">
        <div class="row">
        	<c:if test="${requestScope.confirmacion != null}">
				<p class="success dismissible message"><c:out value="${requestScope.confirmacion}"></c:out></p>
			</c:if>
        </div>
    </div>
    <h2>Libreria de juegos</h2>
    <hr>
        <div class="row bounceInRight animated">
        	<div class="one whole padded">
         		<p><c:out value="${requestScope.mensaje}"></c:out></p>	
         		<div class="row">
          		 <c:forEach var="juego" items="${juegos}" >
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img class="imagen" src="images/bsellers/<c:out value='${juego.codigojuego}'></c:out>.jpg">
							<div class="caption">
								<h3 class="align-center"><c:out value="${juego.nombre}" ></c:out></h3>
								<p class="truncate align-center"><c:out value="${juego.descripcion}"></c:out></p>
								<p class="align-center">
									<a href="LicenciasJuegoPorUsuario?codjuego=${juego.codigojuego}" class="btn btn-primary">Ver Licencias</a>
								</p>
							</div>
						</div>
					</div>
          		</c:forEach>
   		 		</div>
   		 </div>
</div><br>
<hr>
</div>
<c:import url="footer.jsp" />
</body>
</html>