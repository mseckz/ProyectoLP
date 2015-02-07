package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.JuegoService;
import beans.JuegoDTO;
import beans.UsuarioDTO;

/**
 * Servlet implementation class LibreriaUsuario
 */
@WebServlet("/LibreriaUsuario")
public class LibreriaUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesar(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesar(request, response);
	}

	private void procesar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UsuarioDTO usu = (UsuarioDTO)request.getSession().getAttribute("usuariodto");
		
		JuegoService servicio = new JuegoService();
		
		ArrayList<JuegoDTO> juegos = servicio.juegosAdquiridosUsuario(usu.getCodigoUsuario());
		
		if(juegos.size() > 0){
			request.setAttribute("juegos", juegos);
		}else{
			request.setAttribute("mensaje", "No tiene juegos adquiridos");
		}
		
		request.getRequestDispatcher("/user_Libreria.jsp").forward(request, response);
	}

}
