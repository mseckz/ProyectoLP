package interfaces;

import java.util.ArrayList;
import java.util.HashMap;

import beans.DetalleCarritoDTO;

public interface DetalleCarritoDAO {
	
	public int agregarJuego(String codigoCarrito, String codigoJuego, int cantidad, double costo, String estado);
	
	public ArrayList<DetalleCarritoDTO> listadoJuegosCarrito();
	
	public ArrayList<DetalleCarritoDTO> listarDetallePorUsuario(String codigocarrito);
	
	//actualizar carrito de compra
	public int actulizarDetalleCompra(String codigoCarrito, String codigoJuego, int cantidad);
	
	public int eliminarItemCarrito(String codCarrito, String codJuego);
}
