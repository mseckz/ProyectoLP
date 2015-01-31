package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import utils.SQLServerConexion;
import interfaces.VentaDAO;

public class SQLVentaDAO implements VentaDAO {

	@Override
	public int registrarVenta(String codigocarrito, String codigousuario, 
			double subtotal, double igv, double total, String estado) {
		
		int rs = 0;
		Connection con = null;
		PreparedStatement pst = null;
		
		try {
			con = SQLServerConexion.getConexion();
			String sql = "INSERT INTO VENTA (CODIGOCARRITO,CODIGOUSUA,FECHAVEN,SUBTOTAL,IGV,TOTAL,ESTADO) VALUES (?,?,GETDATE(),?,?,?,?)";
			pst = con.prepareStatement(sql);
			pst.setString(1, codigocarrito);
			pst.setString(2, codigousuario);
			pst.setDouble(3, subtotal);
			pst.setDouble(4, igv);
			pst.setDouble(5, total);
			pst.setString(6, estado);
			rs = pst.executeUpdate();			
			
		} catch (SQLException e) {
			System.out.println("Error al registrar venta " + e);
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
	public String getCodigoUltimaVenta() {
		
		String codigo = "";
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			
			con = SQLServerConexion.getConexion();
			String sql = "SELECT TOP 1 CODIGOVENTA FROM VENTA ORDER BY CODIGOVENTA DESC";
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			
			if(rs.next()){
				codigo = rs.getString(1);
			}
			
		} catch (Exception e) {
			System.out.println("Error al devolver codigo");
		} finally {
			try {
				if(rs != null) rs.close();
				if(pst != null) pst.close();
				if(con != null) con.close();
			} catch (Exception e2) {
				System.out.println("Error al cerrar desde el servlet");
			}
		}
		
		return codigo;
	}
	
	

}
