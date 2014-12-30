package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.JuegoDTO;
import service.JuegoService;

/**
 * Servlet implementation class ListadoJuegos
 */
@WebServlet("/ListadoJuegos")
public class ListadoJuegos extends HttpServlet {
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
		
		JuegoService servicio = new JuegoService();
		
		ArrayList<JuegoDTO> lista = servicio.listarJuegos();
		
		request.setAttribute("juegos", lista);
		
		request.getRequestDispatcher("/games.jsp").forward(request, response);
	}

}
