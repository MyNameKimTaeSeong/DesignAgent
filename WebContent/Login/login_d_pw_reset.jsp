<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
body {
	margin: 0 auto;
}

div#header {
	background-color: white;
	border-color: #333333;
	width: 500px;
}

#logo {
	width: 500px;
	height: 60px;
	padding-bottom: 0px;
	padding: 10px 0px;
	margin: 5px 0px 5px 0px;;
}

div#content {
	width: 500px;
	border-color: #333333;
}

#edge {
	border: 1px solid #dadada;
	width: 300px;
	margin: 0 auto;
}

.in {
	box-sizing: border-box;
	padding: 15px;
	height: 50px;
	width: 400px;
	border-width: 0px;
	border-bottom: 1px solid #f0f0f0;
	width: 300px;
}

#btn_edge {
	width: 500px;
	height: 50px;
	margin: 0 auto;
	text-align: center;
	margin-top: 5px;
}

#btn {
	background-color: #b22222;
	color: #ffffff;
	text-align: center;
	border: 0px;
	padding: 5px;
}
</style>
</head>
<body>
	<form action="../Login_Join/d_resetPW.do" name="myform" method="post">
		<%@ include file="../LJ_header.jsp" %>
		<div id="content">
			<div id="edge">
				<input type="password" name="pw1_reset" id="pw1_reset" class="in" placeholder="비밀번호 재설정"> 
				<input type="password" name="pw2_reset" id="pw2_reset" class="in" placeholder="비밀번호 재설정 확인">
				<input type="hidden" name="d_id" value="${result_id}">
			</div>
			<div id="btn_edge">
				<button type="submit" id="btn">재설정 완료</button>
			</div>
		</div>
	</form>

</body>
</html>