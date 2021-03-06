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
	
	@Override
	public ArrayList<DetalleCarritoDTO> listarDetallePorUsuario(String codigoCarrito) {
		
		ArrayList<DetalleCarritoDTO> listaDetCarrito = new ArrayList<DetalleCarritoDTO>();
		
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			con = SQLServerConexion.getConexion();
			String sql = "SELECT * FROM DETALLECARRITO WHERE CODIGOCARRITO = ?";
			pst = con.prepareStatement(sql);
			pst.setString(1, codigoCarrito);
			rs = pst.executeQuery();
			
			while(rs.next()){
				DetalleCarritoDTO d = new DetalleCarritoDTO(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getString(5));
				listaDetCarrito.add(d);
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

	@Override
	public int actulizarDetalleCompra(String codigoCarrito, String codigoJuego, int cantidad) {
		
		Connection con = null;
		PreparedStatement pst = null;
		int rs = 0;
		
		try {
			con = SQLServerConexion.getConexion();
			String sql = "UPDATE DETALLECARRITO SET CANTIDAD = ? WHERE CODIGOCARRITO = ? AND CODIGOJUEGO = ?";
			pst = con.prepareStatement(sql);
			pst.setInt(1, cantidad);
			pst.setString(2, codigoCarrito);
			pst.setString(3, codigoJuego);
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
	
	public int eliminarItemCarrito(String codCarrito, String codJuego){
		
		int rs = 0;
		Connection con = null;
		PreparedStatement pst = null;
		
		try {
			con = SQLServerConexion.getConexion();
			String sql = "DELETE FROM DETALLECARRITO WHERE CODIGOCARRITO = ? AND CODIGOJUEGO = ?";
			pst = con.prepareStatement(sql);
			pst.setString(1, codCarrito);
			pst.setString(2, codJuego);
			rs = pst.executeUpdate();		
			
		} catch (Exception e) {
			System.out.println("Error al eliminar juego en detalle");
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
	public void limpiarCarrito(String codigoCarrito) {

		Connection con = null;
		PreparedStatement pst = null;
		
		try {
			con = SQLServerConexion.getConexion();
			String sql = "DELETE FROM DETALLECARRITO WHERE CODIGOCARRITO = ?";
			pst = con.prepareStatement(sql);
			pst.setString(1, codigoCarrito);
			pst.executeUpdate();		
			
		} catch (Exception e) {
			System.out.println("Error al borrar items de carrito");
		} finally{
			try {
				if(pst != null) pst.close();
				if(con != null) con.close();
			} catch (Exception e2) {
				System.out.println("Error al cerrar desde el servlet");
			}
		}
	}

	@Override
	public DetalleCarritoDTO buscarRegistro(String codigocarrito, String codigojuego) {
		
		DetalleCarritoDTO dc = null;
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			con = SQLServerConexion.getConexion();
			String sql = "SELECT * FROM DETALLECARRITO WHERE CODIGOCARRITO = ? and CODIGOJUEGO = ?";
			pst = con.prepareStatement(sql);
			pst.setString(1, codigocarrito);
			pst.setString(2, codigojuego);
			rs = pst.executeQuery();
			
			if(rs.next()){
				dc = new DetalleCarritoDTO(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getString(5));
			}
			
		} catch (SQLException e) {
			System.out.println("Error al buscar juego en carrito");
		} finally {
			try {
				if(rs != null) rs.close();
				if(pst != null) pst.close();
				if(con != null) con.close();
			} catch (Exception e2) {
				System.out.println("Error al cerrar desde el servlet");
			}		
		}
		
		return dc;
	}

}
