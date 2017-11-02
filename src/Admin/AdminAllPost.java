package Admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;

public class AdminAllPost extends Command {

	

	@Override
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			ArrayList<AdminPostDTO> dto = new ArrayList<>();
			AdminDAO dao = new AdminDAO();
			dto = dao.getAllPost();
			
			request.setAttribute("PostList", dto);
			request.getRequestDispatcher("../Admin/admin_post.jsp").forward(request, response);

	}

}
