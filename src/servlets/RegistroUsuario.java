package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.UsuarioService;
import beans.UsuarioDTO;

/**
 * Servlet implementation class RegistroUsuario
 */
@WebServlet("/RegistroUsuario")
public class RegistroUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesar(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesar(request,response);
	}

	private void procesar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String usuario = request.getParameter("txtUsuario");
		String clave = request.getParameter("txtPassword");
		String claveconfirm = request.getParameter("txtPasswordConfirmar");
		String nombre = request.getParameter("txtNombre");
		String apellidoPaterno = request.getParameter("txtApellidoPaterno");
		String apellidoMaterno = request.getParameter("txtApellidoMaterno");
		String fechaNacimiento = request.getParameter("txtFechaNac");
		String correo = request.getParameter("txtEmail");
		
		if(clave.equals(claveconfirm)){
			UsuarioService servicio = new UsuarioService();
			int rs = servicio.registrarUsuario(usuario, clave, nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento, correo);
			
			if(rs == 0){
				request.setAttribute("error", "Error al registrar Usuario");
				request.getRequestDispatcher("/register.jsp").forward(request, response);
			}
			else{
				request.setAttribute("confirmacion", "Usuario registrado");
				request.getRequestDispatcher("/sesionRegistro.jsp").forward(request, response);
			}
		}
		else{
			request.setAttribute("error", "Claves no coinciden");
			request.getRequestDispatcher("/register.jsp").forward(request, response);
		}
		
	}
}
