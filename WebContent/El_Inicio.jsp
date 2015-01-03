<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<c:import url="head.jsp" />
<body>
<c:import url="header.jsp" />
<div class="container">
	<div class="padded">
    	<div class="row">
        </div>
    </div>
    <hr>
        <div class="row bounceInRight animated">
        	<div class="one whole padded">
          		<h4>MENU: ADMINISTRADOR O CLIENTE</h4>
                <div class="one whole padded">
                    <input type="button"value="ADMINISTRADOR"onclick = "location='admin_main.jsp'"> 
                  	<input type="button"value="CLIENTES" onclick = "location='index.jsp'"> 
                </div>        
        	</div>
      	</div><br>
    <hr>
</div>
<c:import url="footer.jsp" />
</body>
</html>