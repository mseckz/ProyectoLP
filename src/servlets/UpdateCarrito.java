package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.DetalleCarritoService;
import beans.CarritoDTO;
import beans.DetalleCarritoDTO;
import beans.UsuarioDTO;

/**
 * Servlet implementation class UpdateCarrito
 */
@WebServlet("/UpdateCarrito")
public class UpdateCarrito extends HttpServlet {
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
		
		DetalleCarritoService servicio = new DetalleCarritoService();
		ArrayList<DetalleCarritoDTO> listaDetCarrito = servicio.listarDetallePorUsuario(cart.getCodigoCarrito());
		
		//datos de los input de cantidad
		String[] cantidades = request.getParameterValues("txtCantidad");
		
//		for(int i = 0, length = cantidades.length; i < length; i++){
//			if(cantidades[i] == "0"){
//				return;
//			}
//		}
		
		boolean flag = true;
		
		for(int i = 0, size = listaDetCarrito.size(); i < size; i++){
			DetalleCarritoDTO d = listaDetCarrito.get(i);
			int rs = 0;
			rs = servicio.actulizarDetalleCompra(codigoCarrito, d.getCodigoJuego(), Integer.parseInt(cantidades[i]));
			
			if(rs == 0){
				flag = false;
				break;
			}
		}
		
		if(flag){
			request.setAttribute("mensaje", "Actualizacion completa");
			ArrayList<DetalleCarritoDTO> listaCarrito = servicio.listarDetallePorUsuario(cart.getCodigoCarrito());
			request.getSession().setAttribute("listaCarrito", listaCarrito);
		} else{
			request.setAttribute("mensaje", "Error al actualizar");
		}
		
		request.getRequestDispatcher("/Carrito.jsp").forward(request, response);
	}

}
