package decorator;

import org.displaytag.decorator.TableDecorator;
import beans.JuegoDTO;

public class WrapperJuegos extends TableDecorator {
	
	public String getRecurso() {
		JuegoDTO mat = (JuegoDTO)getCurrentRowObject();
		
		String codjuego=mat.getCodigojuego();
	
		return "<a href=\"/adminMantenimientoJuegos.jsp?codjuego="+codjuego+"\"> Selecciona </a>";
	}
}
