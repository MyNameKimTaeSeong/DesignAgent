<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	div#wrapper{
		margin: 0 auto;
		width: 1200px;
	}
	div#menu_line{
		width: 100%;
		height: 70px;
		background-color: #333333;
		color: #ffffff;
		padding: 25px 0px 25px 100px;
		box-sizing: border-box;
	}
	div#container{
		width: 100%;
		height: auto;	
	}
	div#container > table{
		margin: 0 auto;
		width: 1000px;
	}
	.con_title{
		font-family: 'Noto Sans CJK KR Bold'; 
		font-size: 40pt;
		font-weight: bold;
		height: 70px; 
		text-align: center; 
	}
	div#container > #c_q_top{
		height: 55px;
		border-top: 3px solid #333333;
		border-bottom: 1px solid #333333;	
	}
	div#container > .c_line{
		height: 50px;
		border-bottom: 1px solid #333333;
	}
	div#container > #c_q_bottom{
		height: 380px;
		border-bottom: 3px solid #333333;
	}
	.q_text{
		text-align: center;
		width: 130px;
	}
	#q_name{
		width: 260px;
		height: 30px;
		margin: 10px 20px;
	}
	#q_date{
		width: 260px;
		height: 30px;
		margin: 10px 20px;
	}
	#q_title{
		width: 600px;
		height: 30px;
		margin: 10px 20px;
	}
	#q_content{
		margin: 10px 20px;
	}
	#q_list{
		float: right;
		padding: 18px 15px 0 0;
	}
	#q_list > a{
		text-decoration: none;
		color: #000000;
	}
	div.c_btn{
		width: 100px;
		height: 50px;
		background-color: #333333;
		border-radius: 10px;
		line-height: 50px;
		float: left;
		margin-bottom: 100px;
	}
	div.c_btn > a{
		text-decoration: none;
		color: #ffffff;
	}
</style>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<div id="wrapper">
		<div id="menu_line">
			<span>Home > Q & A</span>
		</div>
		<div id="container">
			<table>
				<tr>
					<td style="height: 70px;"></td>
				</tr>
				<tr>
					<td class="con_title"><span>Q & A</span></td>
				</tr>
				<tr>
					<td style="height: 50px;"></td>
				</tr>
			</table>
			<table id="c_q_top">
				<c:set var="q_dto" value="${q_dto}"/>
				<tr>
					<td class="q_text"><span>NAME</span></td>
					<td>
						<span id="q_name">${q_dto.q_writer}</span>
					</td>
					<td class="q_text"><span>DATE</span></td>
					<td>
						<span id="q_date">${q_dto.q_date}</span>
					</td>
				</tr>
			</table>
			<table class="c_line">
				<tr>
					<td class="q_text"><span>TITLE</span></td>
					<td colspan="3">
						<p id="q_title">${q_dto.q_title}</p>
					</td>
				</tr>
			</table>
			<table id="c_q_bottom">
				<tr>
					<td class="q_text"><span>CONTENT</span></td>
					<td colspan="3">
						<p id="q_content">
							${ q_dto.q_content }
						</p>
					</td>
				</tr>
			</table>
			<table style="text-align: center;">
				<tr>
					<td style="height: 40px;" id="q_list">
						<a href="QA_main.jsp"><span>목록보기</span></a>
					</td>
				</tr>
				<tr>
					<td>
						
						<a href="../QA/selectQA.do?q_num=${ q_dto.q_num }"  style="text-decoration: none; color: #ffffff;">
							<div class="c_btn" style="margin: 0 10px 0 380px;">
								<span>수정</span>
							</div>
						</a> 
						<a href="../QA/deleteQA.do?q_num=${ q_dto.q_num }" style="text-decoration: none; color: #ffffff;">
							<div class="c_btn">
								<span>삭제</span>
							</div>
						</a>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<%@ include file="../footer.jsp" %>
</body>
</html>