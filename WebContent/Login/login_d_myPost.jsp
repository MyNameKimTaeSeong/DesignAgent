<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
iframe {
	width: 100%;
	height: 100%;
}

#wrapper { /* 전체틀 */
	width: 1200px;
	height: 1510px;
	margin: 0 auto;
}

#content {
	height: 950px;
}

div#menu_line {
	width: 1200px;
	height: 70px;
	background-color: #333333;
	color: white;
	padding: 25px 0px 25px 100px;
	box-sizing: border-box;
}

#center1 {
	height: 170px;
	text-align: center;
	line-height: 170px;
	font-family: sans Mono CJK KR Regular;
	font-size: 14pt;
}

#center2 {
	width: 1200px;
	height: 520px;
	box-sizing: border-box;
}

#line:after {
	padding: 0px 30px 0px 30px;
	content: " |\00a0";
	color: #dadada;
}

.a {
	text-decoration: none;
	color: #000000;
}

.draft_margin {
	margin-right: 20px;
}

#draft_container {
	width: 1000px;
	height: 480px;
	margin-left: 100px;
	margin-top: 15px;
}

#draft {
	width: 235px;
	height: 240px;
	padding: 0px;
	float: left;
}

#draft_img {
	width: 235px;
	height: 235px;
	margin: 0px;
	margin-bottom: 5px;
	padding: 0px;
}

.img {
	width: 235px;
	height: 235px;
}

#page_btn>a {
	text-decoration: none;
	color: black;
}

.page_style {
	font-size: 20pt;
}
.paging:HOVER{
	color: #b22222;
}

#page_btn {
	position: relative;
	width: 1000px;
	height: 50px;
	margin: 0 auto;
	padding: 0px;
	margin-top: 30px;
	text-align: center;
	line-height: 50px;
}

#detail {
	position: absolute;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	display: none;
}
</style>
<script type="text/javascript">
	function back(){
		document.getElementById("detail").style.display = "none";
		document.getElementsByTagName("body")[0].style.overflow = "visible";
	} 
	function draftDetail(p_num){
		document.getElementById("detail").style.display = "block";
		document.getElementsByTagName("body")[0].style.overflow = "hidden";
		document.getElementById("detail").style.transform = "translate(0px," + window.scrollY + "px)";
		document.getElementsByTagName("iframe")[0].src = "../Draft/Select_One.do?my=1&p_num=" + p_num;
	}
</script>
</head>
<body>
   <div id="wrapper">
   	<%@ include file="../header.jsp" %>
      <div id="menu_line">
         <span>MyPage > 내 게시물</span>
      </div>
      <div id="content">
         <div id="center1">
            <span id="line"><a href="../Login/login_d_myPage.jsp" class="a">회원 정보</a></span><a href="#" class="a">내 게시물</a>
         </div>
         <div id="draft_container">
				<!-- draft -->
				<c:if test="${myList != null}">
					<c:forEach var="list" items="${myList}" varStatus="v">
						<!-- 1~3열 사진 -->
						<c:if test="${v.count % 4 != 0 }">
							<div id="draft" class="draft_margin">
								<!-- draft 사진. click하면 detail 창 -->
								<div id="draft_img" >
									<img alt="" src="${list.photo_url}" class="img" onclick="draftDetail(${list.p_num})">
								</div>
							</div>
						</c:if>
						<!-- 4열 사진 -->
						<c:if test="${v.count % 4 == 0}">
							<div id="draft">
								<!-- draft 사진. click하면 detail 창-->
								<div id="draft_img">
									<img alt="" src="${list.photo_url}" class="img" onclick="draftDetail(${list.p_num})">
								</div>
								<br>
							</div>
						</c:if>
					</c:forEach>	
				</c:if>
			</div>
         
         <div id="center3">
            <div id="page_btn">
               <!-- 이전 step으로 이동 -->
				<a href="../Draft/Select_My.do?nowPage=${my_prePage}&id=${id}"><span class="page_style paging">&laquo;</span></a>&nbsp;
				<!-- 페이징 -->
				<c:forEach var="i" begin="${my_start_page}" end="${my_end_page}" step="1">
					<c:if test="${i == myNowPage}">
						<a class="page_num" href="../Draft/Select_My.do?nowPage=${i}&id=${id}"><span class="page_style paging" style="color:#b22222">${i}</span></a>&nbsp;
					</c:if>
					<c:if test="${i != myNowPage}">
						<a class="page_num" href="../Draft/Select_my.do?nowPage=${i}&id=${id}"><span class="page_style paging">${i}</span></a>&nbsp;
					</c:if>
				</c:forEach>
				<!-- 다음 step으로 이동 -->
				<a href="../Draft/Select_My.do?nowPage=${my_nextPage}&id=${id}"><span class="page_style paging">&raquo;</span></a>&nbsp;
            </div>
         </div>
      </div>
      <%@ include file="../footer.jsp"%>
      <!-- detail 창 -->
   </div>
   <div id="detail">
		<iframe></iframe>
	</div>
</body>
</html>