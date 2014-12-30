package dao;

import interfaces.CarritoDAO;
import interfaces.DetalleCarritoDAO;
import interfaces.JuegoDAO;
import interfaces.UsuarioDAO;

public class SQLDAOFactory extends DAOFactory {

	@Override
	public UsuarioDAO getUsuarioDAO() {
		return null;
	}

	@Override
	public JuegoDAO getJuegoDAO() {
		return new SQLJuegoDAO();
	}

	@Override
	public CarritoDAO getCarritoDAO() {
		return new SQLCarritoDAO();
	}

	@Override
	public DetalleCarritoDAO getDetalleCarritoDAO() {
		return new SQLDetalleCarritoDAO();
	}

}
