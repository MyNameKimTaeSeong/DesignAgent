<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="styleSheet.css">
<style type="text/css">
.slide {
	display: none;
}

.span {
	margin-left: 50px;
}

.title_table {
	width: 1000px;
	margin: auto;
	text-align: left;
	margin-bottom: 20px;
}

.span2 {
	margin-left: 20px;
}

div#container>#c_q_top {
	height: 55px;
	border-top: 3px solid #333333;
	border-bottom: 1px solid #333333;
}

div#container>.c_line {
	height: 50px;
	border-bottom: 1px solid #333333;
}

div#container>#c_q_bottom {
	height: 380px;
	border-bottom: 3px solid #333333;
}

.q_text {
	text-align: center;
	width: 130px;
}

#q_name {
	width: 260px;
	height: 30px;
	margin: 10px 20px;
}

#q_date {
	width: 260px;
	height: 30px;
	margin: 10px 20px;
}

#q_title {
	width: 600px;
	height: 30px;
	margin: 10px 20px;
}

#q_content {
	margin: 10px 20px;
}

#name_width {
	width: 300px;
}

.span_blod {
	font-weight: bold;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>������ ������ �Դϴ�.</title>
</head>
<script type="text/javascript">
	function deleteP() {
		var test = confirm("�Խù��� ���� �Ͻðڽ��ϱ� ?");
		if (test == true) {
			alert("���� �Ǿ����ϴ�.");
		} else if (test == false) {
			alert("��� �Ǿ����ϴ�.");
		}
	}
	function show(num) {
		var array_div = document.getElementsByClassName("slide")
		if (array_div[num-1].style.display == 'block') {
			array_div[i].style.display = "none";
		} else {
			array_div[num-1].style.display = "block";
		}
		for(var i = 0; i<array_div.length; i++){
			if(i != (num-1)){
				array_div[i].style.display = "none";
			}
		}
	}
	function OK(num) {
		location.href="../Admin/Approval.do?p_num="+num;
	}
	
</script>

<body>
	<div id="warp">
		<%@include file="admin_header.jsp"%>
		<div id="content">
			<div id="sub_cotent">
				<h1>&nbsp&nbsp&nbsp&nbsp&nbsp�Խù� ����</h1>
			</div>
			<div id="table_div">
				<table id="table_attribute">
					<tr>
						<td class="Pnum">��ȣ</td>
						<td class="title">����</td>
						<td class="writer">�ۼ���</td>
						<td class="list">ī�װ�</td>
						<td class="Wday">�ۼ� ��¥</td>
						<td class="Pfire">����</td>
				</table>

				<!-- �����ͺ��̽� ���� �޾ƿ;��ϴ� �κ�  -->
				<c:forEach var="list" items="${PostList}">
					<table class="table_info">
						<td class="Pnum_info">${list.p_num }</td>
						<td class="title_info"><button id="btn2"
								style="cursor: pointer;" onclick="show(${list.p_num })">${list.title }</button></td>
						<td class="writer_info">${list.id }</td>
						<td class="list_info">${list.category }</td>
						<td class="Wday_info">${list.upload_date }</td>
						<td class="pfire"><button type="button" class="btn"
								onclick="deleteP()">����</button></td>
					</table>
					<!-- Ŭ�������� ������ �ߴ��� -->
					<div class="slide">
						<div class="slidetitle">
							<!-- ���� + �� ǥ�� -->

							<table id="c_q_top">

								<tr>
									<td class="q_text"><span class="span_blod">�ۼ���</span></td>
									<td id="name_width"><span id="q_name">${list.id }</span></td>
									<td class="q_text"><span class="span_blod">ī�װ�</span></td>
									<td><span id="q_date">${list.category }</span></td>
								</tr>
							</table>
							<table class="c_line">
								<tr>
									<td class="q_text"><span class="span_blod">����</span></td>
									<td colspan="3">
										<p id="q_title">${list.title }</p>
									</td>
								</tr>
							</table>
							<table id="c_q_bottom">
								<tr>
									<td class="q_text"><span class="span_blod">����</span></td>
									<td colspan="3">
										<p id="q_content">
											<img src="${list.photo_url }">
										</p> <!-- �̹����κ�  -->
									</td>
								</tr>
							</table>
							<div id="button">
								<!-- ���ι�ư div -->
								<button type="button" class="btn" onclick="OK(${list.p_num})">����</button>
							</div>

							<!-- display detail �κ� ��  -->
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div id="footer">
			<%@include file="../footer.jsp"%></div>

	</div>
</body>
</html>