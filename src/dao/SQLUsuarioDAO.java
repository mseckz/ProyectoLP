package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;




import utils.SQLServerConexion;
import beans.JuegoDTO;
import beans.UsuarioDTO;
import interfaces.UsuarioDAO;

public class SQLUsuarioDAO implements UsuarioDAO {

	@Override
	public ArrayList<UsuarioDTO> listarUsuarios() {
		// TODO Auto-generated method stub
		ArrayList<UsuarioDTO> lista = new ArrayList<UsuarioDTO>();
		
		Connection con = null;
		PreparedStatement pst=null;
	
		// TODO Auto-generated method stub
		try {
			con=SQLServerConexion.getConexion();
			String sql="select * from USUARIO";
			pst=con.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			
			while(rs.next()){
				String codigoUsuario=rs.getString(1);
				String usuario = rs.getString(2);
				String clave=rs.getString(3);
				String nombre=rs.getString(4);
				String apellidoPaterno=rs.getString(5);
				String apellidoMaterno=rs.getString(6);
				String fechaNacimiento=rs.getString(7);
				String correo=rs.getString(8);
				String estado=rs.getString(9);
				String fechaCreacion=rs.getString(10);
				UsuarioDTO user = new UsuarioDTO(codigoUsuario,usuario,clave,nombre,apellidoPaterno,apellidoMaterno,fechaNacimiento,correo,estado,fechaCreacion);
				lista.add(user);
			}
			
		} catch (Exception e) {
			System.out.println("Error en la conexión -- desde el Servlet -- listar usuarios Exception");
		} finally {
			try {
				if(pst!=null) pst.close();
				if(con!=null) con.close();
			} catch (SQLException e) {
				System.out.println("Error al cerrar -- desde el Servlet -- listar usuarios ExceptionSQL");
			}
		}
		return lista;
	}

	@Override
	public ArrayList<UsuarioDTO> listarUsuarios(String nombre) {
		// TODO Auto-generated method stub
		ArrayList<UsuarioDTO> lista = null;

		Connection con = null;
		PreparedStatement pst = null;

		// TODO Auto-generated method stub
		try {
			con = SQLServerConexion.getConexion();
			String sql = "select * from USUARIO where APELLIDOMATERNO like '%"
					+ nombre + "%' or APELLIDOPATERNO like '%" + nombre
					+ "%' or NOMBRE like '%" + nombre + "%'";
			pst = con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			lista = new ArrayList<UsuarioDTO>();

			while (rs.next()) {
				String codigoUsuario = rs.getString(1);
				String usuario = rs.getString(2);
				String clave = rs.getString(3);
				String nombre1 = rs.getString(4);
				String apellidoPaterno = rs.getString(5);
				String apellidoMaterno = rs.getString(6);
				String fechaNacimiento = rs.getString(7);
				String correo = rs.getString(8);
				String estado = rs.getString(9);
				String fechaCreacion = rs.getString(10);
				UsuarioDTO user = new UsuarioDTO(codigoUsuario, usuario,clave, nombre1,
						apellidoPaterno, apellidoMaterno, fechaNacimiento,correo, estado, fechaCreacion);
				lista.add(user);
			}

		} catch (Exception e) {
			System.out.println("Classpath: "
					+ System.getProperty("java.class.path"));
			System.out
					.println("Error en la conexión -- desde el Servlet -- listar usuarios Exception");
		} finally {
			try {
				if (pst != null)
					pst.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				System.out
						.println("Error al cerrar -- desde el Servlet -- listar usuarios ExceptionSQL");
			}
		}
		return lista;
	}

	@Override
	public int modificaUsuario(String codigo, String status) {
		// TODO Auto-generated method stub
		int rs = 0;
		Connection con = null;
		PreparedStatement pst = null;

		try {
			con = SQLServerConexion.getConexion();
			String sql = "update USUARIO set ESTADO='" + status
					+ "' where CODIGOUSUARIO='" + codigo + "'";
			pst = con.prepareStatement(sql);

			rs = pst.executeUpdate();
		} catch (Exception e) {
			System.out.println("Error en la conexión --desde el Servlet -- modificar usuario");
		} finally {
			try {
				if (pst != null)
					pst.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				System.out.println("Error al cerrar --desde el Servlet  -- modificar usuario SQL");
			}
		}
		return rs;
	}

	@Override
	public int registrarUsuario(String usuario,String clave,String nombre,String apellidoPaterno,String apellidoMaterno,String fechaNacimiento,String correo) {
		
		Connection con = null;
		PreparedStatement pst = null;
		int rs = 0;
		
		try {
			con = SQLServerConexion.getConexion();
			String sql = "INSERT INTO USUARIO (USUARIO,CLAVE,NOMBRE, APELLIDOPATERNO, APELLIDOMATERNO, FECHANACIMIENTO,CORREO, ESTADO, FECHACREACION) VALUES (?,?,?,?,?,?,?,'activo', GETDATE())";
			pst = con.prepareStatement(sql);
			pst.setString(1,usuario);
			pst.setString(2, clave);
			pst.setString(3, nombre);
			pst.setString(4, apellidoPaterno);
			pst.setString(5, apellidoMaterno);
			pst.setString(6, fechaNacimiento);
			pst.setString(7, correo);
			
			rs = pst.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("Error en la conexión --desde el Servlet -- Registrar Usuario");
		} finally{
			try {
				if (pst != null) pst.close();
				if (con != null) con.close();
			} catch (SQLException e) {
				System.out.println("Error al cerrar --desde el Servlet  -- registrar Usuario");
			}
		}
		return rs;
	}

	@Override
	public UsuarioDTO loginUsuario(String usuario, String clave) {
		
		UsuarioDTO usu = null;
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			con = SQLServerConexion.getConexion();
			String sql = "exec USP_VALIDAR_USUARIO ?,?";
			pst = con.prepareStatement(sql);
			pst.setString(1, usuario);
			pst.setString(2, clave);
			rs = pst.executeQuery();
			
			if(rs.next()){
				usu = new UsuarioDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
			}
		} catch (Exception e) {
			System.out.println("Error al cerrar --desde el Servlet  -- validar login usuario");
		} finally {
			try {
				if (rs != null) rs.close();
				if (pst != null) pst.close();
				if (con != null) con.close();
			} catch (Exception e2) {
				System.out.println("Error al cerrar --desde el Servlet, login usuario");
			}
		}
		
		return usu;
	}

}
