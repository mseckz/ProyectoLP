package service;

import interfaces.TipoDAO;

import java.util.ArrayList;

import dao.DAOFactory;
import beans.TipoJuegoDTO;

public class TipoService {

	DAOFactory fabrica = DAOFactory.getDAOFactory(1);
	TipoDAO objTipoDAO = fabrica.getTipoDAO();
	
	
	public ArrayList<TipoJuegoDTO> listarTipos() {
		// TODO Auto-generated method stub
		return objTipoDAO.listarTipos();
	}

}
