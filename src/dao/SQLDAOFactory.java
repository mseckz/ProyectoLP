package dao;

import interfaces.AdministradorDAO;
import interfaces.CarritoDAO;
import interfaces.CategoriaDAO;
import interfaces.DetalleCarritoDAO;
import interfaces.DetalleVentaDAO;
import interfaces.JuegoDAO;
import interfaces.SerialDAO;
import interfaces.TipoDAO;
import interfaces.UsuarioDAO;
import interfaces.VentaDAO;

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

	@Override
	public AdministradorDAO getAdministradorDAO() {
		return new SQLAdministradorDAO();
	}

	@Override
	public DetalleVentaDAO getDetalleVentaDAO() {
		return new SQLDetalleVentaDAO();
	}

	@Override
	public VentaDAO getVentaDAO() {
		return new SQLVentaDAO();
	}

}
