package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import beans.DetalleVentaDTO;
import utils.SQLServerConexion;
import interfaces.DetalleVentaDAO;

public class SQLDetalleVentaDAO implements DetalleVentaDAO {

	@Override
	public int registrarDetalleVenta(String codigoventa, String codigojuego,
			String codigoserial, String numserial, double costo, String estado) {
		
		int rs = 0;
		Connection con = null;
		PreparedStatement pst = null;
		
		try {
			con = SQLServerConexion.getConexion();
			String sql = "INSERT INTO DETALLEVENTA VALUES (?,?,?,?,?,?)";
			pst = con.prepareStatement(sql);
			pst.setString(1, codigoventa);
			pst.setString(2, codigojuego);
			pst.setString(3, codigoserial);
			pst.setString(4, numserial);
			pst.setDouble(5, costo);
			pst.setString(6, estado);
			rs = pst.executeUpdate();			
			
		} catch (Exception e) {
			System.out.println("Error al registrar detalle de venta");
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
	public ArrayList<DetalleVentaDTO> licenciasJuegoPorUsuario(String codigousuario, String codigojuego) {
		
		ArrayList<DetalleVentaDTO> lista = new ArrayList<DetalleVentaDTO>();
		
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			con = SQLServerConexion.getConexion();
			String sql = "select dv.* from DETALLEVENTA dv inner join venta v on dv.CODIGOVENTA = v.CODIGOVENTA " +
						"inner join USUARIO u on v.CODIGOUSUA = u.CODIGOUSUARIO where v.CODIGOUSUA = ? and dv.CODIGOJUEGO = ?";
			pst = con.prepareStatement(sql);
			pst.setString(1, codigousuario);
			pst.setString(2, codigojuego);
			rs = pst.executeQuery();
			
			while(rs.next()){
				DetalleVentaDTO dv = new DetalleVentaDTO(rs.getString(1), rs.getString(2), rs.getString(3), 
														rs.getString(4), rs.getDouble(5), rs.getString(6));
				lista.add(dv);
			}
			
		} catch (SQLException e) {
			System.out.println("Error al lista juegos y licencias adquiridas");
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
	public ArrayList<DetalleVentaDTO> listarOrdenesxJuegos(String codigoventa) {
		
		ArrayList<DetalleVentaDTO> lista = new ArrayList<DetalleVentaDTO>();
		
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			con = SQLServerConexion.getConexion();
			String sql = "select * from DETALLEVENTA where CODIGOVENTA = ?";
			pst = con.prepareStatement(sql);
			pst.setString(1, codigoventa);
			rs = pst.executeQuery();
			
			while(rs.next()){
				DetalleVentaDTO dv = new DetalleVentaDTO(rs.getString(1), rs.getString(2), rs.getString(3), 
														rs.getString(4), rs.getDouble(5), rs.getString(6));
				lista.add(dv);
			}
			
		} catch (SQLException e) {
			System.out.println("Error al lista juegos y licencias adquiridas");
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
