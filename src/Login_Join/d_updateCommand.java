package Login_Join;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;

public class d_updateCommand extends Command {
	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String d_id = request.getParameter("d_id");
		String d_pw = request.getParameter("d_pw1");
		String d_name = request.getParameter("d_name");
		int d_phone = Integer.parseInt(request.getParameter("d_phone"));
		String d_email = request.getParameter("d_email");
		String d_blog = request.getParameter("d_blog");
				
		LoginJoinDAO dao = new LoginJoinDAO();
		
		int result = dao.d_update(new d_loginDTO(d_id, d_pw, d_name, d_phone, d_email, d_blog));
		
		if(result > 0){
			int client_Modify = dao.Client_Modify(new d_loginDTO(d_id, d_pw));
			
			if (client_Modify > 0) {
				response.sendRedirect("../Main/main_content.jsp");
			}else{
				System.out.println("Client 수정 실패");
			}
		}else{
			System.out.println("수정실패");
		}
	}
}
