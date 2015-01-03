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

import service.UsuarioService;
import beans.UsuarioDTO;


/**
 * Servlet implementation class ListarUsuariosTabla
 */
@WebServlet("/ListarUsuariosTabla")
public class ListarUsuariosTabla extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListarUsuariosTabla() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UsuarioService servicio = new UsuarioService();
		ArrayList<UsuarioDTO> lista = servicio.listarUsuarios();
		
		RequestDispatcher rd= request.getRequestDispatcher("/admin_MantenimientoUsuarios.jsp");
		
		HttpSession misesion = request.getSession();
		misesion.setAttribute("mensaje", lista);
		
		rd.forward(request, response);
	}

}
