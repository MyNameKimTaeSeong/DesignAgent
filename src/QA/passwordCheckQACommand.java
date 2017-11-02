package QA;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;

public class passwordCheckQACommand extends Command{
	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int q_num = Integer.parseInt(request.getParameter("q_num"));
		int q_pw = Integer.parseInt(request.getParameter("q_pw"));
		
		QADAO dao = QADAO.getInstance();
		int check_pw = dao.pwCheck(q_num);
		System.out.println(q_pw);
		System.out.println(check_pw);
		
		if(check_pw == q_pw){
			response.sendRedirect("viewQA.do?q_num="+q_num);
		}else{
			response.sendRedirect("passwordQA.do");
		}
	}

}
