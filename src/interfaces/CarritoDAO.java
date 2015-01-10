package interfaces;

import beans.CarritoDTO;

public interface CarritoDAO {
	
	public int crearCarritoCompra(String codUsuario);
	
	public CarritoDTO buscarCarrito(String codUsuario);

}
