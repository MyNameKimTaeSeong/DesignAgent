package QA;

import java.io.Serializable;

public class QADTO{
	private int q_num;
	private String q_writer;
	private int q_pw;
	private String q_title;
	private String q_content;
	private String q_date;
	private int q_read_count; 
	private String q_re;
	
	public QADTO(int q_num, String q_writer, int q_pw, String q_title, String q_content, String q_date,
			int q_read_count, String q_re) {
		super();
		this.q_num = q_num;
		this.q_writer = q_writer;
		this.q_pw = q_pw;
		this.q_title = q_title;
		this.q_content = q_content;
		this.q_date = q_date;
		this.q_read_count = q_read_count;
		this.q_re = q_re;
	}
	

	public QADTO(int q_num, String q_writer, String q_title, String q_date, int q_read_count) {
		this.q_num = q_num;
		this.q_writer = q_writer;
		this.q_title = q_title;
		this.q_date = q_date;
		this.q_read_count = q_read_count;
	}

	public QADTO(String q_writer, int q_pw, String q_title, String q_content) {
		this.q_writer = q_writer;
		this.q_pw = q_pw;
		this.q_title = q_title;
		this.q_content = q_content;
	}
	
	public QADTO(int q_num, int q_pw, String q_title, String q_content) {
		this.q_num = q_num;
		this.q_pw = q_pw;
		this.q_title = q_title;
		this.q_content = q_content;
	}
	
	public int getQ_num() {
		return q_num;
	}

	public String getQ_writer() {
		return q_writer;
	}

	public int getQ_pw() {
		return q_pw;
	}

	public String getQ_title() {
		return q_title;
	}

	public String getQ_content() {
		return q_content;
	}

	public String getQ_date() {
		return q_date;
	}

	public int getQ_read_count() {
		return q_read_count;
	}

	public String getQ_re() {
		return q_re;
	}
	
	
	
}
