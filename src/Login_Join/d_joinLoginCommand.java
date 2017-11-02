package Login_Join;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Command;

public class d_joinLoginCommand extends Command {
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		LoginJoinDAO dao = new LoginJoinDAO();

		if(id.equals("Admin")){
			HttpSession session = request.getSession();
			String name = dao.Admin_login(id);
			session.setAttribute("name", name);
			session.setAttribute("id", id);
			
			response.sendRedirect("../Main/main_content.jsp");
		}else{
		
		String name = dao.d_LoginCheck(id, pw);

		if (name != null) {
			HttpSession session = request.getSession();
			session.setAttribute("name", name);
			session.setAttribute("id", id);

			response.sendRedirect("../Main/main_content.jsp");
		} else {
			response.sendRedirect("../Login/login_main.jsp?login_false=false");
			}
		}
	}
	
}
