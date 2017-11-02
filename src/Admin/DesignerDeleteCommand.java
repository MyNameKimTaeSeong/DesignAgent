package Admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;

public class DesignerDeleteCommand extends Command {

	@Override
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int result = 0;

		String d_id = request.getParameter("d_id");
		AdminDAO dao = new AdminDAO();
		
		result = dao.DesignerDelete(d_id);
		if(result > 0){
			response.sendRedirect("SelectALL.do");
		}
		
	}

}
