package servlets;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.DetalleCarritoService;
import service.DetalleVentaService;
import service.SerialService;
import service.VentaService;
import beans.CarritoDTO;
import beans.DetalleCarritoDTO;
import beans.JuegoDTO;
import beans.SerialDTO;
import beans.UsuarioDTO;

/**
 * Servlet implementation class RegistrarVenta
 */
@WebServlet("/RegistrarVenta")
public class RegistrarVenta extends HttpServlet {
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
		
		HttpSession sesion = request.getSession();
		ArrayList<DetalleCarritoDTO> lista = (ArrayList<DetalleCarritoDTO>) sesion.getAttribute("listaCarrito");
		UsuarioDTO usu = (UsuarioDTO) sesion.getAttribute("usuariodto");
		CarritoDTO car = (CarritoDTO) sesion.getAttribute("carrito");
		
		
		// verificar stock de licencias
		SerialService servSerial = new SerialService();
		
		for(DetalleCarritoDTO dc : lista){
				
			ArrayList<SerialDTO> listaSerial = servSerial.getLicenciasCompra(dc.getCodigoJuego(), dc.getCantidad());
			
			if(listaSerial.size() < dc.getCantidad()){
				JuegoDTO j = dc.getJuego();
				request.setAttribute("juego", j.getNombre());
				request.getRequestDispatcher("/Carrito.jsp").forward(request, response);
				return;
			}
		}
		
		// si hay stock
		
		// datos para la venta
		
		double subtotal =  Double.parseDouble(request.getParameter("txtSubtotal"));
		double igv = Double.parseDouble(request.getParameter("txtIgv"));
		double total = Double.parseDouble(request.getParameter("txtTotal"));
		
		VentaService servVenta = new VentaService();
		
		int rsv = servVenta.registrarVenta(car.getCodigoCarrito(),usu.getCodigoUsuario(), 
								subtotal, igv, total, "Realizado");
		String codigoventa = servVenta.getCodigoUltimaVenta();
			
		DetalleVentaService servDetalle = new DetalleVentaService();
		
		for(DetalleCarritoDTO dc : lista){
				
			ArrayList<SerialDTO> listaSerial = servSerial.getLicenciasCompra(dc.getCodigoJuego(), dc.getCantidad());
				
			for(SerialDTO s : listaSerial){
				servDetalle.registrarDetalleVenta(codigoventa, dc.getCodigoJuego(), s.getCodigoSerial(), 
											s.getSerial(), dc.getCosto(), "Realizado");
				servSerial.modificaLicencia(s.getCodigoSerial(), "usado");
			}
		}
		
		// despues de vender se procede a eliminar items de carrito
		DetalleCarritoService servDetCarrito = new DetalleCarritoService();
		servDetCarrito.limpiarCarrito(car.getCodigoCarrito());
		
		ArrayList<DetalleCarritoDTO> listaCarrito = servDetCarrito.listarDetallePorUsuario(car.getCodigoCarrito());
		request.getSession().setAttribute("listaCarrito", listaCarrito);
		
		request.setAttribute("confirmacion", "Compra realizada con exito!");
		request.getRequestDispatcher("/LibreriaUsuario").forward(request, response);
	}
	
	

}
