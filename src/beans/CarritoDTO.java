package beans;

public class CarritoDTO {
	
	private String codigoCarrito;
	private String codigoUsuario;
	private String estado;
	
	
	public CarritoDTO(String codigoCarrito, String codigoUsuario, String estado) {
		super();
		this.codigoCarrito = codigoCarrito;
		this.codigoUsuario = codigoUsuario;
		this.estado = estado;
	}

	public String getCodigoCarrito() {
		return codigoCarrito;
	}

	public void setCodigoCarrito(String codigoCarrito) {
		this.codigoCarrito = codigoCarrito;
	}

	public String getCodigoUsuario() {
		return codigoUsuario;
	}

	public void setCodigoUsuario(String codigoUsuario) {
		this.codigoUsuario = codigoUsuario;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	 }

}
