package beans;

public class DetalleCarritoDTO {
	
	public String codigoCarrito;
	public String codigoJuego;
	public int cantidad;
	public double costo;
	public String estado;
	
	public DetalleCarritoDTO(String codigoCarrito, String codigoJuego,
			int cantidad, double costo, String estado) {
		super();
		this.codigoCarrito = codigoCarrito;
		this.codigoJuego = codigoJuego;
		this.cantidad = cantidad;
		this.costo = costo;
		this.estado = estado;
	}

	public String getCodigoCarrito() {
		return codigoCarrito;
	}

	public void setCodigoCarrito(String codigoCarrito) {
		this.codigoCarrito = codigoCarrito;
	}

	public String getCodigoJuego() {
		return codigoJuego;
	}

	public void setCodigoJuego(String codigoJuego) {
		this.codigoJuego = codigoJuego;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public double getCosto() {
		return costo;
	}

	public void setCosto(double costo) {
		this.costo = costo;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}
}
