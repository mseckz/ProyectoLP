package decorator;

import org.displaytag.decorator.TableDecorator;

import beans.SerialDTO;

public class WrapperLicencia extends TableDecorator{
	
	public String getRecurso() {
		SerialDTO mat = (SerialDTO)getCurrentRowObject();
		
		String cod=mat.getCodigoSerial();
	
		return "<a href=\"admin_MantenimientoLicensias.jsp?cod=" +cod+"\"> Selecciona </a>";
	}

}
