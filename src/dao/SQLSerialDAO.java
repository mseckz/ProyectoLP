package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import utils.SQLServerConexion;
import beans.SerialDTO;
import interfaces.SerialDAO;

public class SQLSerialDAO implements SerialDAO{
	
	@Override
	public ArrayList<SerialDTO> listado() {
		PreparedStatement pst = null;
		Connection con = null;
		ResultSet rs = null;
		ArrayList<SerialDTO> lista =new ArrayList<SerialDTO>();
		SerialDTO prod = null;
		
		try {
			con= SQLServerConexion.getConexion();
			String sql = "SELECT * FROM LICENCIA";
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			while (rs.next()) {
				
				prod = new SerialDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
				lista.add(prod);
				System.out.println(lista);
			}

		} catch (Exception e) {
			System.out.println("Error al listar los juegos"+e);
		} finally{
			try {
				if(rs != null) rs.close();
				if(pst!=null) pst.close(); 
				if(con!=null) con.close();
			} catch (SQLException e) {
				System.out.println("Error al cerrar -- desde el Servlet -- registrar licencia");
			}
		}
		return lista;
	}
	
	@Override
	public int AgregarLicencia(String codigoJuego, String serial, String estado) {
		int rs = 0;
		Connection con = null;    		// retorna si hubo o no conexion en SQLConexion
		PreparedStatement pst=null;		// sirve para las sentencias
		try {
			con=SQLServerConexion.getConexion();
			
			String sql="INSERT INTO LICENCIA (CODIGOJUEGO, SERIAL, ESTADO,FECHACREACION) VALUES (?, ?, ?, GETDATE())";  // sentencia de consulta
			
			pst=con.prepareStatement(sql);
			pst.setString(1, codigoJuego);			// asigna los parametros del INSERT
			pst.setString(2, serial);
			pst.setString(3, estado);			

			rs = pst.executeUpdate();  // ejecuta INSERT
			
		} catch (Exception e) {
			System.out.println("Error en la conexión -- desde el Servlet -- registrar licencia");
		} finally {
			try {
				if(pst!=null) pst.close();
				if(con!=null) con.close();
			} catch (SQLException e) {
				System.out.println("Error al cerrar -- desde el Servlet -- registrar licencia");
			}
		}
		
		return rs;
	}

	
	@Override
	public int modificaLicencia(String codigo, String status) {
		
		int rs = 0;
		Connection con = null;
		PreparedStatement pst = null;

		try {
			con = SQLServerConexion.getConexion();
			String sql = "update LICENCIA set ESTADO='" + status
					+ "' where CODIGOSERIAL='" + codigo + "'";
			pst = con.prepareStatement(sql);

			rs = pst.executeUpdate();
		} catch (Exception e) {
			System.out.println("Error en la conexión --desde el Servlet -- modificar LICENCIA");
		} finally {
			try {
				if (pst != null)
					pst.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				System.out.println("Error al cerrar --desde el Servlet  -- modificar Licencia SQL");
			}
		}
		return rs;
	}

	@Override
	public ArrayList<SerialDTO> listarSerial(String codigo) {
		
		PreparedStatement pst = null;
		Connection con = null;
		ResultSet rs = null;
		ArrayList<SerialDTO> lista =new ArrayList<SerialDTO>();
		SerialDTO prod = null;
		
		try {
			con= SQLServerConexion.getConexion();
			String sql = "SELECT * FROM LICENCIA where CODIGOJUEGO = ?";
			pst = con.prepareStatement(sql);
			pst.setString(1, codigo);
			rs = pst.executeQuery();
			while (rs.next()) {
				
				prod = new SerialDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
				lista.add(prod);
				System.out.println(lista);
			}

		} catch (Exception e) {
			System.out.println("Error al listar los juegos"+e);
		} finally{
			try {
				if(rs != null) rs.close();
				if(pst!=null) pst.close(); 
				if(con!=null) con.close();
			} catch (SQLException e) {
				System.out.println("Error al cerrar -- desde el Servlet -- registrar licencia");
			}
		}
		return lista;
	}

	@Override
	public ArrayList<SerialDTO> getLicenciasCompra(String codigojuego,
			int cantidad) {
		
		PreparedStatement pst = null;
		Connection con = null;
		ResultSet rs = null;
		ArrayList<SerialDTO> lista =new ArrayList<SerialDTO>();
		SerialDTO prod = null;
		
		try {
			con= SQLServerConexion.getConexion();
			String sql = "SELECT TOP (?) * FROM LICENCIA where CODIGOJUEGO = ? AND ESTADO = 'libre'";
			pst = con.prepareStatement(sql);
			pst.setInt(1, cantidad);
			pst.setString(2, codigojuego);
			rs = pst.executeQuery();
			while (rs.next()) {
				
				prod = new SerialDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
				lista.add(prod);
			}

		} catch (Exception e) {
			System.out.println("Error al listar los juegos"+e);
		} finally{
			try {
				if(rs != null) rs.close();
				if(pst!=null) pst.close(); 
				if(con!=null) con.close();
			} catch (SQLException e) {
				System.out.println("Error al cerrar -- desde el Servlet -- registrar licencia");
			}
		}
		return lista;
	}

}
