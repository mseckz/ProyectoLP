package service;

import java.util.ArrayList;

import interfaces.SerialDAO;
import dao.DAOFactory;
import beans.SerialDTO;
import beans.UsuarioDTO;

public class SerialService {
	DAOFactory fabrica = DAOFactory.getDAOFactory(1);
	SerialDAO objSerialDAO = fabrica.getSerialDAO();

	
	public ArrayList<SerialDTO> listarSerial(){
		return objSerialDAO.listado();
	}
	
	public ArrayList<SerialDTO> listarSerial(String serial) {
		// TODO Auto-generated method stub
		return objSerialDAO.listarSerial(serial);
	}
	public int AgregarLicencia(String codigoSerial, String codigoJuego, String serial){
		return objSerialDAO.AgregarLicencia(codigoSerial, codigoJuego, serial);
	}
	public int modificaLicencia(String codigo, String status) {
		// TODO Auto-generated method stub
		return objSerialDAO.modificaLicencia(codigo,status);
	}

}
