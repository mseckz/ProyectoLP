package beans;

public class DetalleVentaDTO {
	
	private String codigoventa;
	private String codigojuego;
	private String codigoserial;
	private String numserial;
	private double costo;
	private String estado;
	
	public DetalleVentaDTO(String codigoventa, String codigojuego,
			String codigoserial, String numserial, double costo, String estado) {
		super();
		this.codigoventa = codigoventa;
		this.codigojuego = codigojuego;
		this.codigoserial = codigoserial;
		this.numserial = numserial;
		this.costo = costo;
		this.estado = estado;
	}

	public String getCodigoventa() {
		return codigoventa;
	}

	public void setCodigoventa(String codigoventa) {
		this.codigoventa = codigoventa;
	}

	public String getCodigojuego() {
		return codigojuego;
	}

	public void setCodigojuego(String codigojuego) {
		this.codigojuego = codigojuego;
	}

	public String getCodigoserial() {
		return codigoserial;
	}

	public void setCodigoserial(String codigoserial) {
		this.codigoserial = codigoserial;
	}

	public String getNumserial() {
		return numserial;
	}

	public void setNumserial(String numserial) {
		this.numserial = numserial;
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
