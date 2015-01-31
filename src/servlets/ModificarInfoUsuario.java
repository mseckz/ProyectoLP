package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.UsuarioService;

/**
 * Servlet implementation class ModificarInfoUsuario
 */
@WebServlet("/ModificarInfoUsuario")
public class ModificarInfoUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificarInfoUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

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

	private void procesar(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String codigoUsuario = request.getParameter("txtCodigo");
		String nombre = request.getParameter("txtNombre");
		String apellidoPaterno = request.getParameter("txtApellidoPaterno");
		String apellidoMaterno = request.getParameter("txtApellidoMaterno");
		String correo = request.getParameter("txtEmail");
		
		UsuarioService servicio = new UsuarioService();
		int rs = servicio.modificarInfoUsuario(codigoUsuario, nombre, apellidoPaterno, apellidoMaterno, correo);
		
		 if (rs != 0) {
			 request.setAttribute("confirmacion", "Usuario modificado - Por favor volver a Iniciar Sesión para aplicar los cambios ...");
		 } else {
			 request.setAttribute("confirmacion", "Error al modificar Usuario");
		 }

		RequestDispatcher rd = request.getRequestDispatcher("/user_CambioInfo.jsp");
		rd.forward(request, response);
		
	}

}
