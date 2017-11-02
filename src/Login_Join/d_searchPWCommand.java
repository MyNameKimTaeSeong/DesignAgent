package Login_Join;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.Command;

public class d_searchPWCommand extends Command{
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		request.setCharacterEncoding("EUC-KR");
		String d_id = request.getParameter("d_id");
		String d_name = request.getParameter("d_name");
		String d_email = request.getParameter("d_email");

		LoginJoinDAO dao = new LoginJoinDAO();
		String result_id = dao.d_PWsearch(d_id,d_name,d_email);
		
		if (result_id != null) {
			request.setAttribute("result_id", result_id);
			request.getRequestDispatcher("../Login/login_d_pw_reset.jsp").forward(request, response);
		} else {
			System.out.println("½ÇÆÐ"); //¾Ë·µÃ¢À¸·Î ¶ì¿ì±â
		}

	}

}
