package QA;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;

public class updateQACommand extends Command{
	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int q_num = Integer.parseInt(request.getParameter("q_num"));
		int q_pw = Integer.parseInt(request.getParameter("q_pw"));
		String q_title = request.getParameter("q_title");
		String q_content = request.getParameter("q_content");
		
		QADAO dao = QADAO.getInstance();
		dao.update(new QADTO(q_num, q_pw, q_title, q_content));
		
		response.sendRedirect("selectAllQA.do");
	}

}
