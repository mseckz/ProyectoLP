package beans;

public class CategoriaJuegoDTO {
	
	private int idcategoria;
	private String descripcion;
	
	public CategoriaJuegoDTO(int idcategoria, String descripcion) {
		super();
		this.idcategoria = idcategoria;
		this.descripcion = descripcion;
	}
	public int getIdcategoria() {
		return idcategoria;
	}
	public void setIdcategoria(int idcategoria) {
		this.idcategoria = idcategoria;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
}
