package etiquetas;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import service.JuegoService;
import service.TipoService;
import beans.JuegoDTO;
import beans.TipoJuegoDTO;

public class comboTipoJuego extends TagSupport{
	public int doStartTag() throws JspException {
		try {
			JspWriter out = pageContext.getOut();
			out.println("<select name='cboTipo'>");
			out.println("<option value='0'>Seleccione</option>");
			TipoService servicio= new TipoService();
			ArrayList<TipoJuegoDTO> lista = servicio.listarTipos();
			for (int i = 0; i < lista.size(); i++) {
				TipoJuegoDTO listado=lista.get(i);
				out.println("<option value='"+listado.getIdtipo()+"'>"+listado.getDescripcion()+"</option>");
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
