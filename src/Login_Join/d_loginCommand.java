package Login_Join;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;

public class d_loginCommand extends Command {
	protected void execute(HttpServletRequest request, HttpServletResponse response) // 회원가입
			throws ServletException, IOException {
		int cnt = 0;
		request.setCharacterEncoding("EUC-kr");
		String d_id = request.getParameter("d_id");
		String d_pw = request.getParameter("d_pw");
		String d_name = request.getParameter("d_name");
		int d_phone = Integer.parseInt(request.getParameter("d_phone"));
		String d_email = request.getParameter("d_email");
		String d_blog = request.getParameter("d_blog");
		String d_div = request.getParameter("Mix_div");

		LoginJoinDAO dao = new LoginJoinDAO();

		cnt = dao.d_insert(new d_loginDTO(d_id, d_pw, d_name, d_phone, d_email, d_blog));

		if (cnt > 0) {
			cnt = dao.Client_insert(new d_loginDTO(d_id, d_pw, d_name, d_div));
			
			if (cnt > 0) {
				System.out.println("추가입력 성공");
			}
			response.sendRedirect("../Login/login_main.jsp?success=true");
		} else {
			response.sendRedirect("../Join/join_designer.jsp?success=false");
		}

	}
}
