package Admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;

public class ReAnserCommand extends Command {

	@Override
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			AdminQADTO dto;
			String q_re = request.getParameter("anser");
			int q_num = Integer.parseInt(request.getParameter("q_num"));
			
			AdminDAO dao = new AdminDAO();
			int result = dao.UpdateRe(new AdminQADTO(q_num,q_re));
			
			if(result > 0){
				response.sendRedirect("../Admin/SelectQA.do");
			}
			
			
			
			
			
			

	}

}
