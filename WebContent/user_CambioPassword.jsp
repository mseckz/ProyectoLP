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
			<div class="row"></div>
		</div>
		<hr>
		<div class="row bounceInRight animated">
			<div class="one whole padded">
				<h4>Cambio de Password</h4>
					<fieldset>
					<form id="formpassword" action="ModificarPasswordUsuario" method="post">
						<div class="row">
							<div class="one half padded">
								<label for="name">Password *</label> <input id="txtPassword"
									name="txtPassword" type="password"
									placeholder="Password" required>
							</div>
						</div>
						<div class="row">
							<div class="one half padded">
								<label for="name">Confirmar Password *</label> <input
									id="txtPasswordConfirmar" name="txtPasswordConfirmar" type="password"
									placeholder="Password" required>
							</div>
						</div>
						<div class="row">
							<div class="one half padded">
								<input name="txtCodigo" type="hidden" placeholder="Nombres"
									value="${sessionScope.usuariodto.getCodigoUsuario()}" required>
							</div>
						</div>
						<div class="row">
							<div id="textDiv"></div>
						</div>
						<div class="row">
							<div class="one whole padded">
								<input type="submit" value="Modificar">
							</div>
							<div class="one whole padded">
								<div class="alert" id="mensaje">
									<%
									String mensaje1=(String) request.getAttribute("confirmacion");
									
									if(mensaje1!=null)
										out.println("<center>"+mensaje1+"<center>");				
									%>
								</div>
							</div>
						</div>
						</form>
					</fieldset>
			</div>
		</div>
		<br>
		<hr>
	</div>

	<c:import url="footer.jsp" />
</body>
<script type="text/javascript">
    	$(document).ready(function(){
    		
    		$('#formpassword').submit(function(){
    			
    			var password = $('#txtPassword');
    			var passwordConfirm = $('#txtPasswordConfirmar');
    			
    			if(password != passwordConfirm){
    				$('#mensaje').text("Claves deben coincidir");
    				return false;
    			}
    			
    			return true;
    			
    		});
    		
    	});
</script>
</html>