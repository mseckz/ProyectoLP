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
import beans.AdministradorDTO;
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

	private void procesarServlet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		AdministradorDTO admin = (AdministradorDTO) request.getSession().getAttribute("admindto");
		
		String accion = request.getParameter("action");
		
		RequestDispatcher rd= request.getRequestDispatcher("/adminMantenimientoJuegos.jsp");
		
		if ("Buscar".equals(accion)) {
			System.out.println("buscar");
			
			ArrayList<JuegoDTO> lista = null;

			String nombreJuego=request.getParameter("txtNombreJuego");
			
			JuegoService servicio = new JuegoService();
			
			if(nombreJuego.trim() == ""){
				request.setAttribute("error", "Ingrese nombre de juego");
				lista = servicio.listarJuegos();
			}
			else{
				lista = servicio.listarJuego(nombreJuego);
			}
			HttpSession misesion = request.getSession();
			misesion.setAttribute("listado", lista);
			
		} else if ("Agregar".equals(accion)) {
			
			String nombreJuego=request.getParameter("txtNombreJuego");
			String descripcionJuego=request.getParameter("txtDescripcionJuego");
			double precioJuego=Double.parseDouble(request.getParameter("txtPrecioJuego"));
			String codigoAdministrador= admin.getCodigoAdministrador();
			int categoriaJuego=Integer.parseInt(request.getParameter("cboCategoria"));
			int tipoJuego=Integer.parseInt(request.getParameter("cboTipo"));	
			String estadoJuego=request.getParameter("cboEstadoJuegos");	
		    
			System.out.println("Agregar");
			
			JuegoService servicio = new JuegoService();
			int rs = servicio.AgregarJuego(nombreJuego, descripcionJuego, precioJuego, tipoJuego, categoriaJuego, codigoAdministrador, estadoJuego);
			
			if(rs == 0){
				request.setAttribute("error", "Error al agregar juego");
			}
			else{
				request.setAttribute("confirmacion", "Juego Agregado");
			}
				
			ArrayList<JuegoDTO> lista = servicio.listarJuegos();
			request.getSession().setAttribute("listado", lista);
			
		}else if ("Modificar".equals(accion)) {
			
			String codigojuego=request.getParameter("txtCodigoJuego");
			String nombreJuego=request.getParameter("txtNombreJuego");
			String descripcionJuego=request.getParameter("txtDescripcionJuego");
			double precioJuego=Double.parseDouble(request.getParameter("txtPrecioJuego"));
			int categoriaJuego=Integer.parseInt(request.getParameter("cboCategoria"));
			int tipoJuego=Integer.parseInt(request.getParameter("cboTipo"));	
			String estadoJuego=request.getParameter("cboEstadoJuegos");	
		    
			System.out.println("Modificar");
			
			JuegoService servicio = new JuegoService();
			int rs = servicio.ModificarJuego(codigojuego, nombreJuego, descripcionJuego, precioJuego, tipoJuego, categoriaJuego, estadoJuego);
			
			if( rs == 0){
				request.setAttribute("error", "Error al modificar juego");
			}
			else{
				request.setAttribute("confirmacion", "Juego Modificado");
			}
			
			ArrayList<JuegoDTO> lista = servicio.listarJuegos();
			request.getSession().setAttribute("listado", lista);
		}
		
		rd.forward(request, response);
	}
}
