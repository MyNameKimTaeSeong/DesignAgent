package QA;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Command;

public class selectAllQACommand extends Command {
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");

		QADAO dao = QADAO.getInstance();
		ArrayList<QADTO> list = dao.selectAll();

		HttpSession session = request.getSession();
		session.setAttribute("q_list", list);
		System.out.println(list.size());
		response.sendRedirect("../QA/QA_main.jsp");
	}

}
