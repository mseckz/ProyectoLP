package servlets;

import interfaces.CategoriaDAO;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.CategoriaJuegoDTO;
import beans.JuegoDTO;
import beans.TipoJuegoDTO;
import service.CategoriaService;
import service.JuegoService;
import service.TipoService;

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

		TipoService servTipo = new TipoService();
		ArrayList<TipoJuegoDTO> listaTipo = servTipo.listarTipos();
		misesion.setAttribute("listaTipo", listaTipo);
		
		CategoriaService servCat = new CategoriaService();
		ArrayList<CategoriaJuegoDTO> listaCat = servCat.listarCategorias();
		misesion.setAttribute("listaCat", listaCat);
		
		RequestDispatcher rd= request.getRequestDispatcher("/adminMantenimientoJuegos.jsp");
		rd.forward(request, response);
		
	}

}
