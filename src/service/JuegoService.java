package service;

import interfaces.JuegoDAO;

import java.util.ArrayList;

import dao.DAOFactory;
import beans.JuegoDTO;

public class JuegoService {
	
	DAOFactory fabrica = DAOFactory.getDAOFactory(1);
	JuegoDAO objJuego = fabrica.getJuegoDAO();
	
	public ArrayList<JuegoDTO> listarJuegos(){
		return objJuego.listarJuegos();
	}

}
