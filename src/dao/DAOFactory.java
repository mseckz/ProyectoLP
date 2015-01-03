package dao;

import interfaces.CarritoDAO;
import interfaces.CategoriaDAO;
import interfaces.DetalleCarritoDAO;
import interfaces.JuegoDAO;
import interfaces.SerialDAO;
import interfaces.TipoDAO;
import interfaces.UsuarioDAO;

public abstract class DAOFactory {
	
	public static final int SQL = 1;
	
	public abstract UsuarioDAO getUsuarioDAO();
	public abstract JuegoDAO getJuegoDAO();
	public abstract CarritoDAO getCarritoDAO();
	public abstract DetalleCarritoDAO getDetalleCarritoDAO();
	public abstract CategoriaDAO getCategoriaDAO();
	public abstract TipoDAO getTipoDAO();
	public abstract SerialDAO getSerialDAO();
	
	public static DAOFactory getDAOFactory(int qFactory) {
		switch (qFactory) {
		case SQL:
			return new SQLDAOFactory();
		default:
			return null;
		}
	}

}
