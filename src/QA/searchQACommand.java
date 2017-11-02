package QA;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Command;

public class searchQACommand extends Command{
	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String search_input = request.getParameter("search_input");
		int num = Integer.parseInt(request.getParameter("num"));
		
		
		System.out.println(search_input);
		
		QADAO dao = QADAO.getInstance();
		
		ArrayList<QADTO> list = dao.selectName(search_input,num);

		HttpSession session = request.getSession();
		session.setAttribute("q_list", list);
		
		response.sendRedirect("../QA/QA_main.jsp");
	}

}
