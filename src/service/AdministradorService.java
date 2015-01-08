package service;

import interfaces.AdministradorDAO;
import interfaces.UsuarioDAO;
import dao.DAOFactory;
import beans.AdministradorDTO;

public class AdministradorService {
	
	DAOFactory fabrica = DAOFactory.getDAOFactory(1);
	AdministradorDAO objAdministradorDAO = fabrica.getAdministradorDAO();

	public AdministradorDTO validaAdministrador(String nombre, String password) {
		// TODO Auto-generated method stub
		return objAdministradorDAO.validaAdministrador(nombre,password);
	}

}
