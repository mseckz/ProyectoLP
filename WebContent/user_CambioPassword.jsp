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
          		<h4>Cambio de Password</h4>
          		<form action="modificarUsuario" method="post">
            	<fieldset>
              		<legend></legend>
              		<div class="row">
              			<div class="one half padded">
                  			<label for="name">Password *</label>
                  			<input id="txtPassword" name="txtPassword" onkeyup="validar()" type="password" placeholder="Password" required>
                		</div>
                	</div>
                	<div class="row">	
						<div class="one half padded">
                  			<label for="name">Confirmar Password *</label>
                  			<input id="txtPasswordConfirmar" onkeyup="validar()" name="txtPasswordConfirmar" type="password" placeholder="Password" required>
                		</div>                    
               	    </div>
               	    <div class="row">	
						<div id="textDiv">
                  		</div>                    
               	    </div>
               	    <script type="text/javascript">
               	    function validar() {
               	    	
               	    	var password1=document.getElementById("txtPassword").value;
		               	var password2=document.getElementById("txtPasswordConfirmar").value;
			               	if (password1 != password2)
				               	{
			               		setTimeout(function(){
			               			alert('Las contraseñas deben coincidir');
			               	    }, 1000);
				               		 
				               		/* document.writeln("<center>"+" Las contraseñas deben coincidir "+"<center>");
				               		var div = document.getElementById("textDiv");
			               			div.textContent = "my text";
			               			var text = div.textContent; */
				               		}
					}

		               	  
		               		
               	    </script>
               	   
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