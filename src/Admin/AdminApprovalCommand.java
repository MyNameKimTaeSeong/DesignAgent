package Admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;

public class AdminApprovalCommand extends Command {

	@Override
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int p_num = Integer.parseInt(request.getParameter("p_num")) ;
		AdminDAO dao = new AdminDAO();
		
		dao.ApprovalUpdate(p_num);
		
		
		
	}

}
