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
		
		RequestDispatcher rd= request.getRequestDispatcher("/admin_MantenimientoLicensias.jsp");
		
		if ("Buscar".equals(accion)) {
			System.out.println("buscar");
			
			String codJuego =request.getParameter("cboJuegos");
			ArrayList<SerialDTO> lista = null;
			SerialService servicio = new SerialService();
			
			if(codJuego == ""){
				lista = servicio.listarSerial();
			}else{
				lista = servicio.listarSerial(codJuego);
			}
		
			HttpSession misesion = request.getSession();
			misesion.setAttribute("mensaje", lista);
					
			rd.forward(request, response);
		} else if ("Modificar".equals(accion)) {
			
			String codigo=request.getParameter("txtCodigo");
			String status=request.getParameter("cboStatus");
		   
			System.out.println("Modificar");
			
			SerialService servicio = new SerialService();
			 int rs = servicio.modificaLicencia(codigo, status);
			 ArrayList<SerialDTO> lista = servicio.listarSerial();
			 
			 if (rs != 0) {
				 request.setAttribute("confirmacion", "Licencia modificado");
			 } else {
				 request.setAttribute("error", "Error al modificar");
			 }
			 			 				
			HttpSession misesion = request.getSession();
			misesion.setAttribute("mensaje", lista);
				
			rd.forward(request, response);
		}
		else if("Agregar".equals(accion)){
			String codigoJuego = request.getParameter("cboJuegos");
			String licencia=request.getParameter("txtLicencia");
			String estado=request.getParameter("cboStatus");
			
			System.out.println("Agregar");
			
			SerialService servicio = new SerialService();
			 int rs = servicio.AgregarLicencia(codigoJuego, licencia, estado);
			 ArrayList<SerialDTO> lista = servicio.listarSerial();
			 
			 if (rs != 0) {
				 request.setAttribute("confirmacion", "Licencia agregada");
			 } else {
				 request.setAttribute("error", "Error al agregar licencia");
			 }
			 			 				
			HttpSession misesion = request.getSession();
			misesion.setAttribute("mensaje", lista);
				
			rd.forward(request, response);
		}
	}

}
