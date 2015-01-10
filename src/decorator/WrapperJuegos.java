package decorator;

import org.displaytag.decorator.TableDecorator;
import beans.JuegoDTO;

public class WrapperJuegos extends TableDecorator {
	
	public String getRecurso() {
		JuegoDTO mat = (JuegoDTO)getCurrentRowObject();
		
		String codjuego=mat.getCodigojuego();
		String nombre = mat.getNombre();
		String descripcion = mat.getDescripcion();
		double precio = mat.getCosto();
		int tipo = mat.getTipo();
		int categ = mat.getCategoria();
		String estado = mat.getEstado();
	
		return "<a href=\"adminMantenimientoJuegos.jsp?codjuego="+codjuego+"&nombre="+nombre+"&descrip="+descripcion+
				"&precio="+precio+"&tipo="+tipo+"&categ="+categ+"&estado="+estado+"\"> Selecciona </a>";
	}
}
