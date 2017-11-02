<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="styleSheet.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>관리자 페이지 입니다.</title>

<script type="text/javascript">
	function ok() {
		var test = confirm("업체 승인 하시겠습니까 ?");
		if(test == true){
			alert("승인 되었습니다.")
		}else if(test == false){
			alert("취소 되었습니다.")
		}
	}
		function deleteM(c_id) {	
			var test = confirm("회원을 삭제 하시겠습니까 ?");
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
				<h1>&nbsp&nbsp&nbsp&nbsp&nbsp협력업체 관리</h1>
				</div>
			<div id="table_div">
				<table id="table_attribute">
					<tr>
						<td class="Mnum">번호</td>
						<td class="Mname">업체명</td>
						<td class="Memail">이름/직책</td>
						<td class="Mpost">FAX 번호</td>
						<td class="Mfire">가입 승인 관리</td>
				</table>
				<c:forEach var="list" items="${c_select}">
				<table class="table_info">
						<td class="Mnum_info">${list.r}</td>
						<td class="Mname_info">${list.c_companyName}</td>
						<td class="Mname2_info">${list.c_name }/${ list.c_depart}</td>
						<td class="Fax_info">${list.c_fax}</td>
						<td class="Mfire_info"><button type="button"class="btn" onclick="deleteM('${list.c_id}')">탈퇴</button> </td>
				</table>
				</c:forEach>
			</div>
		</div>
		<div id="footer">
		<%@include file="../footer.jsp" %></div>
	
	
	</div>

</body>
</html>