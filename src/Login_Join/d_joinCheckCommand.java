package Login_Join;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;

public class d_joinCheckCommand extends Command {
	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String d_id = request.getParameter("d_id");
		
		LoginJoinDAO dao = new LoginJoinDAO();
		
		int result = dao.d_confirmId(d_id);
	
		request.setAttribute("d_id", d_id);
		request.setAttribute("result", result);
		request.getRequestDispatcher("../Login/login_d_idCheck.jsp").forward(request, response);
	}
}
