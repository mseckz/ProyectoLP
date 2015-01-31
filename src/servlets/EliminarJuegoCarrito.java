package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.CarritoDTO;
import beans.DetalleCarritoDTO;
import service.DetalleCarritoService;

/**
 * Servlet implementation class EliminarJuegoCarrito
 */
@WebServlet("/EliminarJuegoCarrito")
public class EliminarJuegoCarrito extends HttpServlet {
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
		
		HttpSession misesion = request.getSession();
		
		CarritoDTO cart = (CarritoDTO) misesion.getAttribute("carrito");
		String codigoCarrito = cart.getCodigoCarrito();
		String codigoJuego = request.getParameter("codjuego");
		
		DetalleCarritoService servicio = new DetalleCarritoService();
		int rs = servicio.eliminarItemCarrito(codigoCarrito, codigoJuego);
		
		if(rs != 0){
			request.setAttribute("mensaje", "Juego eliminado");
		} else {
			request.setAttribute("mensaje", "Error al eliminar juego");
		}
		
		ArrayList<DetalleCarritoDTO> listaCarrito = servicio.listarDetallePorUsuario(cart.getCodigoCarrito());
		misesion.setAttribute("listaCarrito", listaCarrito);
		request.getRequestDispatcher("/Carrito.jsp").forward(request, response);
	}

}
