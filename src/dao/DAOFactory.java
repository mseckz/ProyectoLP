package dao;

import interfaces.AdministradorDAO;
import interfaces.CarritoDAO;
import interfaces.CategoriaDAO;
import interfaces.DetalleCarritoDAO;
import interfaces.DetalleVentaDAO;
import interfaces.JuegoDAO;
import interfaces.ReportesDAO;
import interfaces.SerialDAO;
import interfaces.TipoDAO;
import interfaces.UsuarioDAO;
import interfaces.VentaDAO;

public abstract class DAOFactory {
	
	public static final int SQL = 1;
	
	public abstract UsuarioDAO getUsuarioDAO();
	public abstract JuegoDAO getJuegoDAO();
	public abstract CarritoDAO getCarritoDAO();
	public abstract DetalleCarritoDAO getDetalleCarritoDAO();
	public abstract CategoriaDAO getCategoriaDAO();
	public abstract TipoDAO getTipoDAO();
	public abstract SerialDAO getSerialDAO();
	public abstract AdministradorDAO getAdministradorDAO();
	public abstract DetalleVentaDAO getDetalleVentaDAO();
	public abstract VentaDAO getVentaDAO();
	public abstract ReportesDAO getReportesDAO();
	
	public static DAOFactory getDAOFactory(int qFactory) {
		switch (qFactory) {
		case SQL:
			return new SQLDAOFactory();
		default:
			return null;
		}
	}

}
