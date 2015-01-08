package interfaces;

import beans.AdministradorDTO;

public interface AdministradorDAO {

	public AdministradorDTO validaAdministrador(String nombre, String password);

}
