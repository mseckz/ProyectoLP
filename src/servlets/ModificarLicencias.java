package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.SerialService;
import beans.SerialDTO;

/**
 * Servlet implementation class ModificarLicencias
 */
@WebServlet("/ModificarLicencias")
public class ModificarLicencias extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificarLicencias() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesarServlet(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesarServlet(request,response);
	}
	
	private void procesarServlet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accion = request.getParameter("action");
		String licencia=request.getParameter("txtLicencia");
		String codigo=request.getParameter("txtCodigo");
		String status=request.getParameter("cboStatus");
				
		
		if ("Buscar".equals(accion)) {
		    // Invoke FirstServlet's job here.
			System.out.println("buscar");
			
			SerialService servicio = new SerialService();
			ArrayList<SerialDTO> lista = servicio.listarSerial(codigo);
			
			RequestDispatcher rd= request.getRequestDispatcher("/admin_MantenimientoLicensias.jsp");
			
			HttpSession misesion = request.getSession();
			misesion.setAttribute("mensaje", lista);
					
			rd.forward(request, response);
		} else if ("Modificar".equals(accion)) {
		    // Invoke SecondServlet's job here.
			System.out.println("Modificar");
			
			SerialService servicio = new SerialService();
			 int rs = servicio.modificaLicencia(codigo, status);
			 
			 SerialService servicio1 = new SerialService();
			 ArrayList<SerialDTO> lista = servicio1.listarSerial();
			 
			 RequestDispatcher rd = request.getRequestDispatcher("/admin_MantenimientoLicensias.jsp");
			 if (rs != 0) {
			 request.setAttribute("mensaje1", "Licencia modificado");
			 } else {
			 request.setAttribute("mensaje1", "Error al modificar");
			 }
			 			 				
			HttpSession misesion = request.getSession();
			misesion.setAttribute("mensaje", lista);
				
			rd.forward(request, response);
		}
		
		
	}

}
