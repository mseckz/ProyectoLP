package interfaces;

import java.util.ArrayList;
import java.util.HashMap;

import beans.DetalleCarritoDTO;

public interface DetalleCarritoDAO {
	
	public int agregarJuego(String codigoCarrito, String codigoJuego, int cantidad, double costo, String estado);
	
	public ArrayList<DetalleCarritoDTO> listadoJuegosCarrito();
	
	public ArrayList<HashMap<String, Object>> listadoPorUsuario(String codigoUsuario);
}
