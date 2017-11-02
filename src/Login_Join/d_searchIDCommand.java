package Login_Join;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;

public class d_searchIDCommand extends Command {
	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String d_name = request.getParameter("d_name");
		String d_email = request.getParameter("d_email");
	
		
		 LoginJoinDAO dao = new LoginJoinDAO();
		 String d_id = dao.d_IDsearch(d_name,d_email);
		 
		if (d_id != null) {
			 request.setAttribute("search", d_id);
			 request.getRequestDispatcher("../Login/login_d_searchID.jsp").forward(request, response);
		} else {
			 System.out.println("½ÇÆÐ");
		}
	
	
	}
}
