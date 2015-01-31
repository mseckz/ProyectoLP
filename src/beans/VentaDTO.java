package beans;

public class VentaDTO {
	
	private String codigoventa;
	private String codigocarrito;
	private String codigousuario;
	private String fechaven;
	private double subtotal;
	private double igv;
	private double total;
	private String estado;
	
	public VentaDTO(String codigoventa, String codigocarrito,
			String codigousuario, String fechaven, double subtotal, double igv,
			double total, String estado) {
		super();
		this.codigoventa = codigoventa;
		this.codigocarrito = codigocarrito;
		this.codigousuario = codigousuario;
		this.fechaven = fechaven;
		this.subtotal = subtotal;
		this.igv = igv;
		this.total = total;
		this.estado = estado;
	}

	public String getCodigoventa() {
		return codigoventa;
	}

	public void setCodigoventa(String codigoventa) {
		this.codigoventa = codigoventa;
	}

	public String getCodigocarrito() {
		return codigocarrito;
	}

	public void setCodigocarrito(String codigocarrito) {
		this.codigocarrito = codigocarrito;
	}

	public String getCodigousuario() {
		return codigousuario;
	}

	public void setCodigousuario(String codigousuario) {
		this.codigousuario = codigousuario;
	}

	public String getFechaven() {
		return fechaven;
	}

	public void setFechaven(String fechaven) {
		this.fechaven = fechaven;
	}

	public double getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}

	public double getIgv() {
		return igv;
	}

	public void setIgv(double igv) {
		this.igv = igv;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

}
