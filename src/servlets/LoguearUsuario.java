package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.AdministradorDTO;
import beans.DetalleCarritoDTO;
import beans.UsuarioDTO;
import service.AdministradorService;
import service.CarritoService;
import service.DetalleCarritoService;
import service.UsuarioService;

/**
 * Servlet implementation class LoguearUsuario
 */
@WebServlet("/LoguearUsuario")
public class LoguearUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoguearUsuario() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		procesar(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		procesar(request, response);
	}

	private void procesar(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nombre = request.getParameter("txtNombre");
		String password = request.getParameter("txtPassword");

		// //////////////////////////////////
		// Loguear como administrador
		if (!nombre.contains("@")) {
			System.out.println("Loguear Administrador");

			AdministradorService servicio = new AdministradorService();
			AdministradorDTO validado = servicio.validaAdministrador(nombre,
					password);
			String estado = "";
			if (validado != null) {
				estado = validado.getEstado();
				System.out.println("" + estado);
			}

			RequestDispatcher rd;
			if (validado != null && estado.toLowerCase().matches("activo")) {
				rd = request.getRequestDispatcher("/admin_main.jsp");

				HttpSession misesion = request.getSession();
				System.out.println("Sesion Iniciada :   " + misesion.getId());
				System.out.println("Datos administrador servlet :   "
						+ validado.getNombre() + " "
						+ validado.getApellidoPaterno());
				misesion.setAttribute("datosconsesion", validado.getNombre()
						+ " " + validado.getApellidoPaterno());
				misesion.setAttribute("datosAdmin", "administrador");
				misesion.setAttribute("admindto", validado);

			} else {
				rd = request.getRequestDispatcher("/sesionRegistro.jsp");
				request.setAttribute("mensaje",
						"Usuario o contraseña incorrectos");
			}

			rd.forward(request, response);

		}

		// //////////////////////////////////
		// Loguear como Usuario
		if (nombre.contains("@")) {
			System.out.println("Loguear Usuario");

			UsuarioService servicio = new UsuarioService();
			UsuarioDTO validado = servicio.validaUsuario(nombre, password);
			System.out.println(validado.getCorreo());
			String estado = "";
			
			if (validado != null) {
				estado = validado.getEstado();
				
				RequestDispatcher rd;
				
				if(estado.toLowerCase().equals("activo")){
					rd = request.getRequestDispatcher("/user_main.jsp");

					HttpSession misesion = request.getSession();
					System.out.println("Sesion Iniciada :   " + misesion.getId());
					System.out.println("Datos usuario servlet:   "
							+ validado.getNombre() + " "
							+ validado.getApellidoPaterno());
					misesion.setAttribute("datosconsesion", validado.getNombre()
							+ " " + validado.getApellidoPaterno());
					misesion.setAttribute("datosUser", "usuario");
					
					// enviar usuario
					misesion.setAttribute("usuariodto", validado);
					
					// Listamos los juegos que tiene el usuario en el carrito
					DetalleCarritoService servDetalleCarr = new DetalleCarritoService();
					ArrayList<HashMap<String, Object>> listaCarrito = servDetalleCarr.listadoPorUsuario(validado.getCodigoUsuario());
					misesion.setAttribute("listaCarrito", listaCarrito);
				}
				else {
					rd = request.getRequestDispatcher("/sesionRegistro.jsp");
					request.setAttribute("mensaje", "Cuenta desactivada");
				}
				
				rd.forward(request, response);
			}
			else{
				request.setAttribute("mensaje", "Usuario o contraseña incorrectas");
				request.getRequestDispatcher("/sesionRegistro.jsp").forward(request, response);
			}	
		}

	}

}
