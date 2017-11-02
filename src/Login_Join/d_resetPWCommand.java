package Login_Join;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Command;

public class d_resetPWCommand extends Command {
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");

		String pw1_reset = request.getParameter("pw1_reset");
		String pw2_reset = request.getParameter("pw2_reset");
		String d_id = request.getParameter("d_id");

		if (pw1_reset.equals(pw2_reset)) {
			LoginJoinDAO dao = new LoginJoinDAO();
			int pwreset = dao.d_PWreset(d_id, pw2_reset);

			if (pwreset > 0) {
				int result = dao.Client_PwReset(d_id, pw2_reset);

				if (result > 0) {
					response.sendRedirect("../Login/login_main.jsp");
				} else {
					System.out.println("Client 수정 실패");
				}
			}
		} else {
			System.out.println("fail");
		}
	}
}
