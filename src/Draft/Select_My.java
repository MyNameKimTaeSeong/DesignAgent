package Draft;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Command;

import Login_Join.My_Draft_Paging;
import Login_Join.My_Draft_PagingDTO;

public class Select_My extends Command {

	@Override
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");
		int myNowPage = Integer.parseInt(request.getParameter("nowPage"));
		
		ArrayList<PostDTO> myList = new ArrayList<>();
		DesignAgentDAO dao = new DesignAgentDAO();
		
		int totalSize = dao.getMyTotalSize(id);
		My_Draft_Paging paging = new My_Draft_Paging();
		My_Draft_PagingDTO page = paging.Paging(myNowPage, totalSize);
		
		HttpSession session = request.getSession();
		session.setAttribute("my_start_page", page.getMy_start_page());
		session.setAttribute("my_end_page", page.getMy_end_page());
		session.setAttribute("my_prePage", page.getMy_prePage());
		session.setAttribute("my_nextPage", page.getMy_nextPage());
		session.setAttribute("myNowPage", myNowPage);
		
		if(myList != null){
			myList = dao.selectMy(id, myNowPage);
			request.setAttribute("myList", myList);
			request.getRequestDispatcher("../Login/login_d_myPost.jsp").forward(request, response);
		}
	}

}
