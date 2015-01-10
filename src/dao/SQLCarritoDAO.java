package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import beans.CarritoDTO;
import utils.SQLServerConexion;
import interfaces.CarritoDAO;

public class SQLCarritoDAO implements CarritoDAO {

	@Override
	public int crearCarritoCompra(String codUsuario) {
		
		Connection con = null;
		PreparedStatement pst = null;
		int rs = 0;
		
		try {
			con = SQLServerConexion.getConexion();
			String sql = "INSERT INTO CARRITO (CODIGOUSUARIO, ESTADO) VALUES (?, 'En proceso')";
			pst = con.prepareStatement(sql);
			pst.setString(1, codUsuario);
			rs = pst.executeUpdate();
		
		} catch (Exception e) {
			System.out.println("Error al crear carrito compra");
		} finally {
			try {
				if(pst != null) pst.close();
				if(con != null) con.close();
			} catch (SQLException e2) {
				System.out.println("Error al cerrar desde servlet -- crear carrito compra");
			}
		}		
		return rs;
	}

	@Override
	public CarritoDTO buscarCarrito(String codUsuario) {
		
		CarritoDTO car = null;
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			con = SQLServerConexion.getConexion();
			String sql = "SELECT * FROM CARRITO WHERE CODIGOUSUARIO = ?";
			pst = con.prepareStatement(sql);
			pst.setString(1, codUsuario);
			rs = pst.executeQuery();
			
			if(rs.next()){
				car = new CarritoDTO(rs.getString(1), rs.getString(2), rs.getString(3));
			}
			
		} catch (Exception e) {
			System.out.println("Error al busca carrito de compra");
		} finally {
			try {
				if(rs != null) rs.close();
				if(pst != null) pst.close();
				if(con != null) con.close();
			} catch (SQLException e2) {
				System.out.println("Error al cerrar desde servlet -- buscar carrito");
			}
		}
		return car;
	}
	
}
