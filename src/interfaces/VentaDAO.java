package interfaces;

public interface VentaDAO {
	
	public int registrarVenta(String codigocarrito, String codigousuario, double subtotal,
							  double igv, double total, String estado);
	
	public String getCodigoUltimaVenta();

}
