package servlets;

import java.util.ArrayList;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import service.CarritoService;
import beans.CarritoDTO;
import beans.DetalleCarritoDTO;
import beans.UsuarioDTO;

/**
 * Application Lifecycle Listener implementation class SessionListenerCarrito
 *
 */
@WebListener
public class SessionListenerCarrito implements HttpSessionListener {

    /**
     * Default constructor. 
     */
    public SessionListenerCarrito() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent arg0) {
        
    	
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent arg0) {
    	
    }
	
}
