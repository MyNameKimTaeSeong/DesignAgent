<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">

function d_idok(){
		opener.myform.d_id.value=document.myform.d_id.value;
		
		self.close();
	}  

</script>
</head>
<body>
	<h2>���̵� �ߺ� üũ</h2>
	<form action="../Login_Join/d_JoinCheck.do" method="get" name="myform">
    <input type="hidden" name="d_id" value="${ d_id }"> <br> 
	<c:if test="${result == 1 }"> 
         ${d_id}�� �̹� ��� ���� ���̵��Դϴ�.
	</c:if>
	<c:if test="${result == -1}">
         ${d_id}�� ��� ������ ���̵��Դϴ�.
         <input type="button" value="���" onclick="d_idok()">
	</c:if>
	</form>
</body>
</html>