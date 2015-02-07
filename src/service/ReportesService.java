package service;

import java.util.ArrayList;

import beans.Reportes;
import interfaces.ReportesDAO;
import dao.DAOFactory;

public class ReportesService {
	
	DAOFactory fabrica = DAOFactory.getDAOFactory(1);
	ReportesDAO rep = fabrica.getReportesDAO();
	
	public ArrayList<Reportes> getResultado(int a�o, int mes){
		return rep.getResultado(a�o, mes);
	}

}
