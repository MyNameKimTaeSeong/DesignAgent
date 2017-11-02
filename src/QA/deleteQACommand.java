package QA;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;

public class deleteQACommand extends Command{
	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int q_num = Integer.parseInt(request.getParameter("q_num"));
		QADAO dao = QADAO.getInstance();
		dao.delete(q_num);
		
		response.sendRedirect("selectAllQA.do");
	}

}
