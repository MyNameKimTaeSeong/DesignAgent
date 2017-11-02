package Draft;

public class Draft_Paging {
	
	public Draft_PagingDTO Paging(int nowPage, int totalSize) {
		int num_perPage = 5;
		int step = 0;
		int result_page = 1;
		
		if(nowPage % num_perPage == 0)
			step = nowPage/num_perPage -1;
		else
			step = nowPage/num_perPage;
		
	
		
		if(totalSize % 12 == 0)
			result_page = totalSize / 12;
		else
			result_page = (totalSize / 12) + 1;
		
		int start_page = (step * num_perPage) + 1;
		int end_page = result_page - (step * num_perPage);
		int prePage = nowPage - num_perPage;
		
		if(prePage < 0)
			prePage = 1;
		
		int nextPage = nowPage + num_perPage;
		
		if(nextPage > end_page)
			nextPage = end_page;
		
		Draft_PagingDTO dto = new Draft_PagingDTO(start_page, end_page, prePage, nextPage);
		
		return dto;
	}
}
