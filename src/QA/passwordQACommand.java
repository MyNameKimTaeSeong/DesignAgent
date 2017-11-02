package QA;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Command;

public class passwordQACommand extends Command{
	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String q_num = request.getParameter("q_num");
		QADAO dao = QADAO.getInstance();
		QADTO dto = dao.selectOne(q_num);
		
		HttpSession session = request.getSession();
		session.setAttribute("q_dto", dto);
		
		response.sendRedirect("../QA/QA_password.jsp");
	}

}
