package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import utils.SQLServerConexion;
import beans.CategoriaJuegoDTO;
import beans.TipoJuegoDTO;
import interfaces.TipoDAO;

public class SQLTipoDAO implements TipoDAO{

	@Override
	public ArrayList<TipoJuegoDTO> listarTipos() {
		// TODO Auto-generated method stub
ArrayList<TipoJuegoDTO> lista=null;
		
		Connection con = null;
		PreparedStatement pst=null;
	
		// TODO Auto-generated method stub
		try {
			con=SQLServerConexion.getConexion();
			String sql="select * from TIPOJUEGO";
			pst=con.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			lista=new ArrayList<TipoJuegoDTO>();
			
			while(rs.next()){
				int idtipo=rs.getInt(1);
				String descripcion=rs.getString(2);
				TipoJuegoDTO user = new TipoJuegoDTO(idtipo,descripcion);
				lista.add(user);
			}
			
		} catch (Exception e) {
			System.out.println("Classpath: " + System.getProperty("java.class.path"));
			System.out.println("Error en la conexión -- desde el Servlet -- listar Tipo Exception");
		} finally {
			try {
				if(pst!=null) pst.close();
				if(con!=null) con.close();
			} catch (SQLException e) {
				System.out.println("Error al cerrar -- desde el Servlet -- listar Tipo ExceptionSQL");
			}
		}
		return lista;
	}

}