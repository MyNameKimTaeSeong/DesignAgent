package Admin;

public class Admin_cDTO {

	private String r;
	private String c_id;
	private String c_companyName;
	private String c_name;
	private String c_depart;
	private int c_fax;
	
	public Admin_cDTO(String r,String c_companyName , String c_id, String c_name, String c_depart, int c_fax) {
		super();
		this.r = r;
		this.c_id = c_id; 
		this.c_companyName = c_companyName;
		this.c_name = c_name;
		this.c_depart = c_depart;
		this.c_fax = c_fax;
	}
	public String getR() {
		return r;
	}
	public void setR(String r) {
		this.r = r;
	}
	
	
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public String getC_depart() {
		return c_depart;
	}
	public void setC_depart(String c_depart) {
		this.c_depart = c_depart;
	}
	public String getC_companyName() {
		return c_companyName;
	}
	public void setC_companyName(String c_companyName) {
		this.c_companyName = c_companyName;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_position() {
		return c_depart;
	}
	public void setC_position(String c_position) {
		this.c_depart = c_position;
	}
	public int getC_fax() {
		return c_fax;
	}
	public void setC_fax(int c_fax) {
		this.c_fax = c_fax;
	}
	
	
	
	
	
}
