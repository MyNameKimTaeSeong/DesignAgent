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
<h2>���̵� �ߺ� üũ</h2>
<form action="../Login_Join/c_joinCheck.do" method="get" name="myform">
	<input type="hidden" name="c_id" value="${c_id}"> <br> 
	<c:if test="${result == 1 }">
         ${c_id}�� �̹� ��� ���� ���̵��Դϴ�.
    </c:if>

   		<c:if test="${result == -1}">
         	${c_id}�� ��� ������ ���̵��Դϴ�.
         	<input type="button" value="���" onclick="c_idok()">
    	</c:if>
	</form>
</body>
</html>