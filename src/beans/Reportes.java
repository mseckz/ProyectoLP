package beans;

public class Reportes {
	
	private String nombre;
	private String apellidopaterno;
	private String correo;
	private double monto;
	
	public Reportes(String nombre, String apellidopaterno, String correo,
			double monto) {
		super();
		this.nombre = nombre;
		this.apellidopaterno = apellidopaterno;
		this.correo = correo;
		this.monto = monto;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidopaterno() {
		return apellidopaterno;
	}

	public void setApellidopaterno(String apellidopaterno) {
		this.apellidopaterno = apellidopaterno;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public double getMonto() {
		return monto;
	}

	public void setMonto(double monto) {
		this.monto = monto;
	}

}
