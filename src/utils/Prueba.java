package utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;

public class Prueba {
	

	public static void main(String[] args) {
		try{
			Connection con = SQLServerConexion.getConexion();
			String sql = "Select codigoUsuario from usuario";
			PreparedStatement pst = con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()){
				System.out.println(rs.getString(1));
			}
		} catch(Exception e){
			
		}
		
		
		HashMap<String, Integer> lista  = new HashMap<String, Integer>();
		lista.put("nombre", 1);
		lista.put("ape", 2);
		
		System.out.println(lista.get("ape"));

	}

}
