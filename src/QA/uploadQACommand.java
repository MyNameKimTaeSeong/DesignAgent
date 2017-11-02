package QA;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;

public class uploadQACommand extends Command {
	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		String q_writer = request.getParameter("q_name");
		int q_pw = Integer.parseInt(request.getParameter("q_pw"));
		String q_title = request.getParameter("q_title");
		String q_content = request.getParameter("q_content");
		
		QADAO dao = QADAO.getInstance();
		dao.upload(new QADTO(q_writer, q_pw, q_title, q_content));
		
		response.sendRedirect("paging.do?num=1");
	}

}
