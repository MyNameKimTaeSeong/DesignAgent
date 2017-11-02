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
<title>관리자 페이지 입니다.</title>
</head>
<script type="text/javascript">
	function deleteP() {
		var test = confirm("게시물을 삭제 하시겠습니까 ?");
		if (test == true) {
			alert("삭제 되었습니다.");
		} else if (test == false) {
			alert("취소 되었습니다.");
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
				<h1>&nbsp&nbsp&nbsp&nbsp&nbsp게시물 관리</h1>
			</div>
			<div id="table_div">
				<table id="table_attribute">
					<tr>
						<td class="Pnum">번호</td>
						<td class="title">제목</td>
						<td class="writer">작성자</td>
						<td class="list">카테고리</td>
						<td class="Wday">작성 날짜</td>
						<td class="Pfire">관리</td>
				</table>

				<!-- 데이터베이스 에서 받아와야하는 부분  -->
				<c:forEach var="list" items="${PostList}">
					<table class="table_info">
						<td class="Pnum_info">${list.p_num }</td>
						<td class="title_info"><button id="btn2"
								style="cursor: pointer;" onclick="show(${list.p_num })">${list.title }</button></td>
						<td class="writer_info">${list.id }</td>
						<td class="list_info">${list.category }</td>
						<td class="Wday_info">${list.upload_date }</td>
						<td class="pfire"><button type="button" class="btn"
								onclick="deleteP()">삭제</button></td>
					</table>
					<!-- 클릭했을때 상세정보 뜨는폼 -->
					<div class="slide">
						<div class="slidetitle">
							<!-- 제목 + 글 표시 -->

							<table id="c_q_top">

								<tr>
									<td class="q_text"><span class="span_blod">작성자</span></td>
									<td id="name_width"><span id="q_name">${list.id }</span></td>
									<td class="q_text"><span class="span_blod">카테고리</span></td>
									<td><span id="q_date">${list.category }</span></td>
								</tr>
							</table>
							<table class="c_line">
								<tr>
									<td class="q_text"><span class="span_blod">제목</span></td>
									<td colspan="3">
										<p id="q_title">${list.title }</p>
									</td>
								</tr>
							</table>
							<table id="c_q_bottom">
								<tr>
									<td class="q_text"><span class="span_blod">내용</span></td>
									<td colspan="3">
										<p id="q_content">
											<img src="${list.photo_url }">
										</p> <!-- 이미지부분  -->
									</td>
								</tr>
							</table>
							<div id="button">
								<!-- 승인버튼 div -->
								<button type="button" class="btn" onclick="OK(${list.p_num})">승인</button>
							</div>

							<!-- display detail 부분 끝  -->
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