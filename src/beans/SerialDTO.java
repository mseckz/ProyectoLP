package beans;

public class SerialDTO {
	private String codigoSerial;
	private String codigoJuego;
	private String serial;	
	private String estado;	
	private String fechaCreacionLic;
	
	public SerialDTO(String codigoSerial, String codigoJuego, String serial, String estado,	String fechaCreacionLic) {
		super();
		this.codigoSerial = codigoSerial;
		this.codigoJuego = codigoJuego;
		this.serial = serial;
		this.estado = estado;
		this.fechaCreacionLic = fechaCreacionLic;
	}

	public String getCodigoSerial() {
		return codigoSerial;
	}

	public void setCodigoSerial(String codigoSerial) {
		this.codigoSerial = codigoSerial;
	}
	
	public String getCodigoJuego() {
		return codigoJuego;
	}

	public void setCodigoJuego(String codigoJuego) {
		this.codigoJuego = codigoJuego;
	}

	public String getSerial() {
		return serial;
	}

	public void setSerial(String serial) {
		this.serial = serial;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getFechaCreacionLic() {
		return fechaCreacionLic;
	}

	public void setFechaCreacionLic(String fechaCreacionLic) {
		this.fechaCreacionLic = fechaCreacionLic;
	}

}
