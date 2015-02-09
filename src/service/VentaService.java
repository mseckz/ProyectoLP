package service;

import java.util.ArrayList;

import beans.VentaDTO;
import interfaces.VentaDAO;
import dao.DAOFactory;

public class VentaService {
	
	DAOFactory fabrica = DAOFactory.getDAOFactory(1);
	VentaDAO objVenta = fabrica.getVentaDAO();
	
	public int registrarVenta(String codigocarrito, String codigousuario, double subtotal,
			  double igv, double total, String estado){
		
		return objVenta.registrarVenta(codigocarrito, codigousuario, subtotal, igv, total, estado);
	}

	public String getCodigoUltimaVenta(){
		return objVenta.getCodigoUltimaVenta();
	}
	public ArrayList<VentaDTO> listarOrdenesUsuario(String codigousuario){
		return objVenta.listarOrdenesUsuario(codigousuario);
	}
}
