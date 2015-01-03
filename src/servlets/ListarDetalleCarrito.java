package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.DetalleCarritoDTO;
import beans.JuegoDTO;
import service.DetalleCarritoService;
import service.JuegoService;

/**
 * Servlet implementation class ListarDetalleCarrito
 */
@WebServlet("/ListarDetalleCarrito")
public class ListarDetalleCarrito extends HttpServlet {
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
		DetalleCarritoService servicio = new DetalleCarritoService();
		JuegoService serv = new JuegoService();
		
		ArrayList<DetalleCarritoDTO> listaCarrito = servicio.listadoJuegosCarrito();
		JuegoDTO juego = serv.buscarJuego(request.getParameter("codigo"));
		
		
		request.setAttribute("listaCarrito", listaCarrito);
		request.setAttribute("juego", juego);
		request.getRequestDispatcher("/Carrito.jsp").forward(request, response);
	}
}
