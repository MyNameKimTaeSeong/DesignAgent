<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
function c_idok(){
		opener.myform.c_id.value=document.myform.c_id.value;
		
		self.close();
	}  
</script>
</head>
<body>
<h2>아이디 중복 체크</h2>
<form action="../Login_Join/c_joinCheck.do" method="get" name="myform">
	<input type="hidden" name="c_id" value="${c_id}"> <br> 
	<c:if test="${result == 1 }">
         ${c_id}는 이미 사용 중인 아이디입니다.
    </c:if>

   		<c:if test="${result == -1}">
         	${c_id}는 사용 가능한 아이디입니다.
         	<input type="button" value="사용" onclick="c_idok()">
    	</c:if>
	</form>
</body>
</html>