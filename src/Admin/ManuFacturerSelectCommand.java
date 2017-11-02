package Admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;

public class ManuFacturerSelectCommand extends Command {

	@Override
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		AdminDAO dao = new AdminDAO();
		ArrayList<Admin_cDTO> selectMAnuFacture = dao.SelectManuFacture();

		request.setAttribute("c_select", selectMAnuFacture);
		request.getRequestDispatcher("../Admin/admin_manufacturer.jsp").forward(request, response);
		
		

	}

}
