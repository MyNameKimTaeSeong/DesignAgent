<%@page import="java.net.URLDecoder"%>
<%@page import="Login_Join.d_loginDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="styleSheet.css">
<meta http-equiv="Content-Type" content="text/html; chars
"WebContent/admin_designer.jsp"et=EUC-KR">
<title>������ ������ �Դϴ�.</title>
<script type="text/javascript">
	function deleteM(d_id) {
		var test = confirm("ȸ���� ���� �Ͻðڽ��ϱ� ?");
		if(test == true){
			location.replace("../Admin/DesignerDelete.do?d_id="+d_id); 
		}
		else if(test == false){
		 alert("��� �Ǿ����ϴ�.");
		}			
	}
</script>
</head>
<body>
	<div id="warp">
		<%@include file="admin_header.jsp"%>
		<div id="content">
			<div id="sub_cotent">
				<h1>&nbsp&nbsp&nbsp&nbsp&nbsp�����̳� ����</h1>
			</div>
			<div id="table_div">
				<table id="table_attribute">
					<tr>
						<td class="num">��ȣ</td>  <!-- rownnum ���� �ѷ������ -->
						<td class="name">�̸�</td>
						<td class="email">�̸���</td>
						<td class="post">�޴��� ��ȣ</td>
						<td class="fire">ȸ�� Ż��</td>
				</table>
					<c:forEach var="list" items="${d_select}">
				<table class="table_info">

					<td class="num_info">${list.r}</td>
					<td class="name_info">${list.d_name}</td>
					<td class="email_info">${list.d_email }</td>
					<td class="post_info">${list.d_phone }</td>
					<td class="fire_info"><button type="button" class="btn"onclick="deleteM('${list.d_id}')">Ż��</button></td>

				</table>
					</c:forEach>
			</div>
		</div>
		<div id="footer">
			<%@include file="../footer.jsp"%></div>
	</div>
</body>
</html>