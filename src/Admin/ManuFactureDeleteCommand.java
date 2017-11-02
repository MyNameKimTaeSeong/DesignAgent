package Admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;

public class ManuFactureDeleteCommand extends Command {

	@Override
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int result = 0;

		String c_id = request.getParameter("c_id");
		AdminDAO dao = new AdminDAO();
		
		System.out.println(c_id);
		result = dao.ManuFactureDelete(c_id);
		if(result > 0){
			response.sendRedirect("SelectManuFacture.do");
		}else{
			System.out.println("½ÇÆÐ");
		}
		
	}

}
