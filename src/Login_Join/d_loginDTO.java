package Login_Join;

public class d_loginDTO {
	private String d_id;
	private String d_pw;
	private String d_name;
	private int d_phone;
	private String d_email;
	private String d_blog;
	private String d_div;
	
	public d_loginDTO(String d_pw) {
		super();
		this.d_pw = d_pw;
	}

	public d_loginDTO(String d_id, String d_pw) {
		super();
		this.d_id = d_id;
		this.d_pw = d_pw;
	}

	public d_loginDTO(String d_id, String d_pw, String d_name, String d_div) {
		super();
		this.d_id = d_id;
		this.d_pw = d_pw;
		this.d_name = d_name;
		this.d_div = d_div;
	}

	public d_loginDTO(String d_id, String d_pw, String d_name, int d_phone, String d_email, String d_blog) {
		this.d_id = d_id;
		this.d_pw = d_pw;
		this.d_name = d_name;
		this.d_phone = d_phone;
		this.d_email = d_email;
		this.d_blog = d_blog;

	}

	public String getD_id() {
		return d_id;
	}

	public void setD_id(String d_id) {
		this.d_id = d_id;
	}

	public String getD_pw() {
		return d_pw;
	}

	public void setD_pw(String d_pw) {
		this.d_pw = d_pw;
	}

	public String getD_name() {
		return d_name;
	}

	public void setD_name(String d_name) {
		this.d_name = d_name;
	}

	public int getD_phone() {
		return d_phone;
	}

	public void setD_phone(int d_phone) {
		this.d_phone = d_phone;
	}

	public String getD_email() {
		return d_email;
	}

	public void setD_email(String d_email) {
		this.d_email = d_email;
	}

	public String getD_blog() {
		return d_blog;
	}

	public void setD_blog(String d_blog) {
		this.d_blog = d_blog;
	}

	public String getD_div() {
		return d_div;
	}

	public void setD_div(String d_div) {
		this.d_div = d_div;
	}
}
