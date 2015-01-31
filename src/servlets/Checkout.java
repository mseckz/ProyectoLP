package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.DetalleCarritoDTO;

/**
 * Servlet implementation class Checkout
 */
@WebServlet("/Checkout")
public class Checkout extends HttpServlet {
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
		
		double total = 0;
		
		for(DetalleCarritoDTO dc : lista){
			total += dc.getSubtotal();
		}
		
		double igv = total*0.18;
		double subtotal = total - igv;
		
		request.setAttribute("total", total);
		request.setAttribute("subtotal", subtotal);
		request.setAttribute("igv", igv);
		request.getRequestDispatcher("/checkout.jsp").forward(request, response);
	}
	
	
}
