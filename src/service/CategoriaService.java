package service;

import interfaces.CategoriaDAO;


import java.util.ArrayList;

import dao.DAOFactory;
import beans.CategoriaJuegoDTO;

public class CategoriaService {
	
	DAOFactory fabrica = DAOFactory.getDAOFactory(1);
	CategoriaDAO objCategoriaDAO = fabrica.getCategoriaDAO();
	
	public ArrayList<CategoriaJuegoDTO> listarCategorias() {
		// TODO Auto-generated method stub
		return objCategoriaDAO.listarCategorias();
	}

}
