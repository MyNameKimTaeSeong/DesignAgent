<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>header</title>
<style>
	body{
		margin: 0px;
	}
	div#header{
		margin: 0 auto;
		width: 1200px;
		height: 340px;
		box-sizing: border-box;
	}
	div#login{
		font-family: 'Noto Sans Mono CJK KR DemLight';
		font-size: 12pt;
		width: 100%;
		height: 40px;
		text-align: right;
		padding-top:20px;
	}
	div#login > a, #QA_menu > a{
		text-decoration: none;
		color: #000000;
	}
	div#logo{
		width: 100%;
		height: 120px;
		padding-bottom: 60px;
	}
	div#menu{
		width: 100%;
		height: 100px;
	}
	div#menu > ul{
		list-style-type: none;
		padding: 0px; 
		margin: 0px;
	}
	div#menu > ul > li{
		width: 400px;
		height: 100px;
		float: left;
		text-align: center;
		padding: 30px 0px;
		box-sizing: border-box;
	}
 	.intro_all, .draft_all{ 
 	  	visibility: hidden;
		width: 400px; 
 		height: 70px;
 		margin-top: 14px; 
 		position: absolute;
 	} 
	div.tri {
		width: 0px;
		height: 0px;
		border-left: 15px solid transparent;
		border-right: 15px solid transparent;
		border-bottom: 20px solid #b22222;
		margin: 0 auto; 
	}
	div.squa{
	 	line-height:70px;
		width: 100%;
		height: 70px;
		background-color: #b22222;
		border-radius : 10px;
		box-sizing: border-box;
		text-align: center;
	}
	div#menu > ul > .menu_font{
		font-family: 'Noto Sans CJK KR Black';
		font-size: 18pt;
	}
	div#menu > ul > .menu_font:HOVER{
		color: #b22222;
	}
	div#menu > ul > .menu_font:HOVER > a{
		color: #b22222;
	}
	div#menu > ul > .menu_font:HOVER > a{
		color: #b22222;
		font-weight: bold;
	}
	div#menu > ul > #intro_menu:HOVER > .intro_all{
		visibility: visible; 
		width: 400px;
		height: 70px;
	}
	div#menu > ul > #draft_menu:HOVER > .draft_all{
		visibility: visible; 
		z-index: 1;
		width: 400px;
		height: 70px;
	}
	div#menu > ul > #QA_menu:HOVER > .QA_all{
 		visibility: visible; 
		width: 400px;
		height: 70px;
	}	
	.squa > .menu_sub{
		font-family: 'Noto Sans CJK KR Blod';
		font-size: 16pt;
		color: #ffffff;
		text-decoration: none;
		margin: 0px 25px;
	}
</style>
</head>
<body>
	<div id="header">
		<div id="login">
			<c:if test="${ id == null }">
				<a href="../Login/login_main.jsp">로그인</a>&nbsp;&nbsp;&nbsp;<a href="../Join/join_select.jsp">회원가입</a>
			</c:if>
			<c:if test="${ id != null }">
				<%if(session.getAttribute("id").equals("Admin")){%>
				<a href="../Admin/AdminSelect.do">${ name } 님</a>&nbsp;&nbsp;&nbsp;<a href="../Login_Join/d_logout.do">로그아웃</a>
				<%}
				else if(!session.getAttribute("id").equals("Admin")){%>
				<a href="../Login_Join/d_select.do?id=${id}">${ name } 님</a>&nbsp;&nbsp;&nbsp;<a href="../Login_Join/d_logout.do">로그아웃</a>
				<%} %>
			</c:if>
		</div>
		<div id="logo">
			<a href="../Main/main_content.jsp"><img src="../img/logo.jpg"></a>
		</div>
		<div id="menu">
			<ul>
				<li id="intro_menu" class="menu_font">Introduce
					<div class="intro_all">
						<div class="tri"></div>
						<div class="squa">
							<a href="../Introduce/intro_company.jsp" class="menu_sub">회사소개</a>
							<a href="../Introduce/intro_cooperator.jsp" class="menu_sub">협력업체소개</a>
						</div>
					</div>
				</li>
				<li id="draft_menu" class="menu_font">Clothes Draft
					<div class="draft_all">
						<div class="tri"></div>
						<div class="squa">
							<a href="../Draft/Select_Draft.do?sort=p&nowPage=1&division=newest" class="menu_sub">개인제작</a>
							<a href="../Draft/Select_Draft.do?sort=m&nowPage=1&division=newest" class="menu_sub">대량생산</a>
						</div>
					</div>
				</li>
				<li id="QA_menu" class="menu_font">
					<a href="../QA/paging.do?num=1">Q & A</a></li>
			</ul>
		</div>
	</div>
</body>
</html>