package interfaces;

import java.util.ArrayList;

import beans.Reportes;

public interface ReportesDAO {
	
	public ArrayList<Reportes> getResultado(int año, int mes);

}
