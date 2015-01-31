package interfaces;

import java.util.ArrayList;

import beans.JuegoDTO;

public interface JuegoDAO {
	
	public ArrayList<JuegoDTO> listarJuegos();
	public ArrayList<JuegoDTO> listarJuego(String nombrejuego);
	public int AgregarJuego(String nombre,String descripcion,double costo,int tipo,int categoria,String codigoadmin,String estado);
	public int ModificarJuego(String codigoJuego,String nombre,String descripcion,double costo,int tipo,int categoria,String estado);
	public JuegoDTO buscarJuego(String codigoJuego);
	public ArrayList<JuegoDTO> listarJuegoxCategoria(int categoria);

}
