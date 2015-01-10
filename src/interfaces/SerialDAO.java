package interfaces;

import java.util.ArrayList;

import beans.SerialDTO;

public interface SerialDAO {
	public ArrayList<SerialDTO> listado();
	public ArrayList<SerialDTO> listarSerial(String codJuego);
	public int AgregarLicencia(String codigoSerial, String codigoJuego, String serial);
	public int modificaLicencia(String codigo, String status);

}
