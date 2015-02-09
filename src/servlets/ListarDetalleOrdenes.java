package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.DetalleVentaService;
import service.VentaService;
import beans.DetalleVentaDTO;

/**
 * Servlet implementation class ListarDetalleOrdenes
 */
@WebServlet("/ListarDetalleOrdenes")
public class ListarDetalleOrdenes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListarDetalleOrdenes() {
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
		
		
		String codigoventa =request.getParameter("codigoventa");
		DetalleVentaService servicio=new DetalleVentaService();
		ArrayList<DetalleVentaDTO> lista = servicio.listarOrdenesxJuegos(codigoventa);
		
		request.setAttribute("ordenesdet", lista);
		
		request.getRequestDispatcher("/User_Detalle_ordenes.jsp").forward(request, response);	
	}

}
