package Login_Join;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;

public class c_joinCheckCommand extends Command {
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String c_id = request.getParameter("c_id");

		LoginJoinDAO dao = new LoginJoinDAO();
		String result = dao.c_confirmId(c_id);
		int result1 = 0;
		
		if(result == null){
            result1 = -1;
            
            request.setAttribute("c_id", c_id);
            request.setAttribute("result", result1);
            request.getRequestDispatcher("../Login/login_c_idCheck.jsp").forward(request, response);
         }else{
            result1 = 1;
            
            request.setAttribute("c_id", c_id);
            request.setAttribute("result", result1);
            request.getRequestDispatcher("../Login/login_c_idCheck.jsp").forward(request, response);
         }
		
	}
}
