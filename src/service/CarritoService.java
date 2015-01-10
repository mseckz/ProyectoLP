package service;

import beans.CarritoDTO;
import interfaces.CarritoDAO;
import dao.DAOFactory;

public class CarritoService {
	
	DAOFactory fabrica = DAOFactory.getDAOFactory(1);
	CarritoDAO objCarrito = fabrica.getCarritoDAO();
	
	public int crearCarritoCompra(String codUsuario){
		return objCarrito.crearCarritoCompra(codUsuario);
	}
	
	public CarritoDTO buscarCarrito(String codUsuario){
		return objCarrito.buscarCarrito(codUsuario);
	}

}
