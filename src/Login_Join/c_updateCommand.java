package Login_Join;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;

public class c_updateCommand extends Command {

	@Override
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String c_id = request.getParameter("c_id");
		String c_pw1 = request.getParameter("c_pw1");
		String c_name = request.getParameter("c_name");
		String c_position = request.getParameter("c_position");
		String c_depart = request.getParameter("c_depart");
		String c_companyName = request.getParameter("c_companyName");
		int c_phone = Integer.parseInt(request.getParameter("c_phone"));
		int c_fax = Integer.parseInt(request.getParameter("c_fax"));
		String c_email = request.getParameter("c_email");

		LoginJoinDAO dao = new LoginJoinDAO();
		int result = dao.C_update(
				new c_joinCheckDTO(c_id, c_pw1, c_name, c_position, c_depart, c_companyName, c_phone, c_fax, c_email));

		if (result > 0) {
			int Client_Modify = dao.Client_Modify1(new c_joinCheckDTO(c_id, c_pw1));
			
			if (Client_Modify > 0) 
				response.sendRedirect("../Main/main_content.jsp");
		}
	}
}
