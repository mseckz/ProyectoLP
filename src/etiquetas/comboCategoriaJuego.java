package etiquetas;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import service.CategoriaService;
import service.JuegoService;
import beans.CategoriaJuegoDTO;
import beans.JuegoDTO;
import beans.TipoJuegoDTO;

public class comboCategoriaJuego extends TagSupport{
	public int doStartTag() throws JspException {
		try {
			JspWriter out = pageContext.getOut();
			out.println("<select name='cboCategoria'>");
			out.println("<option value='0'>Seleccione</option>");
			CategoriaService servicio= new CategoriaService();
			ArrayList<CategoriaJuegoDTO> lista = servicio.listarCategorias();
			for (int i = 0; i < lista.size(); i++) {
				CategoriaJuegoDTO listado=lista.get(i);
				out.println("<option value='"+listado.getIdcategoria()+"'>"+listado.getDescripcion()+"</option>");
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
