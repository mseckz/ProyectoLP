package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.CarritoDTO;
import beans.DetalleCarritoDTO;
import beans.JuegoDTO;
import beans.UsuarioDTO;
import service.CarritoService;
import service.DetalleCarritoService;
import service.JuegoService;

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
		String nombreJuego = request.getParameter("nombre");
		UsuarioDTO usu = (UsuarioDTO)request.getSession().getAttribute("usuariodto");
		
		if(usu == null){
			request.setAttribute("errorComprar", "Debe iniciar sesion o registrarse para comprar");
			request.getRequestDispatcher("/sesionRegistro.jsp").forward(request, response);
		}
		else{
			CarritoDTO cart = (CarritoDTO) request.getSession().getAttribute("carrito");
			
			int cantidad = 1;  // siempre empieza con cantidad de 1, el usuario podra actualiza en el carrito
			double costo = Double.parseDouble(request.getParameter("costo"));
			String estado = "En proceso";
			
			DetalleCarritoService servicio = new DetalleCarritoService();
			int rs = servicio.agregarJuego(cart.getCodigoCarrito(), codigoJuego, cantidad, costo, estado);
			
			if(rs == 0){
				request.setAttribute("Error", "Error al agregar item");
			}
			else{
				request.setAttribute("confirmacion", nombreJuego + " fue añadido al carrito de compras");
				ArrayList<DetalleCarritoDTO> listaCarrito = servicio.listarDetallePorUsuario(cart.getCodigoCarrito());
				request.getSession().setAttribute("listaCarrito", listaCarrito);
			}
			
			request.getRequestDispatcher("/Carrito.jsp").forward(request, response);
		}	
	}
}
