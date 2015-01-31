package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import utils.SQLServerConexion;
import beans.CategoriaJuegoDTO;
import beans.Reportes;
import interfaces.ReportesDAO;

public class SQLReportesDAO implements ReportesDAO {

	@Override
	public ArrayList<Reportes> getResultado(int año, int mes) {
		
		ArrayList<Reportes> lista=null;
		
		Connection con = null;
		PreparedStatement pst=null;
		
		try {
			con=SQLServerConexion.getConexion();
			String sql="SELECT U.NOMBRE,U.APELLIDOPATERNO ,U.CORREO,SUM(V.TOTAL) AS MONTO_VENDIDO FROM USUARIO AS U" +
					   "INNER JOIN VENTA AS V ON U.CODIGOUSUARIO=V.CODIGOUSUA WHERE YEAR(V.FECHAVEN)=? AND  " + 
					   "MONTH(V.FECHAVEN)=? GROUP BY U.NOMBRE,U.APELLIDOPATERNO ,U.CORREO";
			pst=con.prepareStatement(sql);
			pst.setInt(1, año);
			pst.setInt(2, mes);
			ResultSet rs=pst.executeQuery();
			lista=new ArrayList<Reportes>();
			
			while(rs.next()){
				Reportes rep = new Reportes(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4));
				lista.add(rep);
			}
			
		} catch (Exception e) {
			System.out.println("Error al realizar reporte 1");
		} finally {
			try {
				if(pst!=null) pst.close();
				if(con!=null) con.close();
			} catch (SQLException e) {
				System.out.println("Error al cerrar");
			}
		}
		return lista;
	}

}
