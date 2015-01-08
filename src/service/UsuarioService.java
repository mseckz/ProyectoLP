package service;

import interfaces.UsuarioDAO;

import java.util.ArrayList;

import dao.DAOFactory;
import beans.UsuarioDTO;

public class UsuarioService {
	
	DAOFactory fabrica = DAOFactory.getDAOFactory(1);
	UsuarioDAO objUsuarioDAO = fabrica.getUsuarioDAO();
	
	
	public ArrayList<UsuarioDTO> listarUsuarios() {
		// TODO Auto-generated method stub
		return objUsuarioDAO.listarUsuarios();
	}


	public ArrayList<UsuarioDTO> listarUsuarios(String nombre) {
		// TODO Auto-generated method stub
		return objUsuarioDAO.listarUsuarios(nombre);
	}

	public int modificaUsuario(String codigo, String status) {
		// TODO Auto-generated method stub
		return objUsuarioDAO.modificaUsuario(codigo,status);
	}
	
	public int registrarUsuario(String usuario,String clave,String nombre,String apellidoPaterno,String apellidoMaterno,String fechaNacimiento,String correo){
		return objUsuarioDAO.registrarUsuario(usuario, clave, nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento,correo);
	}


	public UsuarioDTO validaUsuario(String nombre, String password) {
		// TODO Auto-generated method stub
		return objUsuarioDAO.validaUsuario(nombre,password);
	}

}
