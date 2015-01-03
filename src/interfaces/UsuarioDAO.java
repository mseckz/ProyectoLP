package interfaces;

import java.util.ArrayList;

import beans.UsuarioDTO;

public interface UsuarioDAO {
	
	public int registrarUsuario(String usuario,String clave,String nombre,String apellidoPaterno,String apellidoMaterno,String fechaNacimiento,String correo);
	
	public ArrayList<UsuarioDTO> listarUsuarios();

	public ArrayList<UsuarioDTO> listarUsuarios(String nombre);

	public int modificaUsuario(String codigo, String status);
	
	public UsuarioDTO loginUsuario(String usuario, String clave);
}
