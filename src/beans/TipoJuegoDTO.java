package beans;

public class TipoJuegoDTO {
	private int idtipo;
	private String descripcion;
	
	public TipoJuegoDTO(int idtipo, String descripcion) {
		super();
		this.idtipo = idtipo;
		this.descripcion = descripcion;
	}
	public int getIdtipo() {
		return idtipo;
	}
	public void setIdtipo(int idtipo) {
		this.idtipo = idtipo;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
}
