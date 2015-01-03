package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.SerialService;

/**
 * Servlet implementation class AgregarLicencia
 */
@WebServlet("/AgregarLicencia")
public class AgregarLicencia extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgregarLicencia() {
        super();
        // TODO Auto-generated constructor stub
    }

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
		
		String codigoJuego = request.getParameter("comboJuegos");
		String serial = request.getParameter("Licencia");
		String estado = "Libre";
		
		SerialService servicio = new SerialService();
		int rs = servicio.AgregarLicencia(codigoJuego, serial, estado);
		if(rs == 0){
			request.setAttribute("Error", "Error al agregar licencia");
		}
		
		request.getRequestDispatcher("/admin_MantenimientoLicensias.jsp").forward(request, response);
		
	}

}
