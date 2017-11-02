<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
		margin-bottom: 40px;
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
	#q_pw{
		width: 260px;
		height: 30px;
		margin: 10px 20px;
	}
	#q_pw + span{
		color: red;
		margin: 0px; 
		padding-right: 5px;
	}
	#q_title{
		width: 600px;
		height: 30px;
		margin: 10px 20px;
	}
	#q_content{
		width: 810px;
		height: 360px;
		margin: 10px 20px;
	}
	#c_cancel > div.c_btn{
		width: 100px;
		background-color: #333333;
		border-radius: 10px;
		line-height: 50px;
		text-align: center;
		display: inline-block;
		margin-bottom: 100px;
	}
	div.c_btn1{
		display: inline-block;
		margin-left: 395px;
		margin-right: 10px;
	}
	div.c_btn1 > input{
		font-family: 'Noto Sans CJK KR DemLight';
		font-size: 12pt;
		width: 100px;
		border: 0px;
		background-color: #333333;
		color:white;
		border-radius: 10px;
		line-height: 50px;
		display: inline-block;
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
			<form action="../QA/updateQA.do">
				<tr>
					<td class="q_text"><span>NAME</span></td>
					<td id="q_name">
						${ dto2.q_writer }
						<input type="hidden" name="q_num" value="${ dto2.q_num }">
					</td>
					<td class="q_text"><span>PASSWORD</span></td>
					<td>
						<input type="password" name="q_pw" id="q_pw" value="${ dto2.q_pw }">
						<span>자동잠금기능</span>
					</td>
				</tr>
			</table>
			<table class="c_line">
				<tr>
					<td class="q_text"><span>TITLE</span></td>
					<td colspan="3">
						<input type="text" name="q_title" id="q_title" value="${ dto2.q_title }">
					</td>
				</tr>
			</table>
			<table id="c_q_bottom">
				<tr>
					<td class="q_text"><span>CONTENT</span></td>
					<td colspan="3">
						<input type="text" name="q_content" id="q_content" value="${ dto2.q_content }">
					</td>
				</tr>
			</table>
			<table>
				<tr>
					<td>
						<div class="c_btn1">
							<input type="submit" value="수정">
						</div>
						<a href="../QA/selectAllQA.do" id ="c_cancel"style="text-decoration: none; color: #ffffff;">
							<div class="c_btn">
								<span>취소</span>
							</div>
						</a>
						</form>
						
					</td>
				</tr>
			</table>
	</div>
	<%@ include file="../footer.jsp" %>
</body>
</html>