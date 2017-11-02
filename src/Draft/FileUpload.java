package Draft;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Command;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class FileUpload extends Command {

	@Override
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String sort = request.getParameter("sort");
		
		HttpSession session = request.getSession();
		request.setCharacterEncoding("euc-kr");

		String savePath = "Upload_File";
		int uploadFileSize = 5 * 1024 * 1024;
		String encType = "euc-kr";

		ServletContext context = request.getServletContext();
		String uploadFilePath = context.getRealPath(savePath);

		MultipartRequest multi = new MultipartRequest(request, uploadFilePath, uploadFileSize, encType,
				new DefaultFileRenamePolicy());

		String fileName = multi.getFilesystemName("uploadFile");
		String title = multi.getParameter("title");
		String filePath = "..\\" + savePath + "\\" + fileName;
		String id = (String)session.getAttribute("id");
		String division = multi.getParameter("division");
		String comments = multi.getParameter("comments");

		if (fileName != null) {
			PostDTO post = new PostDTO(0, title, filePath, id, sort, division, comments, null, 0, 0);
			DesignAgentDAO dao = new DesignAgentDAO();
			int cnt = dao.insertPostDB(post);

			if (cnt > 0) {
				if (sort.equals("p")) {
					response.sendRedirect("Select_Draft.do?sort=p&nowPage=1");
				} else if (sort.equals("m")) {
					response.sendRedirect("Select_Draft.do?sort=m&nowPage=1");
				}
			}

		} else {
			System.out.println("Fail");
		}

	}

}
