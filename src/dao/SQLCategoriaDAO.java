package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import utils.SQLServerConexion;
import beans.CategoriaJuegoDTO;
import beans.JuegoDTO;
import interfaces.CategoriaDAO;

public class SQLCategoriaDAO implements CategoriaDAO {

	@Override
	public ArrayList<CategoriaJuegoDTO> listarCategorias() {
		// TODO Auto-generated method stub
		ArrayList<CategoriaJuegoDTO> lista=null;
		
		Connection con = null;
		PreparedStatement pst=null;
	
		// TODO Auto-generated method stub
		try {
			con=SQLServerConexion.getConexion();
			String sql="select * from CATEGORIA";
			pst=con.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			lista=new ArrayList<CategoriaJuegoDTO>();
			
			while(rs.next()){
				int idcategoria=rs.getInt(1);
				String descripcion=rs.getString(2);
				CategoriaJuegoDTO user = new CategoriaJuegoDTO(idcategoria,descripcion);
				lista.add(user);
			}
			
		} catch (Exception e) {
			System.out.println("Classpath: " + System.getProperty("java.class.path"));
			System.out.println("Error en la conexión -- desde el Servlet -- listar Categoria Exception");
		} finally {
			try {
				if(pst!=null) pst.close();
				if(con!=null) con.close();
			} catch (SQLException e) {
				System.out.println("Error al cerrar -- desde el Servlet -- listar Categoria ExceptionSQL");
			}
		}
		return lista;
	}

}