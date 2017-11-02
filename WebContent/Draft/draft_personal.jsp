<%@page import="java.util.ArrayList"%>
<%@page import="Draft.DesignAgentDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Design Agent</title>
<style type="text/css">
	body{
		margin: 0px;
	}
	.boxSize{
		box-sizing: border-box;
	}
	p, span{
		font-family: Noto Sans CJK KR;
	}
	iframe{
		width: 100%;
		height: 100%;
	}
	#wrapper{
		margin: 0 auto;
		width: 1200px;
		height: 100%;
	}
	#header{
		width: 1200px;
		height: 340px;
	}
	div#menu_line{
		line-height: 70px;
		width: 100%;
		height: 70px;
		background-color: #333333;
		color: white;
		padding-left: 80px;
		box-sizing: border-box;
	}
	div#menu_line > span{
		font-family: 'Noto Sans CJK KR DemLight';
		font-size: 15pt;
	}
	#content{
		width: 1200px;
		height: 1615px;
	}
	#best{
		width: 830px;
		height: 330px;
		margin: 0 auto;
		margin-top: 50px;
		border: 1px solid #333333;	
	}
	#best > p{
		width: 830px;
		height: 25px;
		margin: 0px;
		margin-bottom: 10px;
		padding: 0px;
		font-size: 18pt;
	}
	#best_container{
		width: 830px;
		height: 295px;
		padding: 0px 25px;
	}
	.best_pic{
		width: 240px;
		height: 295px;
		float: left;
	}
	.best_img{
		width: 240px;
		height: 240px;	
		margin: 0px;
	}
	.best_img_size{
		width: 240px;
		height: 240px;
	}
	#best2{
		margin: 0px 30px;
	}
	.best_id{
		width: 240px;
		height: 30px;
		padding: 0px;
	}
	.best_id > p{
		margin: 0 auto;
		padding: 0px;
		text-align: center;
		font-size: 15pt;
	}
	#category_btn{
		width: 750px;
		height: 60px;
		border: 1px solid #333333;
		margin: 0 auto;
		margin-top: 20px;
		padding: 10px 50px;
	}	
	.category_css{
		margin-right: 43px;
	}
	.cate_btn{
		width: 125px;
		height: 40px;
		font-size: 16pt;
		text-align: center;
		font-family: Noto Sans CJK KR;
		background-color: #f9f9f9;
		border: none;
	}
	.cate_btn:HOVER{
		background-color: #b22222;
		color: #ffffff;
	}
	#division{
		width: 350px;
		height: 60px;
		margin-top: 20px;
		margin-left: 100px;
		padding: 15px 0px;
	}
	#division > p{
		font-size: 16pt;
		font-weight: bold;
		margin: 0 auto;
		display: inline;
	}
	#division > a{
		font-family: Noto Sans CJK KR;
		text-decoration: none;
		color: black;
	}
	#draft_container{
		width: 1000px;
		height: 855px;
		margin-left: 100px;
		margin-top: 15px;
	}
	#draft{
		width: 235px;
		height: 285px;	
		padding: 0px;
		float: left;
	}
	#draft_img{
		width: 235px;
		height: 235px;
		margin: 0px;
		margin-bottom:5px;
		padding: 0px;
	}
	.img{
		width: 235px;
		height: 235px;
	}
	/* draft 사이 간격 */
	div.draft_margin{
		margin-right: 20px;
	}
	.like_btn{
		width: 30px;
		height: 30px;
		border: none;
		padding: 0px;
		margin-right: 5px;
		margin-left: 10px;
		background-color: #ffffff;
		background-image: url("../img/heart.png");	
	}
	.upload_id{
		margin: 0px;
		padding: 0px;
		padding-bottom: 5px;
		display: inline;
		font-size: 15pt;
		vertical-align: top;
	}
	#page_btn{
		position:relative;
		width: 1000px;
		height: 50px;
		margin: 0 auto;
		padding: 0px;
		margin-top:	30px;
		text-align: center;
		line-height: 50px;
	}
	#page_btn > a{
		text-decoration: none;
		color: black;
	}
	.page_style{
		font-size: 20pt;
	}
	.paging:HOVER{
		color: #b22222;
	}
	#upload_btn{
		width: 100px;
		height: 40px;
		font-family: oto Sans CJK KR;
		font-size: 14pt;
		background-color: #b22222;
		color: white;
		border: none;
	}
	#upload{
		margin-top: 5px;
		position: absolute;
		right: 0px;	
	}
	#detail{		
		position: absolute;
		top: 0px;
		left: 0px;
		right: 0px;
		bottom: 0px;
		display: none;
	}
	.onHeart{
		background-image: url("../img/fullHeart.png");
	}

</style>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	function back(){
		document.getElementById("detail").style.display = "none";
		document.getElementsByTagName("body")[0].style.overflow = "visible";
	}
	function heartClick(k, p_num){	
		if(${id == null}){
			alert("로그인 후 이용해주세요!");
		}else{
			if($($(".heart")[k-1]).hasClass("onHeart")){
				$($(".heart")[k-1]).removeClass("onHeart");
			
				$.ajax({
					url : "../Draft/Update_Heart.do",
					data : "p_num="+p_num+"&chk=0"
				})
			}else{
				$($(".heart")[k-1]).addClass("onHeart");
			
				$.ajax({
					url : "../Draft/Update_Heart.do",
					data : "p_num="+p_num+"&chk=1"
				})
			}
		}
	}	
	function draftDetail(p_num){
		document.getElementById("detail").style.display = "block";
		document.getElementsByTagName("body")[0].style.overflow = "hidden";
		document.getElementById("detail").style.transform = "translate(0px," + window.scrollY + "px)";
		document.getElementsByTagName("iframe")[0].src = "../Draft/Select_One.do?my=0&p_num=" + p_num;
	}
	function popup(){
		var wName = "pop";
		winW = 500;
		winH = 650;
		var newWinW = (screen.width - winW) / 2;
		var newWinH = (screen.height - winH) / 2;
		var options = 'width = ' + winW +', height = ' + winH + ', left = ' + newWinW + ', top = ' + newWinH;
					 + 'scrollbars = 0' + ', location = 0'; 
	
		window.open("../img/personal.jpg", wName, options);
	}
</script>
</head>
<body onLoad="popup()">
<%
	String id = (String)session.getAttribute("id");
	DesignAgentDAO dao = new DesignAgentDAO();
	ArrayList<Integer> arr = dao.heartCheck(id);
	
	pageContext.setAttribute("arr", arr);
%>
	<%@ include file="../header.jsp" %>
	<!-- 전체 -->
	<div id="wrapper">
		<!-- header -->
		<!-- content -->
		<div id="content" class="boxSize">
			<!-- 메뉴라인 -->
			<div id="menu_line" class="boxSize">
				<span>Home > Clothes Draft > 개인제작</span>
			</div>
			<!-- best -->
			<div id="best" class="boxSize">
				<p align="center">Best</p>
				<!-- best 이미지 -->
				<div id="best_container" class="boxSize">
				<c:forEach var="list" items="${bestList}" varStatus="v">
					<c:if test="${v.count != 2}">
						<div class="best_pic boxSize">
							<div class="best_img boxSize">
								<img src="${list.photo_url}" class="best_img_size" onclick="draftDetail(${list.p_num})">
							</div>
							<div class="best_id boxSize">
								<p>${list.id}</p>
							</div>
						</div>
					</c:if>
					<c:if test="${v.count ==2}">
						<div class="best_pic boxSize" id="best2">
							<div class="best_img boxSize">
								<img src="${list.photo_url}" class="best_img_size" onclick="draftDetail(${list.p_num})">
							</div>
							<div class="best_id boxSize">
								<p>${list.id}</p>
							</div>
						</div>
					</c:if>
				</c:forEach>
				</div>
			</div>
			<!-- 의상 분류 버튼 -->
			<div id="category_btn" class="boxSize">
				<a href="../Draft/Select_Draft.do?sort=p&category=상의&nowPage=1"><input type="button" class="category_css cate_btn" value="상의"></a>
				<a href="../Draft/Select_Draft.do?sort=p&category=하의&nowPage=1"><input type="button" class="category_css cate_btn" value="하의"></a>
				<a href="../Draft/Select_Draft.do?sort=p&category=원피스&nowPage=1"><input type="button" class="category_css cate_btn" value="원피스"></a>
				<a href="../Draft/Select_Draft.do?sort=p&category=아우터&nowPage=1"><input type="button" class="cate_btn" value="아우터"></a>
			</div>
			<!-- 인기순/최신순 -->
			<div id="division" class="boxSize">
				<p>개인제작</p>&nbsp;&nbsp;
				<c:if test="${division == null}">
					<a href="../Draft/Select_Draft.do?sort=p&nowPage=1&division=newest" style="font-weight:bold">최신순</a>
					<a href="../Draft/Select_Draft.do?sort=p&nowPage=1&division=popularity">인기순</a>
				</c:if>
				<c:if test="${division != null}">
					<c:if test="${division == 'popularity'}">
						<a href="../Draft/Select_Draft.do?sort=p&nowPage=${nowPage}&division=newest">최신순</a>
						<a href="../Draft/Select_Draft.do?sort=p&nowPage=${nowPage}&division=popularity" style="font-weight:bold">인기순</a>
					</c:if>
					<c:if test="${division == 'newest'}">
						<a href="../Draft/Select_Draft.do?sort=p&nowPage=${nowPage}&division=newest" style="font-weight:bold">최신순</a>
						<a href="../Draft/Select_Draft.do?sort=p&nowPage=${nowPage}&division=popularity">인기순</a>
					</c:if>
				</c:if>		
			</div>
			<!-- 게시물 전체 container -->
			<div id="draft_container" class="boxSize">
				<!-- draft -->
				<c:if test="${draftList != null}">
					<c:forEach var="list" items="${draftList}" varStatus="v">
						<!-- 1~3열 사진 -->
						<c:if test="${v.count % 4 != 0 }">
							<div id="draft" class="draft_margin boxSize">
								<!-- draft 사진. click하면 detail 창 -->
								<div id="draft_img" class="boxSize">
									<img alt="" src="${list.photo_url}" class="img" onclick="draftDetail(${list.p_num})">
								</div>
								<!-- 하트 버튼 -->
								<c:if test="${empty arr}">
									<input type="button" class="like_btn heart" onclick="heartClick(${v.count}, '${id}', ${list.p_num})">
								</c:if>
								<c:forEach var="i" items="${arr}">
									<c:choose>
											<c:when test="${list.p_num == i}">
												<input type="button" class="like_btn onHeart" onclick="heartClick(${v.count}, '${id}', ${list.p_num})">
											</c:when>
										
									
										<c:otherwise>
											<input type="button" class="like_btn heart" onclick="heartClick(${v.count}, '${id}', ${list.p_num})">
										</c:otherwise>		
									</c:choose>							
								</c:forEach>
								<!-- ID -->
								<span class="upload_id">${list.id}</span>
							</div>	
						</c:if>
						<!-- 4열 사진 -->
						<c:if test="${v.count % 4 == 0}">
							<div id="draft" class="boxSize">
								<!-- draft 사진. click하면 detail 창 -->
								<div id="draft_img" class="boxSize">
									<img alt="" src="${list.photo_url}" class="img" onclick="draftDetail(${list.p_num})">
								</div>
								<!-- 하트 버튼 -->
								<c:if test="${empty arr}">
									<input type="button" class="like_btn heart" onclick="heartClick(${v.count}, '${id}', ${list.p_num})">
								</c:if>
								<c:forEach var="i" items="${arr}">
									<c:choose>
											<c:when test="${list.p_num == i}">
												<input type="button" class="like_btn onHeart" onclick="heartClick(${v.count}, '${id}', ${list.p_num})">
											</c:when>
										
									
										<c:otherwise>
											<input type="button" class="like_btn heart" onclick="heartClick(${v.count}, '${id}', ${list.p_num})">
										</c:otherwise>		
									</c:choose>							
								</c:forEach>
								<!-- ID -->
								<span class="upload_id">${list.id}</span>
							</div>
							<br>
						</c:if>							
					</c:forEach>	
				</c:if>
			</div>
			<!-- 페이지 버튼, upload 버튼 -->
			<div id="page_btn" class="boxSize">
				<!-- 이전 step으로 이동 -->
				<a href="../Draft/Select_Draft.do?sort=p&nowPage=${prePage}&division=${division}"><span class="page_style paging">&laquo;</span></a>&nbsp;
				<!-- 페이징 -->
				<c:forEach var="i" begin="${start_page}" end="${end_page}" step="1">
					<c:if test="${i == nowPage}">
						<a class="page_num" href="../Draft/Select_Draft.do?sort=p&nowPage=${i}&division=${division}"><span class="page_style paging" style="color:#b22222">${i}</span></a>&nbsp;
					</c:if>
					<c:if test="${i != nowPage}">
						<a class="page_num" href="../Draft/Select_Draft.do?sort=p&nowPage=${i}&division=${division}"><span class="page_style paging">${i}</span></a>&nbsp;
					</c:if>
				</c:forEach>
				<!-- 다음 step으로 이동 -->				
				<a href="../Draft/Select_Draft.do?sort=p&nowPage=${nextPage}&division=${division}"><span class="page_style paging">&raquo;</span></a>&nbsp;
				
				<!-- upload 버튼 -->
				<a href="draft_personal_upload.jsp" id="upload"><input type="button" value="Upload" id="upload_btn"></a>
			</div>
		</div>
		<!-- footer -->
		
	</div>
	<%@ include file="../footer.jsp" %>
	<div id="detail" class="boxSize">
		<iframe></iframe>
	</div>
</body>
</html>