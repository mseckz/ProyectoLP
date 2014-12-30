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
				JuegoDTO j = new JuegoDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5), 
						 		          rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));
				lista.add(j);
			}
			
		} catch (SQLException e) {
			System.out.println("Error al listar juegos");
		}
		
		return lista;
	}
	
}
