package interfaces;

import java.util.ArrayList;

import beans.VentaDTO;

public interface VentaDAO {
	
	public int registrarVenta(String codigocarrito, String codigousuario, double subtotal,
							  double igv, double total, String estado);
	
	public String getCodigoUltimaVenta();
	
	public ArrayList<VentaDTO> listarOrdenesUsuario(String codigousuario);

}
