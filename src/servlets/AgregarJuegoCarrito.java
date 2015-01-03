package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.DetalleCarritoDTO;
import service.DetalleCarritoService;

/**
 * Servlet implementation class AgregarJuegoCarrito
 */
@WebServlet("/AgregarJuegoCarrito")
public class AgregarJuegoCarrito extends HttpServlet {
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
		
		String codigoJuego = request.getParameter("codigo");
		String codigoCarrito = "CA100000";
		int cantidad = 1;
		double costo = Double.parseDouble(request.getParameter("costo"));
		String estado = "En proceso";
		
		DetalleCarritoService servicio = new DetalleCarritoService();
		int rs = servicio.agregarJuego(codigoCarrito, codigoJuego, cantidad, costo, estado);
		
		if(rs == 0){
			request.setAttribute("Error", "Error al agregar item");
		}
		
		request.getRequestDispatcher("ListadoJuegos").forward(request, response);
		
	}
}
