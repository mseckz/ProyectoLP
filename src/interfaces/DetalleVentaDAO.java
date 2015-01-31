package interfaces;

import java.util.ArrayList;

import beans.DetalleVentaDTO;
import dao.DAOFactory;

public interface DetalleVentaDAO {
	
	public int registrarDetalleVenta(String codigoventa, String codigojuego, String codigoserial,
									String numserial, double costo, String estado);
	
	public ArrayList<DetalleVentaDTO> listarJuegosAdquiridos(String codigousuario);

}
