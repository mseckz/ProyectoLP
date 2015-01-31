package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.UsuarioService;

/**
 * Servlet implementation class ModificarPasswordUsuario
 */
@WebServlet("/ModificarPasswordUsuario")
public class ModificarPasswordUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificarPasswordUsuario() {
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
		String clave = request.getParameter("txtPassword");
		String claveConfirm = request.getParameter("txtPasswordConfirmar");
		
		if(! clave.equals(claveConfirm)){
			request.setAttribute("confirmacion", "Las claves debe coincidir");
			
		} else {
			
			UsuarioService servicio = new UsuarioService();
			int rs = servicio.cambioPassword(codigoUsuario, clave);
			
			if (rs != 0) {
				request.setAttribute("confirmacion", "Password modificado - Por favor volver a Iniciar Sesión para aplicar los cambios ...");
			} else {
				request.setAttribute("confirmacion", "Error al modificar Usuario");
			}
		} 
		 			 						
		RequestDispatcher rd = request.getRequestDispatcher("/user_CambioPassword.jsp");
		rd.forward(request, response);
				
	}
}
