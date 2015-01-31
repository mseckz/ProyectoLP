package service;

import interfaces.DetalleVentaDAO;
import dao.DAOFactory;

public class DetalleVentaService {
	
	DAOFactory fabrica = DAOFactory.getDAOFactory(1);
	DetalleVentaDAO objDetalle = fabrica.getDetalleVentaDAO();
	
	public int registrarDetalleVenta(String codigoventa, String codigojuego, String codigoserial,
			String numserial, double costo, String estado){
		
		return objDetalle.registrarDetalleVenta(codigoventa, codigojuego, codigoserial, numserial, costo, estado);
	}

}
