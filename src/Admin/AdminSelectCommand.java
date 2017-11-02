package Admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;


public class AdminSelectCommand extends Command {

	@Override
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		AdminDAO dao = new AdminDAO();
		ArrayList<Admin_dDTO> admin_Select = dao.AdminSelect();

		request.setAttribute("d_select", admin_Select);
		request.getRequestDispatcher("../Admin/admin_designer.jsp").forward(request, response);

	}

}
