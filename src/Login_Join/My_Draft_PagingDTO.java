package Login_Join;

public class My_Draft_PagingDTO {
	private int my_start_page;
	private int my_end_page;
	private int my_prePage;
	private int my_nextPage;
	
	public My_Draft_PagingDTO(int my_start_page, int my_end_page, int my_prePage, int my_nextPage) {
		super();
		this.my_start_page = my_start_page;
		this.my_end_page = my_end_page;
		this.my_prePage = my_prePage;
		this.my_nextPage = my_nextPage;
	}

	public int getMy_start_page() {
		return my_start_page;
	}

	public void setMy_start_page(int my_start_page) {
		this.my_start_page = my_start_page;
	}

	public int getMy_end_page() {
		return my_end_page;
	}

	public void setMy_end_page(int my_end_page) {
		this.my_end_page = my_end_page;
	}

	public int getMy_prePage() {
		return my_prePage;
	}

	public void setMy_prePage(int my_prePage) {
		this.my_prePage = my_prePage;
	}

	public int getMy_nextPage() {
		return my_nextPage;
	}

	public void setMy_nextPage(int my_nextPage) {
		this.my_nextPage = my_nextPage;
	}

}
