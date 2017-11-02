package Login_Join;

public class My_Draft_Paging {
	
	public My_Draft_PagingDTO Paging(int nowPage, int totalSize) {
		int num_perPage = 5;
		int step = 0;
		int result_page = 1;
		
		if(nowPage % num_perPage == 0)
			step = nowPage/num_perPage -1;
		else
			step = nowPage/num_perPage;
		
		if(totalSize % 8 == 0)
			result_page = totalSize / 8;
		else
			result_page = (totalSize / 8) + 1;
		
		int start_page = (step * num_perPage) + 1;
		int end_page = result_page - (step * num_perPage);
		int prePage = nowPage - num_perPage;
		
		if(prePage < 0)
			prePage = 1;
		
		int nextPage = nowPage + num_perPage;
		
		
		if(nextPage > end_page)
			nextPage = end_page;
		
		My_Draft_PagingDTO dto = new My_Draft_PagingDTO(start_page, end_page, prePage, nextPage);
		
		return dto;
	}
}
