package Draft;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;

public class Update_Heart extends Command {

	@Override
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");
		int p_num = Integer.parseInt(request.getParameter("p_num"));
		int chk = Integer.parseInt(request.getParameter("chk"));
			
		System.out.println(id);
		System.out.println(p_num);
		
		DesignAgentDAO dao = new DesignAgentDAO();
		int cnt = dao.updateHeart(p_num, chk);
		
		if(cnt > 0){
			if(chk == 1){
				int cnt2 = dao.insertHeartDB(id, p_num);
				
				if(cnt2 > 0)
					System.out.println("Success");
				else
					System.out.println("Fail");
			}else{
				int cnt2 = dao.deleteHeartDB(id, p_num);
				
				System.out.println("dddd");
				
				if(cnt2 > 0)
					System.out.println("Success");
				else
					System.out.println("Fail");
			}
		}
	}

}
