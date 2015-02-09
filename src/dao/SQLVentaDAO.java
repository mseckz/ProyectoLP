package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import beans.VentaDTO;
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

	@Override
	public ArrayList<VentaDTO> listarOrdenesUsuario(String codigousuario) {
		
		ArrayList<VentaDTO> lista = new ArrayList<VentaDTO>();

		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			
			con = SQLServerConexion.getConexion();
			String sql = "SELECT * FROM VENTA WHERE CODIGOUSUA = ?";
			pst = con.prepareStatement(sql);
			pst.setString(1, codigousuario);
			rs = pst.executeQuery();
			
			while(rs.next()){
				VentaDTO v = new VentaDTO(rs.getString(1), rs.getString(2), rs.getString(3), 
						rs.getString(4), rs.getDouble(5), rs.getDouble(6), rs.getDouble(7), rs.getString(8));
				lista.add(v);
			}
			
		} catch (Exception e) {
			System.out.println("Error al listar ordenes de usuario");
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
