package Admin;

public class AdminPostDTO {
	private int p_num; // 게시물 번호
	private String title; // 게시물 제목
	private String photo_url; // 파일 주소
	private String id; // 작성자 id
	private String sort; // 대량인지 개인인지 분류
	private String category; // 카테고리
	private String comments; // 설명
	private String upload_date; // 작성일
	private int heart_num; // 하트 수
	private int approval;	// 승인여부
	
	
	
	
	public AdminPostDTO(int p_num, String title, String photo_url, String id, String category, String upload_date,
			int approval) {
		super();
		this.p_num = p_num;
		this.title = title;
		this.photo_url = photo_url;
		this.id = id;
		this.category = category;
		this.upload_date = upload_date;
		this.approval = approval;
	}




	public AdminPostDTO(int p_num, String title, String photo_url, String id, String sort, String category,
			String comments, String upload_date, int heart_num, int approval) {
		super();
		this.p_num = p_num;
		this.title = title;
		this.photo_url = photo_url;
		this.id = id;
		this.sort = sort;
		this.category = category;
		this.comments = comments;
		this.upload_date = upload_date;
		this.heart_num = heart_num;
		this.approval = approval;
	}




	public int getP_num() {
		return p_num;
	}




	public void setP_num(int p_num) {
		this.p_num = p_num;
	}




	public String getTitle() {
		return title;
	}




	public void setTitle(String title) {
		this.title = title;
	}




	public String getPhoto_url() {
		return photo_url;
	}




	public void setPhoto_url(String photo_url) {
		this.photo_url = photo_url;
	}




	public String getId() {
		return id;
	}




	public void setId(String id) {
		this.id = id;
	}




	public String getSort() {
		return sort;
	}




	public void setSort(String sort) {
		this.sort = sort;
	}




	public String getCategory() {
		return category;
	}




	public void setCategory(String category) {
		this.category = category;
	}




	public String getComments() {
		return comments;
	}




	public void setComments(String comments) {
		this.comments = comments;
	}




	public String getUpload_date() {
		return upload_date;
	}




	public void setUpload_date(String upload_date) {
		this.upload_date = upload_date;
	}




	public int getHeart_num() {
		return heart_num;
	}




	public void setHeart_num(int heart_num) {
		this.heart_num = heart_num;
	}




	public int getApproval() {
		return approval;
	}




	public void setApproval(int approval) {
		this.approval = approval;
	} 

	
	
	
	
	

}
