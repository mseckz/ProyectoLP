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

import service.JuegoService;
import service.UsuarioService;
import beans.JuegoDTO;
import beans.UsuarioDTO;

/**
 * Servlet implementation class BuscarModificarJuego
 */
@WebServlet("/BuscarModificarJuego")
public class BuscarModificarJuego extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuscarModificarJuego() {
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
		String codigojuego=request.getParameter("txtCodigoJuego");
		String nombreJuego=request.getParameter("txtNombreJuego");
		String descripcionJuego=request.getParameter("txtDescripcionJuego");
		double precioJuego=Double.parseDouble(request.getParameter("txtPrecioJuego"));
		String codigoAdministrador="AD100000";
		int categoriaJuego=Integer.parseInt(request.getParameter("cboCategoria"));
		int tipoJuego=Integer.parseInt(request.getParameter("cboTipo"));	
		String estadoJuego=request.getParameter("cboEstadoJuegos");	
		
		
		
		if ("Buscar".equals(accion)) {
		    // Invoke FirstServlet's job here.
			System.out.println("buscar");
			
			JuegoService servicio = new JuegoService();
			ArrayList<JuegoDTO>lista = servicio.listarJuego(nombreJuego);
			
			RequestDispatcher rd= request.getRequestDispatcher("/adminMantenimientoJuegos.jsp");
			
			HttpSession misesion = request.getSession();
			misesion.setAttribute("listado", lista);
					
			rd.forward(request, response);
		} else if ("Agregar".equals(accion)) {
		    
			System.out.println("Agregar");
			
				JuegoService servicio = new JuegoService();
				int rs = servicio.AgregarJuego(nombreJuego, descripcionJuego, precioJuego, tipoJuego, categoriaJuego, codigoAdministrador, estadoJuego);

				request.setAttribute("error", "Algo no esta bien");
				
				ArrayList<JuegoDTO> lista = servicio.listarJuegos();
				request.getSession().setAttribute("listado", lista);
				
				request.getRequestDispatcher("/adminMantenimientoJuegos.jsp").forward(request, response);


		}else if ("Modificar".equals(accion)) {
		    
			System.out.println("Modificar");
			
			
			JuegoService servicio = new JuegoService();
			int rs = servicio.ModificarJuego(codigojuego, nombreJuego, descripcionJuego, precioJuego, tipoJuego, categoriaJuego, codigoAdministrador, estadoJuego);
			
			JuegoService servicios = new JuegoService();
			ArrayList<JuegoDTO> lista = servicio.listarJuegos();
			request.getSession().setAttribute("listado", lista);

			RequestDispatcher rd = request.getRequestDispatcher("/adminMantenimientoJuegos.jsp");
				
			rd.forward(request, response);
		}
	}
}
