<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
	<div class="row">
	    <div class="one half">
	        <h2 class="logo"><a href="index.jsp" target="_parent"><img src="images/groundwork-logo.png" alt=""><strong>SASUKI</strong></a></h2>
	    </div>
	    <div class="one half">
			<p class="small double-pad-top no-pad-small-tablet align-right align-left-small-tablet">
							<%
								HttpSession misesion= request.getSession();
								String mensaje = (String) misesion.getAttribute("datosconsesion");
								System.out.println("mensaje datosconsesion JSP:"+mensaje);
								String mensajeUser = (String) misesion.getAttribute("datosUser");
								String mensajeAdmin = (String) misesion.getAttribute("datosAdmin");
								String mensajeFinal="";
								String mensaje1="";
								String ruta="";
								if(mensajeUser=="usuario" && mensaje!=null){
									System.out.println(""+mensajeUser);
									mensajeFinal="Bienvenido "+mensaje;
									System.out.println("mensajeFinal:"+mensajeFinal);
									mensaje1="Cerrar Sesion";
									ruta="user_Cuenta.jsp";
									}
								if(mensajeAdmin=="administrador" && mensaje!=null){
									System.out.println(""+mensajeAdmin);
									mensajeFinal="Bienvenido "+mensaje;
									System.out.println("mensajeFinal:"+mensajeFinal);
									mensaje1="Cerrar Sesion";
									ruta="admin_main.jsp";
									}
								 if(mensaje==null){
								/* if(mensajeAdmin==null && mensaje==null && mensajeUser==null){ */
										mensajeFinal="Iniciar Sesion";
										mensaje1="";
										ruta="sesionRegistro.jsp";
										
									}				
							%>
							
				<a href="<%=ruta %>" class="gap-right" ><%=mensajeFinal%><i class="icon-user"></i></a>
				<a href="CerrarSesion" class="gap-right" ><%=mensaje1%></a>
			</p>
	    </div>
	</div>
	<c:choose>
	<c:when test="${sessionScope.datosconsesion == null}">
		<c:import url="MenuInicial.jsp" />
	</c:when>
	<c:otherwise>
		<c:choose>
			<c:when test="${datosAdmin != null}">
				<c:import url="menuAdmin.jsp"></c:import>
			</c:when>
			<c:otherwise>
				<c:import url="menuUser.jsp"></c:import>
			</c:otherwise>
		</c:choose>
		
	</c:otherwise>
	</c:choose>
    
</div>