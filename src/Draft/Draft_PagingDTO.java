package Draft;

public class Draft_PagingDTO {
	private int start_page;
	private int end_page;
	private int prePage;
	private int nextPage;
	
	public Draft_PagingDTO(int start_page, int end_page, int prePage, int nextPage) {
		super();
		this.start_page = start_page;
		this.end_page = end_page;
		this.prePage = prePage;
		this.nextPage = nextPage;
	}
	
	public int getStart_page() {
		return start_page;
	}
	public int getEnd_page() {
		return end_page;
	}
	public int getPrePage() {
		return prePage;
	}
	public int getNextPage() {
		return nextPage;
	}
	
	
}
