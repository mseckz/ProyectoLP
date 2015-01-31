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
	<div class="row">
		<h2>Compras por usuario</h2>
		<div class="col-md-6">
			<form class="form-horizontal">
			<div class="row">
				<div class="col-md-6">
					<label>Año</label>
					<select name="cboAño">
						<option>Seleccione Año</option>
						<c:forEach var="i"  begin="2013" end="2018">
							<option><c:out value="${i}" /></option>
						</c:forEach>
					</select>
				</div>
				<div class="col-md-6">
					<label>Mes</label>
					<select name="cboMes">
						<option>Seleccione Mes</option>
						<c:forEach var="i"  begin="01" end="12">
							<option><c:out value="${i}" /></option>
						</c:forEach>
					</select>
				</div>
			</div><br>
			<div class="row">
				<input type="submit" value="Consultar"> 
			</div>
			</form>
		</div>
	</div>
	</div>
</div>
</body>
</html>