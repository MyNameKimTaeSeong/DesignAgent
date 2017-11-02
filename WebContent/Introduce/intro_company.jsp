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
	div#container > table{
		width: 1000px;
		margin: 0 auto;
		text-align: center;
	}
	.con_title{
		font-family: 'Noto Sans CJK KR Bold'; 
		font-size: 40pt;
		font-weight: bold;
		height: 70px; 
		text-align: center; 
	}
	div#container > #c_img > img{
		width: 1000px;
		height: 340px;
		
	}
	.c_font{
		font-family: 'Noto Sans CJK KR Light';
		font-size: 18pt;
	}
</style>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<div id="wrapper">
		<div id="menu_line">
			<span>Home > Introduce > 회사소개</span>
		</div>
		<div id="container">
			<table>
				<tr>
					<td style="height: 70px;"></td>
				</tr>
				<tr>
					<td class="con_title"><span>회사소개</span></td>
				</tr>
				<tr>
					<td style="height: 50px;"></td>
				</tr>
				<tr>
					<td style="height: 130px;" class="c_font">
						<p>디자인 에이전트는 디자인을 해보지 않은 일반인이나 이제 막 디자인을 시작한 사람들에게<br>
               			   자유롭게 본인의 디자인을 등록할 수 있는 공간을 제공하고 제작자와 연결하여 <br>
               			   본인이 디자인한 작품을 제작할 수 있도록 도와주는 페이지입니다.</p>
					</td>
				</tr>
				<tr id="c_img">
					<td>
						<img src="../img/catagory.JPG" />
					</td>
				</tr>
				<tr>
					<td style="height: 200px;"  class="c_font">
						<p>디자인 에이전트는 누구나 손쉽게 사용하고 이용할 수 있도록 사용자에게 서비스를 제공하고,<br>
               			   수많은 개인 및 다양한 파트너들이 성공의 꽃을 피울 수 있도록,<br>
                		   경쟁력을 키우며 다가올 미래를 준비하겠습니다.</p>
					</td>
				</tr>
				<tr>
					<td style="height: 100px;"></td>
				</tr>
			</table>
		</div>
	</div>
	<%@ include file="../footer.jsp" %>
</body>
</html>