package interfaces;

import java.util.ArrayList;

import beans.DetalleVentaDTO;
import dao.DAOFactory;

public interface DetalleVentaDAO {
	
	public int registrarDetalleVenta(String codigoventa, String codigojuego, String codigoserial,
									String numserial, double costo, String estado);
	
	public ArrayList<DetalleVentaDTO> licenciasJuegoPorUsuario(String codigousuario, String codigojuego);

	public ArrayList<DetalleVentaDTO> listarOrdenesxJuegos(String codigoventa);

}
