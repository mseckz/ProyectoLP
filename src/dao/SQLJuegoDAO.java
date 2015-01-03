package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import utils.SQLServerConexion;
import beans.JuegoDTO;
import interfaces.JuegoDAO;

public class SQLJuegoDAO implements JuegoDAO {

	@Override
	public ArrayList<JuegoDTO> listarJuegos() {
		
		ArrayList <JuegoDTO> lista = new ArrayList<JuegoDTO>();
		
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			con = SQLServerConexion.getConexion();
			String sql = "SELECT * FROM JUEGO";
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			
			while(rs.next()){
				JuegoDTO j = new JuegoDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getInt(5), 
						 		          rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9));
				lista.add(j);
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

	@Override
	public JuegoDTO buscarJuego(String codigoJuego) {
		
		JuegoDTO juego = null;
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			con = SQLServerConexion.getConexion();
			String sql = "SELECT * FROM JUEGO WHERE CODIGOJUEGO = ?";
			pst = con.prepareStatement(sql);
			pst.setString(1, codigoJuego);
			rs = pst.executeQuery();
			
			if(rs.next()){
				juego = new JuegoDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getInt(5), 
						 		          rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9));
			}
			
		} catch (SQLException e) {
			System.out.println("Error al buscar juego");
		} finally {
			try {
				if(rs != null) rs.close();
				if(pst != null) pst.close();
				if(con != null) con.close();
			} catch (Exception e2) {
				System.out.println("Error al cerrar desde el servlet");
			}		
		}	
		return juego;
	}

	@Override
	public ArrayList<JuegoDTO> listarJuego(String nombrejuego) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int AgregarJuego(String nombre, String descripcion, double costo,
			int tipo, int categoria, String codigoadmin, String estado) {
		int rs = 0;
		Connection con = null;
		PreparedStatement pst = null;
		try {
			con = SQLServerConexion.getConexion();

			String sql = "INSERT INTO JUEGO(NOMBRE, DESCRIPCION, COSTO, TIPO, CATEGORIA,CODIGOADMINISTRADOR,ESTADO,FECHAINGRESO)"
					+ "VALUES (?,?,?,?,?,?,?, GETDATE())";
			pst = con.prepareStatement(sql);
			System.out.println(sql);
			pst.setString(1, nombre);
			pst.setString(2, descripcion);
			pst.setDouble(3, costo);
			pst.setInt(4, tipo);
			pst.setInt(5, categoria);
			pst.setString(6, codigoadmin);
			pst.setString(7, estado);

			rs = pst.executeUpdate();
		} catch (Exception e) {
			System.out
					.println("Error en la conexión -- desde el Servlet -- registrar juego");

		} finally {
			try {
				if (pst != null)
					pst.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				System.out
						.println("Error al cerrar -- desde el Servlet -- registrar juego");
			}
		}

		return rs;
	}

	public int ModificarJuego(String codigoJuego, String nombre,
			String descripcion, double costo, int tipo, int categoria,
			String codigoadmin, String estado) {
		// TODO Auto-generated method stub
		int rs = 0;
		Connection con = null;
		PreparedStatement pst = null;
		try {
			con = SQLServerConexion.getConexion();

			String sql = "UPDATE JUEGO SET NOMBRE=?,DESCRIPCION=?,COSTO=?,TIPO=?,CATEGORIA=?,ESTADO=? WHERE CODIGOJUEGO=?";

			pst = con.prepareStatement(sql);
			System.out.println(sql);
			pst.setString(1, nombre);
			pst.setString(2, descripcion);
			pst.setDouble(3, costo);
			pst.setInt(4, tipo);
			pst.setInt(5, categoria);
			pst.setString(6, estado);
			pst.setString(7, codigoJuego);

			rs = pst.executeUpdate();
		} catch (Exception e) {
			System.out
					.println("Error en la conexión -- desde el Servlet -- registrar juego");

		} finally {
			try {
				if (pst != null)
					pst.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				System.out
						.println("Error al cerrar -- desde el Servlet -- registrar juego");
			}
		}
		return rs;
	}
	
}
