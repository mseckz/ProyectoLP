package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;

import org.apache.catalina.connector.Request;

import service.JuegoService;
import service.TipoService;
import beans.JuegoDTO;
import beans.TipoJuegoDTO;

import com.oracle.jrockit.jfr.RequestableEvent;

/**
 * Servlet implementation class ListarJuegosporCategoria
 */
@WebServlet("/ListarJuegosporCategoria")
public class ListarJuegosporCategoria extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListarJuegosporCategoria() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesar(request,response);
	}

	private void procesar(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
		int categoria = Integer.parseInt(request.getParameter("categoria"));
		
		JuegoService servicio = new JuegoService();
		ArrayList<JuegoDTO> lista = servicio.listarJuegoxCategoria(categoria);
		
		request.getSession().setAttribute("juegos", lista);
		
		RequestDispatcher rd= request.getRequestDispatcher("/games.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesar(request,response);
	}

}
