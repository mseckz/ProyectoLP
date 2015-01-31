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
    <div class="padded">
        <div class="row">
        	<c:if test="${requestScope.confirmacion != null}">
				<p class="success dismissible message"><c:out value="${requestScope.confirmacion}"></c:out></p>
			</c:if>
        </div>
    </div>
    <hr>
        <div class="row bounceInRight animated">
        	<div class="one whole padded">
          		<h4>Licencias Adquiridas</h4>
          		
          		<table>
          		 <c:forEach var="juego" items="" >
          		 </c:forEach>
          		</table>
   		 </div>
</div><br>
<hr>
</div>

<c:import url="footer.jsp" />
</body>
</html>