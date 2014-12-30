package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import utils.SQLServerConexion;
import beans.DetalleCarritoDTO;
import interfaces.DetalleCarritoDAO;

public class SQLDetalleCarritoDAO implements DetalleCarritoDAO {

	@Override
	public int agregarJuego(String codigoCarrito, String codigoJuego, int cantidad, double costo, String estado) {
		
		Connection con = null;
		PreparedStatement pst = null;
		int rs = 0;
		
		try {
			con = SQLServerConexion.getConexion();
			String sql = "INSERT INTO DETALLECARRITO VALUES (?,?,?,?,?)";
			pst = con.prepareStatement(sql);
			pst.setString(1, codigoCarrito);
			pst.setString(2, codigoJuego);
			pst.setInt(3, cantidad);
			pst.setDouble(4, costo);
			pst.setString(5, estado);
			rs = pst.executeUpdate();
			
			
		} catch (Exception e) {
			System.out.println("Error al insertar juego en detalle");
		}
		
		return rs;
	}

	@Override
	public ArrayList<DetalleCarritoDTO> listadoJuegosCarrito() {
		
		return null;
	}

}
