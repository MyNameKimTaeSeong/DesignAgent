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
		font-family: 'Noto Sans CJK KR DemLight';
		font-size: 15pt;
		line-height: 70px;
		width: 100%;
		height: 70px;
		background-color: #333333;
		color: white;
		padding-left: 80px;
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
	div#container > #c_post_top{
		height: 55px;
		border-top: 3px solid #333333;
		border-bottom: 1px solid #333333;	
	}
	div#container > .c_line{
		height: 50px;
		border-bottom: 1px solid #333333;
	}
	div#container > #c_post_bottom{
		height: 380px;
		border-bottom: 3px solid #333333;
		margin-bottom: 40px;
	}
	.p_text{
		font-family: 'Noto Sans CJK KR DemLight';
		font-size: 15pt;
		text-align: center;
		width: 130px;
	}
	#q_name, #q_pw, #q_title, #q_content{
		font-family: 'Noto Sans CJK KR DemLight';
		font-size: 14pt;
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
	div#c_btn > input{
		font-family: 'Noto Sans CJK KR DemLight';
		font-size: 12pt;
		width: 100px;
		height: 50px;
		border: 0px;
		background-color: #333333;
		color:white;
		border-radius: 10px;
		line-height: 50px;
		margin-bottom: 100px;
	}
</style>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<div id="wrapper">
		<div id="menu_line">
			<span>Home > Q & A</span>
		</div>
		<form action="../QA/uploadQA.do" method="post">
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
			
			<table id="c_post_top">
				
				<tr>
					<td class="p_text"><span>NAME</span></td>
					<td>
						<input type="text" name="q_name" id="q_name" value="${name}">
					</td>
					<td class="q_text"><span>PASSWORD</span></td>
					<td>
						<input type="password" name="q_pw" id="q_pw">
						<span>자동잠금기능</span>
					</td>
				</tr>
			</table>
			<table class="c_line">
				<tr>
					<td class="p_text"><span>TITLE</span></td>
					<td colspan="3">
						<input type="text" name="q_title" id="q_title">
					</td>
				</tr>
			</table>
			<table id="c_post_bottom">
				<tr>
					<td class="p_text"><span>CONTENT</span></td>
					<td colspan="3">
						<input type="text" name="q_content" id="q_content">
					</td>
				</tr>
			</table>
			<table style="text-align: center;">
				<tr>
					<td>
						<div id="c_btn">
							<input type="submit" value="저장">
						</div>
					</td>
				</tr>
				
			</table>
		</div>
		</form>	
	</div>
	<%@ include file="../footer.jsp" %>
</body>
</html>