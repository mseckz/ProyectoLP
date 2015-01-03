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
 * Servlet implementation class ListarLicenciasTabla
 */
@WebServlet("/ListarLicenciasTabla")
public class ListarLicenciasTabla extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SerialService servicio = new SerialService();
		ArrayList<SerialDTO> lista = servicio.listarSerial();

		RequestDispatcher rd = request
				.getRequestDispatcher("/admin_MantenimientoLicensias.jsp");

		HttpSession misesion = request.getSession();
		misesion.setAttribute("mensaje", lista);

		rd.forward(request, response);
	}

}
