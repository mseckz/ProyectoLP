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
import service.JuegoService;
import beans.DetalleVentaDTO;
import beans.JuegoDTO;
import beans.UsuarioDTO;

/**
 * Servlet implementation class LicenciasJuegoPorUsuario
 */
@WebServlet("/LicenciasJuegoPorUsuario")
public class LicenciasJuegoPorUsuario extends HttpServlet {
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
		
		String codigojuego = request.getParameter("codjuego");
		UsuarioDTO usu = (UsuarioDTO) sesion.getAttribute("usuariodto");
		
		DetalleVentaService servicio = new DetalleVentaService();
		ArrayList<DetalleVentaDTO> lista = servicio.licenciasJuegoPorUsuario(usu.getCodigoUsuario(), codigojuego);
		
		JuegoService servJuego = new JuegoService();
		JuegoDTO j = servJuego.buscarJuego(codigojuego);
		
		request.setAttribute("listaxjuego", lista);
		request.setAttribute("nombrejuego", j.getNombre());
		request.getRequestDispatcher("/licenciasJuegoUser.jsp").forward(request, response);
	}

}
