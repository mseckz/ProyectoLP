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
	
	public ArrayList<JuegoDTO> listarJuego(String nombrejuego){
		return objJuego.listarJuego(nombrejuego);
	}
	
	public int AgregarJuego(String nombre,String descripcion,double costo,int tipo,int categoria,String codigoadmin,String estado){
		return objJuego.AgregarJuego(nombre, descripcion, costo, tipo, categoria, codigoadmin, estado);
	}
	public int ModificarJuego(String codigoJuego,String nombre,String descripcion,double costo,int tipo,int categoria,String codigoadmin,String estado){
		return objJuego.ModificarJuego(codigoJuego, nombre, descripcion, costo, tipo, categoria, codigoadmin, estado);
	}

	public JuegoDTO buscarJuego(String codigoJuego) {
		return objJuego.buscarJuego(codigoJuego);
	}
}
