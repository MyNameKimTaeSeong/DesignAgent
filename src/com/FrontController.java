package com;


import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Admin.AdminSelectCommand;
import Admin.AdminSelectQACommand;
import Admin.DesignerDeleteCommand;
import Admin.ManuFactureDeleteCommand;
import Admin.AdminAllPost;
import Admin.AdminApprovalCommand;
import Admin.SelectAllManuCommand;
import Draft.FileUpload;
import Draft.Select_Draft;
import Draft.Select_Main;
import Draft.Select_My;
import Draft.Select_One;
import Draft.Update_Heart;
import Login_Join.c_joinCheckCommand;
import Login_Join.c_loginCommand;
import Login_Join.c_updateCommand;
import Login_Join.d_joinCheckCommand;
import Login_Join.d_joinLoginCommand;
import Login_Join.d_loginCommand;
import Login_Join.d_logoutCommand;
import Login_Join.d_resetPWCommand;
import Login_Join.d_selectOneCommand;
import Login_Join.d_updateCommand;
import Login_Join.d_searchIDCommand;
import Login_Join.d_searchPWCommand;
import QA.deleteQACommand;
import QA.pagingCommand;
import QA.passwordCheckQACommand;
import QA.passwordQACommand;
import QA.searchQACommand;
import QA.selectAllQACommand;
import QA.selectQACommand;
import QA.updateQACommand;
import QA.uploadQACommand;
import QA.viewQACommand;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	HashMap<String, Command> commandMap = new HashMap<>();

	@Override
	public void init() throws ServletException {
		// 디자이너
		commandMap.put("/Login_Join/d_joinCheck.do", new d_joinCheckCommand());
		commandMap.put("/Login_Join/d_update.do", new d_updateCommand());
		commandMap.put("/Login_Join/d_select.do", new d_selectOneCommand());
		commandMap.put("/Login_Join/d_login.do", new d_loginCommand());
		commandMap.put("/Login_Join/d_joinLogin.do", new d_joinLoginCommand());
		commandMap.put("/Login_Join/d_resetPW.do", new d_resetPWCommand());
		commandMap.put("/Login_Join/d_searchId.do", new d_searchIDCommand());
		commandMap.put("/Login_Join/d_searchPW.do", new d_searchPWCommand());
		commandMap.put("/Login_Join/d_logout.do", new d_logoutCommand());
		// 제작사
		commandMap.put("/Login_Join/c_login.do", new c_loginCommand());
		commandMap.put("/Login_Join/c_joinCheck.do", new c_joinCheckCommand());
		commandMap.put("/Login_Join/c_update.do", new c_updateCommand());
		//Draft
		commandMap.put("/Draft/Select_Draft.do", new Select_Draft());
		commandMap.put("/Draft/Select_One.do", new Select_One());
		commandMap.put("/Draft/Select_Main.do", new Select_Main());
		commandMap.put("/Draft/Select_My.do", new Select_My());
		commandMap.put("/Draft/FileUpload.do", new FileUpload());
		commandMap.put("/Draft/Update_Heart.do", new Update_Heart());
		// QnA
		commandMap.put("/QA/uploadQA.do", new uploadQACommand());
		commandMap.put("/QA/passwordQA.do", new passwordQACommand());
		commandMap.put("/QA/passwordCheckQA.do", new passwordCheckQACommand());
		commandMap.put("/QA/selectAllQA.do", new selectAllQACommand());
		commandMap.put("/QA/viewQA.do", new viewQACommand());
		commandMap.put("/QA/selectQA.do", new selectQACommand());
		commandMap.put("/QA/updateQA.do", new updateQACommand());
		commandMap.put("/QA/deleteQA.do", new deleteQACommand());
		commandMap.put("/QA/searchQA.do", new searchQACommand());
		commandMap.put("/QA/paging.do", new pagingCommand());
		// Admin
		commandMap.put("/Admin/AdminSelect.do", new AdminSelectCommand());
		commandMap.put("/Admin/SelectQA.do", new AdminSelectQACommand());
		commandMap.put("/Admin/DesignerDelete.do", new DesignerDeleteCommand());
		commandMap.put("/Admin/ManuFactureDelete.do", new ManuFactureDeleteCommand());
		commandMap.put("/Admin/ManuFacturer.do", new SelectAllManuCommand());
		commandMap.put("/Admin/SelectQA.do", new AdminSelectQACommand());
		commandMap.put("/Admin/SelectQA.do", new AdminSelectQACommand());
		commandMap.put("/Admin/Post.do", new AdminAllPost());
		commandMap.put("/Admin/Approval.do", new AdminApprovalCommand());
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String requestStr = uri.substring(context.length());

		System.out.println(requestStr);
		Command command = commandMap.get(requestStr);
		
		command.execute(request, response);
	}

}
