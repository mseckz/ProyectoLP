package beans;

public class JuegoDTO {
	
	private String codigojuego;
	private String nombre;
	private String descripcion;
	private double costo;
	private int tipo;
	private int categoria;
	private String codigoadministrador;
	private String estado;
	private String fechaingreso;
	
	public JuegoDTO(String codigojuego, String nombre, String descripcion,double costo,
			int tipo, int categoria, String codigoadministrador,
			String estado, String fechaingreso) {
		super();
		this.codigojuego = codigojuego;
		this.nombre = nombre;
		this.descripcion = descripcion;
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
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public double getCosto() {
		return costo;
	}
	public void setCosto(double costo) {
		this.costo = costo;
	}
	public int getTipo() {
		return tipo;
	}
	public void setTipo(int tipo) {
		this.tipo = tipo;
	}
	public int getCategoria() {
		return categoria;
	}
	public void setCategoria(int categoria) {
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
