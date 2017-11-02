package Login_Join;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;

public class d_selectOneCommand extends Command{
	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		LoginJoinDAO dao = new LoginJoinDAO();
		d_loginDTO dto = dao.d_select(id);
		
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("../Login/login_d_myPage.jsp").forward(request, response);
		
	}
}
