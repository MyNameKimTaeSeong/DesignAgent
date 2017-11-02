<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>main</title>
<style type="text/css">
iframe {
	width: 100%;
	height: 100%;
}

div#wrapper {
	margin: 0 auto;
	width: 1200px;
}

div#container {
	margin: 0px;
	padding: 0px;
	height: 1920px;
}

div#menu_bar {
	margin: 0 auto;
	margin-top: 50px;
	margin-bottom: 60px;
	width: 1000px;
	height: 50px;
	text-align: center;
	line-height: 50px;
	background-image: url("../img/con_menubar.png");
	background-repeat: no-repeat;
}

div#menu_bar>span {
	font-family: 'Noto Sans CJK KR Bold';
	font-size: 12pt;
}

#draft_container {
	width: 1000px;
	height: 855px;
	margin: 100px;
	padding: 0px 75px;
}

#draft {
	width: 250px;
	height: 285px;
	padding: 0px;
	float: left;
	margin-bottom: 20px;
}

#draft_img {
	width: 250px;
	height: 250px;
	margin: 0px;
	margin-bottom: 10px;
	padding: 0px;
}

.img {
	width: 250px;
	height: 250px;
}
/* draft 사이 간격 */
.draft_margin {
	margin-right: 50px;
}

.upload_id {
	margin: 0px;
	padding: 0px;
	padding-bottom: 5px;
	display: inline;
	font-size: 15pt;
	vertical-align: top;
	padding-left:50px;
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	function back(){
		document.getElementById("detail").style.display = "none";
		document.getElementsByTagName("body")[0].style.overflow = "visible";
	} 
	function draftDetail(p_num){
		document.getElementById("detail").style.display = "block";
		document.getElementsByTagName("body")[0].style.overflow = "hidden";
		document.getElementById("detail").style.transform = "translate(0px," + window.scrollY + "px)";
		document.getElementsByTagName("iframe")[0].src = "../Draft/Select_One.do?my=0&p_num=" + p_num;
	}
</script>
</head>
<body>
	<%@ include file="main_header.jsp"%>
	<div id="wrapper">
		<div id="container">
			<%@ include file="../Introduce/intro_animation.html"%>
			<div id="menu_bar">
				<span>BEST DESIGN DRAFT</span>
			</div>

			<!-- draft -->
			<div id="draft_container">
				<c:forEach var="list" items="${mainList}" varStatus="v">
					<!-- 1~2열 사진 -->
					<c:if test="${v.count % 3 != 0 }">
						<div id="draft" class="draft_margin">
							<!-- draft 사진. click하면 detail 창 -->
							<div id="draft_img">
								<img alt="" src="${list.photo_url}" class="img"
									onclick="draftDetail(${list.p_num})">
							</div>
							<!-- ID -->
							<span class="upload_id">${list.id}</span>
						</div>
					</c:if>
					<!-- 3열 사진 -->
					<c:if test="${v.count % 3 == 0}">
						<div id="draft">
							<!-- draft 사진. click하면 detail 창-->
							<div id="draft_img">
								<img alt="" src="${list.photo_url}" class="img"
									onclick="draftDetail(${list.p_num})">
							</div>
							<!-- ID -->
							<span class="upload_id">${list.id}</span> <br>
						</div>
					</c:if>
				</c:forEach>
			</div>
		</div>
	</div>
	<%@ include file="../footer.jsp"%>
	<!-- detail 창 -->
	<div id="detail">
		<iframe></iframe>
	</div>
</body>
</html>