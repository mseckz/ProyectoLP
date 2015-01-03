package etiquetas;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import service.JuegoService;
import beans.JuegoDTO;


public class comboJuegos extends TagSupport{
	public int doStartTag() throws JspException {
		try {
			JspWriter out = pageContext.getOut();
			out.println("<select name='cboJuegos'>");
			out.println("<option value='0'>Seleccione</option>");
			JuegoService servicio= new JuegoService();
			ArrayList<JuegoDTO> lista = servicio.listarJuegos();
			for (int i = 0; i < lista.size(); i++) {
				JuegoDTO listado=lista.get(i);
				out.println("<option value='"+listado.getCodigojuego()+"'>"+listado.getNombre()+"</option>");
			}
			
			out.println("</select>");
		} catch (IOException e) {
			throw new JspException("Error: " + e.getMessage());
		}
		return SKIP_BODY;
	}

	public int doEndTag() throws JspException {
		return EVAL_PAGE;
	}
}
