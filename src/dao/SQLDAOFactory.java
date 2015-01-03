package dao;

import interfaces.CarritoDAO;
import interfaces.CategoriaDAO;
import interfaces.DetalleCarritoDAO;
import interfaces.JuegoDAO;
import interfaces.SerialDAO;
import interfaces.TipoDAO;
import interfaces.UsuarioDAO;

public class SQLDAOFactory extends DAOFactory {

	@Override
	public UsuarioDAO getUsuarioDAO() {
		return new SQLUsuarioDAO();
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

	@Override
	public CategoriaDAO getCategoriaDAO() {
		return new SQLCategoriaDAO();
	}

	@Override
	public TipoDAO getTipoDAO() {
		return new SQLTipoDAO();
	}

	@Override
	public SerialDAO getSerialDAO() {
		return new SQLSerialDAO();
	}

}
