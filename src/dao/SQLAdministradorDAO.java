package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import utils.SQLServerConexion;
import beans.AdministradorDTO;
import beans.UsuarioDTO;
import interfaces.AdministradorDAO;
import interfaces.UsuarioDAO;

public class SQLAdministradorDAO implements AdministradorDAO{

	@Override
	public AdministradorDTO validaAdministrador(String nombre, String password) {
		// TODO Auto-generated method stub
		AdministradorDTO user = null;
		Connection con = null;    		// retorna si hubo o no conexion en MySQLConexion
		PreparedStatement pst=null;		// sirve para las sentencias
		
		try {
			con=SQLServerConexion.getConexion();
			
			String sql="select * from ADMINISTRADOR where CODIGOADMINISTRADOR=? and CLAVE=?";  // sentencia de consulta
			
			pst=con.prepareStatement(sql);
			pst.setString(1, nombre);			// asigna los parametros a la consulta
			pst.setString(2, password);
			
			ResultSet rs = pst.executeQuery();  // ejecuta Select
			
			if (rs.next()){   	// validación por que si hay datos
				String codigoUsuario = rs.getString(1);
				String clave = rs.getString(2);
				String nombre1 = rs.getString(3);
				String apellidoPaterno = rs.getString(4);
				String apellidoMaterno = rs.getString(5);
				String fechaNacimiento = rs.getString(6);
				String telefono = rs.getString(7);
				String correo = rs.getString(8);
				String estado = rs.getString(9);
				String fechaCreacion = rs.getString(10);
				user = new AdministradorDTO(codigoUsuario,clave, nombre1,
						apellidoPaterno, apellidoMaterno, fechaNacimiento,telefono,correo, estado, fechaCreacion);
			}
			
		} catch (Exception e) {
			System.out.println("Error en la conexión -- desde el Servlet -- validar administrador");
		} finally {
			try {
				if(pst!=null) pst.close();
				if(con!=null) con.close();
			} catch (SQLException e) {
				System.out.println("Error al cerrar -- desde el Servlet  -- validar administrador");
			}
		}
		return user;
	}

}
