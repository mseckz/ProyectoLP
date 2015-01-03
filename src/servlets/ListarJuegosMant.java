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

import beans.JuegoDTO;
import service.JuegoService;

/**
 * Servlet implementation class ListarJuegosMant
 */
@WebServlet("/ListarJuegosMant")
public class ListarJuegosMant extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		JuegoService servicio = new JuegoService();
		ArrayList<JuegoDTO> listado = servicio.listarJuegos();
		
		HttpSession misesion = request.getSession();
		misesion.setAttribute("listado", listado);
		
		RequestDispatcher rd= request.getRequestDispatcher("/adminMantenimientoJuegos.jsp");
		rd.forward(request, response);
	}

}
