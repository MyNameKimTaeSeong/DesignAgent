<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="styleSheet.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>������ ������ �Դϴ�.</title>

<script type="text/javascript">
	function ok() {
		var test = confirm("��ü ���� �Ͻðڽ��ϱ� ?");
		if(test == true){
			alert("���� �Ǿ����ϴ�.")
		}else if(test == false){
			alert("��� �Ǿ����ϴ�.")
		}
	}
		function deleteM(c_id) {	
			var test = confirm("ȸ���� ���� �Ͻðڽ��ϱ� ?");
			if(test == true){
				location.replace("ManuFactureDelete.do?c_id="+c_id); 
			}
		}

</script>
</head>
<body>
<div id="warp">
	<%@include file="admin_header.jsp" %>
		<div id="content">
		<div id="sub_cotent">
				<h1>&nbsp&nbsp&nbsp&nbsp&nbsp���¾�ü ����</h1>
				</div>
			<div id="table_div">
				<table id="table_attribute">
					<tr>
						<td class="Mnum">��ȣ</td>
						<td class="Mname">��ü��</td>
						<td class="Memail">�̸�/��å</td>
						<td class="Mpost">FAX ��ȣ</td>
						<td class="Mfire">���� ���� ����</td>
				</table>
				<c:forEach var="list" items="${c_select}">
				<table class="table_info">
						<td class="Mnum_info">${list.r}</td>
						<td class="Mname_info">${list.c_companyName}</td>
						<td class="Mname2_info">${list.c_name }/${ list.c_depart}</td>
						<td class="Fax_info">${list.c_fax}</td>
						<td class="Mfire_info"><button type="button"class="btn" onclick="deleteM('${list.c_id}')">Ż��</button> </td>
				</table>
				</c:forEach>
			</div>
		</div>
		<div id="footer">
		<%@include file="../footer.jsp" %></div>
	
	
	</div>

</body>
</html>