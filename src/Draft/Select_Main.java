package Draft;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

public class Select_Main extends Command {

	@Override
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<PostDTO> mainList = new ArrayList<>();
		DesignAgentDAO dao = new DesignAgentDAO();
		
		mainList = dao.selectMain();

		System.out.println(mainList.size());
		if(mainList != null){
			request.setAttribute("mainList", mainList);
			request.getRequestDispatcher("../Main/main_content.jsp").forward(request, response);
		}
	}

}
