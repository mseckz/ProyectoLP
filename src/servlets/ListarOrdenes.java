package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.JuegoService;
import service.VentaService;
import beans.UsuarioDTO;
import beans.VentaDTO;

/**
 * Servlet implementation class ListarOrdenes
 */
@WebServlet("/ListarOrdenes")
public class ListarOrdenes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListarOrdenes() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesar(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesar(request,response);
	}

	private void procesar(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession();
		UsuarioDTO usu = (UsuarioDTO) sesion.getAttribute("usuariodto");
		
		VentaService servicio=new VentaService();
		ArrayList<VentaDTO> lista=servicio.listarOrdenesUsuario(usu.getCodigoUsuario());
		
		request.setAttribute("ordenes", lista);
		
		request.getRequestDispatcher("/user_Ordenes.jsp").forward(request, response);	
		
		
	}

}
