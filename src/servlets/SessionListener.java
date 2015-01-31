package servlets;

import java.util.ArrayList;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import jdk.nashorn.internal.ir.RuntimeNode.Request;
import service.CategoriaService;
import beans.CategoriaJuegoDTO;

/**
 * Application Lifecycle Listener implementation class SessionListener
 *
 */
@WebListener
public class SessionListener implements HttpSessionListener {

    /**
     * Default constructor. 
     */
    public SessionListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent arg0) {
    	CategoriaService servicio = new CategoriaService();
        ArrayList<CategoriaJuegoDTO> lista = servicio.listarCategorias();
        
        arg0.getSession().setAttribute("listaCategorias", lista);
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent arg0) {
    	arg0.getSession().removeAttribute("listaCategorias");
    }
	
}
