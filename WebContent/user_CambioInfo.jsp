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
        </div>
    </div>
    <hr>
        <div class="row bounceInRight animated">
        	<div class="one whole padded">
          		<h4>Modificar Datos del Usuario</h4>
            	<fieldset>
            		<form action="ModificarInfoUsuario" method="post">
              		<div class="row">
              			<div class="one half padded">
                  			<label for="name">Nombre *</label>
                  			<input name="txtNombre" type="text" placeholder="Nombres" value="${sessionScope.usuariodto.getNombre()}" required>
                  			<span>${error}</span>
                		</div>
              			<div class="one half padded">
                  			<label for="name">Apellido Paterno*</label>
                  			<input name="txtApellidoPaterno" type="text" placeholder="Apellido Pat" value="${sessionScope.usuariodto.getApellidoPaterno()}" required>
                		</div>
                		<div class="one half padded">
                  			<label for="name">Apellido Materno*</label>
                  			<input name="txtApellidoMaterno" type="text" placeholder="Apellido Mat" value="${sessionScope.usuariodto.getApellidoMaterno()}"required>
                		</div>
                		<div class="one half padded">
                  			<label for="email">Email *</label>
                  			<input name="txtEmail" type="email" placeholder="you@example.com" value="${sessionScope.usuariodto.getCorreo()}" required>
                		</div>
                		<div class="one half padded">
                  			<input name="txtCodigo" type="hidden" placeholder="Nombres" value="${sessionScope.usuariodto.getCodigoUsuario()}" required>
                		</div>                    
               	    </div>
              	<div class="row">
                	<div class="one whole padded">
                  		<input type="submit" name="action" id="ModificarInfo" value="Modificar">
        			</div>
        		</div>
        		<div class="one whole padded">
					<h3>
					<%
					String mensaje1=(String) request.getAttribute("confirmacion");
						if(mensaje1!=null)
					out.println("<center>"+mensaje1+"<center>");				
					%>
					</h3>
				</div>
				</form>
		 </fieldset>
       	
			</div>
    </div>
</div><br>
<hr>
<c:import url="footer.jsp" />
</body>
</html>