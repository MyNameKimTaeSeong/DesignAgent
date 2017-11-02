	package QA;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Command;

public class pagingCommand extends Command{
	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		System.out.println(num);
		
		pagingVO paging = new pagingVO();
		paging.setPageNo(num);
        paging.setPageSize(10);
        
        QADAO dao = QADAO.getInstance();
        paging.setTotalCount(dao.totalcnt());  //페이지가 만들어짐.. paging.making()
        ArrayList<QADTO> list = dao.QnAset(num);
      
        HttpSession session = request.getSession();
    
        session.setAttribute("paging", list);
        session.setAttribute("paging2", paging);
        
        
        response.sendRedirect("selectAllQA.do");
	}

}
