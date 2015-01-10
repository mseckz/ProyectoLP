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
          		<form action="modificarUsuario" method="post">
            	<fieldset>
              		<legend></legend>
              		<div class="row">
              			<div class="one half padded">
                  			<label for="name">Nombre *</label>
                  			<input name="txtNombre" type="text" placeholder="Nombres" value="" required>
                  			<span>${error}</span>
                		</div>
              			<div class="one half padded">
                  			<label for="name">Apellido Paterno*</label>
                  			<input name="txtApellidoPaterno" type="text" placeholder="Apellido Pat" value="" required>
                		</div>
                		<div class="one half padded">
                  			<label for="name">Apellido Materno*</label>
                  			<input name="txtApellidoMaterno" type="text" placeholder="Apellido Mat" value=""required>
                		</div>
                		<div class="one half padded">
                  			<label for="email">Email *</label>
                  			<input name="txtEmail" type="email" placeholder="you@example.com" value="" required>
                		</div>                    
               	    </div>
              	<div class="row">
                	<div class="one whole padded">
                  		<input type="submit" value="Modificar">
        		</div>
        </div>
        </fieldset>
       	</form>
    	<div class="row">
    	</div>
    </div>
</div><br>
<hr>
</div>

<c:import url="footer.jsp" />
</body>
</html>