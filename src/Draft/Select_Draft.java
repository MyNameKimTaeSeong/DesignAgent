package Draft;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Command;


public class Select_Draft extends Command {

	@Override
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int nowPage = Integer.parseInt(request.getParameter("nowPage"));
		String sort = request.getParameter("sort");
		String category = request.getParameter("category");
		String division = request.getParameter("division");

		ArrayList<PostDTO> draftList = new ArrayList<>();
		ArrayList<PostDTO> bestList = new ArrayList<>();
		DesignAgentDAO dao = new DesignAgentDAO();
		HttpSession session = request.getSession();

		bestList = dao.selectBest(sort);
				
		int totalSize = dao.getTotalSize(sort, category);
		Draft_Paging paging = new Draft_Paging();
		Draft_PagingDTO page = paging.Paging(nowPage, totalSize);
		
		session.setAttribute("category", category);
		session.setAttribute("start_page", page.getStart_page());
		session.setAttribute("end_page", page.getEnd_page());
		session.setAttribute("prePage", page.getPrePage());
		session.setAttribute("nextPage", page.getNextPage());

		if (category == null) {
			if (division == null)
				draftList = dao.selectDraft(sort, nowPage, "newest");
			else
				draftList = dao.selectDraft(sort, nowPage, division);
		} else {
			draftList = dao.selectCategory(sort, category, nowPage);
		}

		if (draftList != null) {
			session.setAttribute("draftList", draftList);
			session.setAttribute("bestList", bestList);
			session.setAttribute("nowPage", nowPage);

			if (sort.equals("p")) {
				session.setAttribute("division", division);
				response.sendRedirect("../Draft/draft_personal.jsp");
			} else if (sort.equals("m")) {
				session.setAttribute("division", division);
				response.sendRedirect("../Draft/draft_mass.jsp");
			}

		}
	}

}
