package Draft;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Command;

public class Select_One extends Command {

	@Override
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int p_num = Integer.parseInt(request.getParameter("p_num"));
		int my = Integer.parseInt(request.getParameter("my"));

		DesignAgentDAO dao = new DesignAgentDAO();
		PostDTO draft_info = dao.selectOne(p_num);

		if (draft_info != null) {
			HttpSession session = request.getSession();
			session.setAttribute("draft_info", draft_info);
			
			if(my != 1)
				response.sendRedirect("../Draft/draft_view.jsp");
			else if(my == 1)
				response.sendRedirect("../Login/login_d_myPost_detail.jsp");
		}
	}

}
