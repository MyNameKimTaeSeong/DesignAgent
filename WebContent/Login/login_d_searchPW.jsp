<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
body{
margin:0px;
}
#wrapper {
	margin: 0 auto;
	width: 1200px;
}

#content {
	height: 660px;
	width: 100%;
	text-align: center;
}

#header {
	height: 240px;
	width: 100%;
	margin-top: 60px;
}

.text1 {
	
	
	font-size: 12pt;
	box-sizing: border-box;
	margin-top: 100px;
	font-family:Noto sans Mono CJK KR Regular
}

.text2 {
	
	font-size: 20px;
	margin-top:50px;
	font-family:Noto sans Mono CJK KR Regular
	
}

.line {
	width: 800px;
	border: 1px solid #b9b8b8;
	margin-top:30px;
	margin-bottom:30px;
}

.line2 {
	width: 800px;
	border: 1px solid #b9b8b8;
	margin-left: 200px;
	margin-bottom: 30px;
	margin-top:0px;
}

.id {
	box-sizing: border-box;
	font-size: 14pt;
	padding: 15px;
	width: 350px;
	height: 50px;
	margin: 0px 422px 10px 428px;
	border: 1px solid #b9b8b8;
	font-family:Noto sans Mono CJK KR Regular
}

.name {
	box-sizing: border-box;
	font-size: 14pt;
	padding: 15px;
	width: 350px;
	height: 50px;
	margin: 0px 422px 10px 428px;
	border: 1px solid #b9b8b8;
	font-family:Noto sans Mono CJK KR Regular
}
.email{
	box-sizing: border-box;
	font-size: 14pt;
	padding: 15px;
	width: 350px;
	height: 50px;
	margin: 0px 422px 30px 428px;
	border: 1px solid #b9b8b8;
	font-family:Noto sans Mono CJK KR Regular
}


.pwsearch{
box-sizing: border-box;
width: 150px; height: 50px; 

font-style:Noto Sans CJK KR ;
background: #b22222;
border: 0px;
color: #ffffff;
font-family:Noto sans Mono CJK KR Regular;
font-size: 12pt;
}
</style>
</head>
<body>
	<%@ include file="../LJ_header.jsp" %>
	<div id="wrapper">
		<form action="../Login_Join/d_searchPW.do" method="post">
		<div id="content">
			<div class="text1">회원가입 시 입력하신 아이디와 이름,이메일로 확인 하실 수 있습니다</div>
			<div class="text2">비밀번호 찾기</div>
			<hr class="line">
			<input type="text" placeholder="아이디" class="id" name="d_id"> 
			<input type="text" placeholder="이름" class="name" name="d_name">
			<input type="text" placeholder ="이메일" class="email" name="d_email">
			<hr class="line2">
			<input type="submit" value="비밀번호 찾기" class="pwsearch">
		</div>
		</form>
	</div>
	<%@ include file="../footer.jsp"%>
</body>
</html>