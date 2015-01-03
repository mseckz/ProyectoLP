package decorator;

import org.displaytag.decorator.TableDecorator;

import beans.UsuarioDTO;

public class Wrapper extends TableDecorator {

	public String getRecurso() {
		UsuarioDTO mat = (UsuarioDTO)getCurrentRowObject();
		
		String cod=mat.getCodigoUsuario();
	
		return "<a href=\"admin_MantenimientoUsuarios.jsp?cod=" +cod+"\"> Selecciona </a>";
	}
}