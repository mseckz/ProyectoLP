package beans;

public class JuegoDTO {
	
	private String codigojuego;
	private String nombre;
	private double costo;
	private String tipo;
	private String categoria;
	private String codigoadministrador;
	private String estado;
	private String fechaingreso;
	
	public JuegoDTO(String codigojuego, String nombre, double costo,
			String tipo, String categoria, String codigoadministrador,
			String estado, String fechaingreso) {
		super();
		this.codigojuego = codigojuego;
		this.nombre = nombre;
		this.costo = costo;
		this.tipo = tipo;
		this.categoria = categoria;
		this.codigoadministrador = codigoadministrador;
		this.estado = estado;
		this.fechaingreso = fechaingreso;
	}
	
	public String getCodigojuego() {
		return codigojuego;
	}
	public void setCodigojuego(String codigojuego) {
		this.codigojuego = codigojuego;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public double getCosto() {
		return costo;
	}
	public void setCosto(double costo) {
		this.costo = costo;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public String getCodigoadministrador() {
		return codigoadministrador;
	}
	public void setCodigoadministrador(String codigoadministrador) {
		this.codigoadministrador = codigoadministrador;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getFechaingreso() {
		return fechaingreso;
	}
	public void setFechaingreso(String fechaingreso) {
		this.fechaingreso = fechaingreso;
	}
}
