package service;

import java.util.ArrayList;
import java.util.HashMap;

import beans.DetalleCarritoDTO;
import interfaces.DetalleCarritoDAO;
import dao.DAOFactory;

public class DetalleCarritoService {
	
	DAOFactory fabrica = DAOFactory.getDAOFactory(1);
	DetalleCarritoDAO objDetalle = fabrica.getDetalleCarritoDAO();
	
	public int agregarJuego(String codigoCarrito, String codigoJuego, int cantidad, double costo, String estado){
		return objDetalle.agregarJuego(codigoCarrito,codigoJuego, cantidad,costo,estado);
	}
	
	public ArrayList<DetalleCarritoDTO> listadoJuegosCarrito(){
		return objDetalle.listadoJuegosCarrito();
	}
	
	public ArrayList<HashMap<String, Object>> listadoPorUsuario(String codigoUsuario){
		return objDetalle.listadoPorUsuario(codigoUsuario);
	}
	
}
