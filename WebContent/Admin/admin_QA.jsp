<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="styleSheet.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>관리자 페이지 입니다.</title>
<script type="text/javascript">
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
</script>
<style type="text/css">
.slide {
	display: none;
}

div#wrapper {
	margin: 0 auto;
	width: 1200px;
}

div#menu_line {
	width: 100%;
	height: 70px;
	background-color: #333333;
	color: #ffffff;
	padding: 25px 0px 25px 100px;
	box-sizing: border-box;
}

div#container {
	width: 100%;
	height: auto;
}

div#container>table {
	margin: 0 auto;
	width: 1000px;
}

div#container>#c_post_top {
	height: 55px;
	border-top: 3px solid #333333;
	border-bottom: 1px solid #333333;
}

div#container>.c_line {
	height: 50px;
	border-bottom: 1px solid #333333;
}

div#container>#c_post_bottom {
	height: 380px;
	border-bottom: 3px solid #333333;
	margin-bottom: 50px;
}

div#container>#c_post_re {
	height: 300px;
	border-top: 3px solid #333333;
	border-bottom: 3px solid #333333;
}

.p_text {
	text-align: center;
	width: 130px;
}

#p_name {
	padding-right: 300px;
	width: 260px;
	height: 30px;
	margin: 10px 20px;
}

#p_date {
	width: 260px;
	height: 30px;
	margin: 10px 20px;
}

#p_title {
	width: 600px;
	height: 30px;
	margin: 10px 20px;
}

#p_content {
	margin: 10px 20px;
}

#p_list {
	float: right;
	padding: 18px 15px 0 0;
}

#p_list>a {
	text-decoration: none;
	color: #000000;
}

#p_re {
	width: 600px;
	margin: 10px 20px;
	line-height: 280px;
}

div.c_btn {
	width: 100px;
	height: 50px;
	background-color: #333333;
	border-radius: 10px;
	line-height: 50px;
	margin-bottom: 100px;
	margin-left: 450px;
}

hr {
	width: 950px;
}
.c_btn>input{
border: none;
background-color: #333333;
height: 50px;}

</style>
</head>
<body>
	<div id="warp">
		<%@include file="admin_header.jsp"%>
		<div id="content">

			<div id="sub_cotent">
				<h1>&nbsp&nbsp&nbsp&nbsp&nbspQ&A 관리</h1>

			</div>
			<div id="table_div">
				<table id="table_attribute">
					<tr>
						<td class="Qnum">번호</td>
						<td class="Qtitle">제목</td>
						<td class="Qwriter">작성자</td>
						<td class="Qday">작성 날짜</td>
						<td class="Qrespopne">답변 여부</td>
				</table>

				<c:forEach var="list" items="${QA_select}">

					<table class="table_info">
					<tr>
						<td class="Qnum_info">${list.q_num }</td>
						<td class="Qtitle_info"><button id="btn2"
								style="cursor: pointer;" onclick="show('${list.q_num }')">${list.q_title }</button></td>
						<td class="Qwriter_info">${list.q_writer }</td>
						<td class="Qday_info">${list.q_date }</td>
						<td class="Qrespopne_info">
							<c:if test="${ list.q_re == null }">
								<span style="color: red;">N</span>
							</c:if>	
							<c:if test="${ list.q_re != null }">
								<span style="color: blue;">Y</span>
							</c:if>			
						</td>
					</tr>
					</table>
					<div class="slide">
						<div class="slidetitle">
							<table id="c_post_top">
								<tr>
									<td class="p_text"><span>NAME</span></td>
									<td><span id="p_name">${list.q_writer }</span></td>
									<td class="p_text"><span>DATE</span></td>
									<td><span id="p_date">${list.q_date }</span></td>
								</tr>
							</table>
							<hr>
							<table class="c_line">
								<tr>
									<td class="p_text"><span>TITLE</span></td>
									<td colspan="3">
										<p id="p_title">${list.q_title }</p>
									</td>
								</tr>
							</table>
							<hr>
							<table id="c_post_bottom">
								<tr>
									<td class="p_text"><span>CONTENT</span></td>
									<td colspan="3">
										<p id="p_content">${list.q_content }
											
										</p>
									</td>
								</tr>
							</table>
							<hr>
							<table id="c_post_re">
								<tr>
									<td class="p_text"><img src="../img/arrow.png" alt="화살표">
										<span>RE : </span></td>
									<td colspan="3">
										<p id="p_re">

										<form action="../Admin/ReAnser.do">
											<input type="hidden" name="q_num" value="${list.q_num }">
											<input type="text" name="anser" size="110"
												style="height: 280px;">
										</p>
									</td>
								</tr>
							</table>
							<hr>
							<table style="text-align: center;">
								<tr>
									<td style="height: 40px;" id="p_list"><a
										href="../Admin/SelectQA.do"><span>목록보기</span></a></td>
								</tr>
								<tr>
									<td>
										<div class="c_btn">
									<input type="submit"style="text-decoration: none; color: #ffffff;" value="확인">
												</form>
											</div>								
									</td>
								</tr>
							</table>
							<hr>
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