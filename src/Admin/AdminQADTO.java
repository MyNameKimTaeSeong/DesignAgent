package Admin;

public class AdminQADTO {
		private int q_num;
		private String q_writer;
		private int q_pw;
		private String q_title;
		private String q_content;
		private String q_date;
		private int q_read_count; 
		private String q_re;
		
		
	
		
		public AdminQADTO(int q_num, String q_re) {
			super();
			this.q_num = q_num;
			this.q_re = q_re;
		}
		public AdminQADTO(int q_num, String q_writer, String q_title, String q_content, String q_date, String q_re) {
			super();
			this.q_num = q_num;
			this.q_writer = q_writer;
			this.q_title = q_title;
			this.q_content = q_content;
			this.q_date = q_date;
			this.q_re = q_re;
		}
		public int getQ_num() {
			return q_num;
		}
		public void setQ_num(int q_num) {
			this.q_num = q_num;
		}
		public String getQ_writer() {
			return q_writer;
		}
		public void setQ_writer(String q_writer) {
			this.q_writer = q_writer;
		}
		public int getQ_pw() {
			return q_pw;
		}
		public void setQ_pw(int q_pw) {
			this.q_pw = q_pw;
		}
		public String getQ_title() {
			return q_title;
		}
		public void setQ_title(String q_title) {
			this.q_title = q_title;
		}
		public String getQ_content() {
			return q_content;
		}
		public void setQ_content(String q_content) {
			this.q_content = q_content;
		}
		public String getQ_date() {
			return q_date;
		}
		public void setQ_date(String q_date) {
			this.q_date = q_date;
		}
		public int getQ_read_count() {
			return q_read_count;
		}
		public void setQ_read_count(int q_read_count) {
			this.q_read_count = q_read_count;
		}
		public String getQ_re() {
			return q_re;
		}
		public void setQ_re(String q_re) {
			this.q_re = q_re;
		}
	}
		

