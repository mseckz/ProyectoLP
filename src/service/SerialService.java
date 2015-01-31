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
	
	public ArrayList<SerialDTO> listarSerial(String codJuego) {
		// TODO Auto-generated method stub
		return objSerialDAO.listarSerial(codJuego);
	}
	public int AgregarLicencia(String codigoSerial, String codigoJuego, String serial){
		return objSerialDAO.AgregarLicencia(codigoSerial, codigoJuego, serial);
	}
	public int modificaLicencia(String codigo, String status) {
		return objSerialDAO.modificaLicencia(codigo,status);
	}
	
	public ArrayList<SerialDTO> getLicenciasCompra(String codigojuego, int cantidad){
		return objSerialDAO.getLicenciasCompra(codigojuego, cantidad);
		
	}
}
