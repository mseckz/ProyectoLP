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
	
	public ArrayList<DetalleCarritoDTO> listarDetallePorUsuario(String codigoCarrito){
		return objDetalle.listarDetallePorUsuario(codigoCarrito);
	}
	
	public int actulizarDetalleCompra(String codigoCarrito, String codigoJuego, int cantidad){
		return objDetalle.actulizarDetalleCompra(codigoCarrito, codigoJuego, cantidad);
	}
	
	public int eliminarItemCarrito(String codCarrito, String codJuego){
		return objDetalle.eliminarItemCarrito(codCarrito, codJuego);
	}
	
	public void limpiarCarrito(String codigoCarrito){
		objDetalle.limpiarCarrito(codigoCarrito);
	}
}
