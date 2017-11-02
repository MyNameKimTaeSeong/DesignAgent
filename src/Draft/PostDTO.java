package Draft;

public class PostDTO {
	private int p_num; // �Խù� ��ȣ
	private String title; // �Խù� ����
	private String photo_url; // ���� �ּ�
	private String id; // �ۼ��� id
	private String sort; // �뷮���� �������� �з�
	private String category; // ī�װ�
	private String comments; // ����
	private String upload_date; // �ۼ���
	private int heart_num; // ��Ʈ ��
	private int approval; // ���ο���

	public PostDTO(int p_num, String photo_url) {
		super();
		this.p_num = p_num;
		this.photo_url = photo_url;
	}
	
	public PostDTO(int p_num, String photo_url, String id) {
		super();
		this.p_num = p_num;
		this.photo_url = photo_url;
		this.id = id;
	}
	public PostDTO(int p_num, String title, String photo_url, String id, String sort, String category, String comments,
			String upload_date, int heart_num, int approval) {
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

	public String getTitle() {
		return title;
	}

	public String getPhoto_url() {
		return photo_url;
	}

	public String getId() {
		return id;
	}

	public String getSort() {
		return sort;
	}

	public String getCategory() {
		return category;
	}

	public String getComments() {
		return comments;
	}

	public String getUpload_date() {
		return upload_date;
	}

	public int getHeart_num() {
		return heart_num;
	}

	public int getApproval() {
		return approval;
	}
}
