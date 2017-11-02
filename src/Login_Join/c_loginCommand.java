package Login_Join;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;

public class c_loginCommand extends Command {
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int cnt = 0;
		request.setCharacterEncoding("EUC-kr");
		String c_id = request.getParameter("c_id");
		String c_pw = request.getParameter("c_pw1");
		String c_companyName = request.getParameter("c_companyName");
		String c_name = request.getParameter("c_name");
		String c_position = request.getParameter("c_position");
		String c_depart = request.getParameter("c_depart");
		int c_phone = Integer.parseInt(request.getParameter("c_phone"));
		int c_fax = Integer.parseInt(request.getParameter("c_fax"));
		String c_email = request.getParameter("c_email");
		String c_div = request.getParameter("Mix_div");

		LoginJoinDAO dao = new LoginJoinDAO();

		cnt = dao.c_insert(
				new c_joinCheckDTO(c_id, c_pw, c_companyName, c_name, c_position, c_depart, c_phone, c_fax, c_email));

		if (cnt > 0) {
			cnt = dao.Mix_insert1(new c_joinCheckDTO(c_id, c_pw, c_name, c_div));
			if (cnt > 0) {
				System.out.println("추가입력 성공");
			}
			response.sendRedirect("../Login/login_main.jsp?success=true");
		} else {
			response.sendRedirect("../Join/join_manufacturer.jsp?success=false");
		}

	}

}
