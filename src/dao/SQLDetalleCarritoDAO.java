package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

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
	
	
	public ArrayList<HashMap<String, Object>> listadoPorUsuario(String codigoUsuario){
		
		ArrayList<HashMap<String, Object>> listaDetCarrito = new ArrayList<HashMap<String, Object>>();
	
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			con = SQLServerConexion.getConexion();
			String sql = "exec USP_LISTAR_CARRITO_USUARIO ?";
			pst = con.prepareStatement(sql);
			pst.setString(1, codigoUsuario);
			rs = pst.executeQuery();
			
			while(rs.next()){
				HashMap<String, Object> detalle = new HashMap<String, Object>();
				detalle.put("nombreJuego", rs.getString(1));
				detalle.put("categoria", rs.getString(2));
				detalle.put("costo", rs.getDouble(3));
				detalle.put("cantidad", rs.getInt(4));
		
				listaDetCarrito.add(detalle);
			}
			
		} catch (SQLException e) {
			System.out.println("Error al listar juegos de carrito");
		} finally {
			try {
				if(rs != null) rs.close();
				if(pst != null) pst.close();
				if(con != null) con.close();
			} catch (Exception e2) {
				System.out.println("Error al cerrar desde el servlet");
			}		
		}
		
		return listaDetCarrito;	
	}

}
