package Admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;

public class AdminSelectQACommand extends Command {

	@Override
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		AdminDAO dao = new AdminDAO();
		ArrayList<AdminQADTO> QaSelect = dao.QaSelect();

		request.setAttribute("QA_select", QaSelect);
		request.getRequestDispatcher("../Admin/admin_QA.jsp").forward(request, response);

	}
}
