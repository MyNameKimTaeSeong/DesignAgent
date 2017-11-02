package Admin;

public class Admin_dDTO {
	
	private String r;
	private String d_id;
	private String d_name;
	private String d_email;
	private int d_phone;

	
	

	public Admin_dDTO(String r, String d_id, String d_name, String d_email, int d_phone) {
		super();
		this.r = r;
		this.d_id = d_id;
		this.d_name = d_name;
		this.d_email = d_email;
		this.d_phone = d_phone;
	}
	public String getR() {
		return r;
	}
	public void setR(String r) {
		this.r = r;
	}
	public String getD_id() {
		return d_id;
	}
	public void setD_id(String d_id) {
		this.d_id = d_id;
	}
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	public String getD_email() {
		return d_email;
	}
	public void setD_email(String d_email) {
		this.d_email = d_email;
	}
	public int getD_phone() {
		return d_phone;
	}
	public void setD_phone(int d_phone) {
		this.d_phone = d_phone;
	}
	
	
	
	

}
