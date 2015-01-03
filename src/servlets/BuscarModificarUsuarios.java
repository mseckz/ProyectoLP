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
 * Servlet implementation class buscarModificarUsuarios
 */
@WebServlet("/BuscarModificarUsuarios")
public class BuscarModificarUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuscarModificarUsuarios() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		procesarServlet(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		procesarServlet(request,response);
	}

	private void procesarServlet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String accion = request.getParameter("action");
		String nombre=request.getParameter("txtNombre");
		String status=request.getParameter("cboStatus");
		String codigo=request.getParameter("txtCodigo");
				
		
		if ("Buscar".equals(accion)) {
		    // Invoke FirstServlet's job here.
			System.out.println("buscar");
			
			UsuarioService servicio = new UsuarioService();
			ArrayList<UsuarioDTO> lista = servicio.listarUsuarios(nombre);
			
			RequestDispatcher rd= request.getRequestDispatcher("/admin_MantenimientoUsuarios.jsp");
			
			HttpSession misesion = request.getSession();
			misesion.setAttribute("mensaje", lista);
					
			rd.forward(request, response);
		} else if ("Modificar".equals(accion)) {
		    // Invoke SecondServlet's job here.
			System.out.println("Modificar");
			
			UsuarioService servicio = new UsuarioService();
			 int rs = servicio.modificaUsuario(codigo,status);
			 
			 UsuarioService servicio1 = new UsuarioService();
			 ArrayList<UsuarioDTO> lista = servicio1.listarUsuarios();
			 
			 RequestDispatcher rd = request.getRequestDispatcher("/admin_MantenimientoUsuarios.jsp");
			 if (rs != 0) {
			 request.setAttribute("mensaje1", "Usuario modificado");
			 } else {
			 request.setAttribute("mensaje1", "Error al modificar");
			 }
			 			 				
			HttpSession misesion = request.getSession();
			misesion.setAttribute("mensaje", lista);
				
			rd.forward(request, response);
		}		
	}
}
