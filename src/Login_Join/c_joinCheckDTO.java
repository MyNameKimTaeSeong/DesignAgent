package Login_Join;

public class c_joinCheckDTO {
	private String c_id;
	private String c_pw;
	private String c_companyName;
	private String c_name;
	private String c_position;
	private String c_depart;
	private int c_phone;
	private int c_fax;
	private String c_email;
	private String c_businessNum;
	private String c_div;

	public c_joinCheckDTO(String c_id, String c_pw) {
		super();
		this.c_id = c_id;
		this.c_pw = c_pw;
	}

	public c_joinCheckDTO(String c_id, String c_pw,String c_name, String c_div) {
		super();
		this.c_id = c_id;
		this.c_pw = c_pw;
		this.c_name = c_name;
		this.c_div = c_div;
	}

	public c_joinCheckDTO(String c_id, String c_pw, String c_companyName, String c_name, String c_position,String c_depart, int c_phone, int c_fax, String c_email) {
		super();
		this.c_id = c_id;
		this.c_pw = c_pw;
		this.c_companyName = c_companyName;
		this.c_name = c_name;
		this.c_position = c_position;
		this.c_depart = c_depart;
		this.c_phone = c_phone;
		this.c_fax = c_fax;
		this.c_email = c_email;
	}

	public c_joinCheckDTO(String c_id, String c_pw, String c_companyName, String c_name, String c_position,
			String c_depart, int c_phone, int c_fax, String c_email, String c_businessNum) {
		super();
		this.c_id = c_id;
		this.c_pw = c_pw;
		this.c_companyName = c_companyName;
		this.c_name = c_name;
		this.c_position = c_position;
		this.c_depart = c_depart;
		this.c_phone = c_phone;
		this.c_fax = c_fax;
		this.c_email = c_email;
		this.c_businessNum = c_businessNum;
	}

	public String getC_id() {
		return c_id;
	}

	public void setC_id(String c_id) {
		this.c_id = c_id;
	}

	public String getC_pw() {
		return c_pw;
	}

	public void setC_pw(String c_pw) {
		this.c_pw = c_pw;
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
		return c_position;
	}

	public void setC_position(String c_position) {
		this.c_position = c_position;
	}

	public String getC_depart() {
		return c_depart;
	}

	public void setC_depart(String c_depart) {
		this.c_depart = c_depart;
	}

	public int getC_phone() {
		return c_phone;
	}

	public void setC_phone(int c_phone) {
		this.c_phone = c_phone;
	}

	public int getC_fax() {
		return c_fax;
	}

	public void setC_fax(int c_fax) {
		this.c_fax = c_fax;
	}

	public String getC_email() {
		return c_email;
	}

	public void setC_email(String c_email) {
		this.c_email = c_email;
	}

	public String getC_businessNum() {
		return c_businessNum;
	}

	public void setC_businessNum(String c_businessNum) {
		this.c_businessNum = c_businessNum;
	}

	public String getC_div() {
		return c_div;
	}

	public void setC_div(String c_div) {
		this.c_div = c_div;
	}
}
