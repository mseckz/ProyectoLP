package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import utils.SQLServerConexion;
import beans.DetalleCarritoDTO;
import beans.JuegoDTO;
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
		} finally{
			try {
				if(pst != null) pst.close();
				if(con != null) con.close();
			} catch (Exception e2) {
				System.out.println("Error al cerrar desde el servlet");
			}
		}
		return rs;
	}

	@Override
	public ArrayList<DetalleCarritoDTO> listadoJuegosCarrito() {
		
		ArrayList <DetalleCarritoDTO> lista = new ArrayList<DetalleCarritoDTO>();
		
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			con = SQLServerConexion.getConexion();
			String sql = "SELECT * FROM DETALLECARRITO";
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			
			while(rs.next()){
				DetalleCarritoDTO d = new DetalleCarritoDTO(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getString(5));
				lista.add(d);
			}
			
		} catch (SQLException e) {
			System.out.println("Error al listar juegos");
		} finally {
			try {
				if(rs != null) rs.close();
				if(pst != null) pst.close();
				if(con != null) con.close();
			} catch (Exception e2) {
				System.out.println("Error al cerrar desde el servlet");
			}		
		}	
		return lista;
	}

}
