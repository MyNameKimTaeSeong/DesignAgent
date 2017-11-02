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
	div{
		box-sizing: border-box;
	}
	span{
		font-family: Noto Sans CJK KR;
	}
	#wrapper{
		left:50%;
		top:50%;
		transform:translate(-50%,-50%);
		background: white;
		position: absolute;
		width: 1000px;
		height: 600px;
		padding: 10px 10px 60px 60px;
		border: 1px solid #b9b8b8;
		margin: 0 auto;
		z-index : 999;
	}
	#cancel_btn{
		width: 30px;
		height: 30px;
		float: right;
		background-image: url("../img/cancel.png");
		background-color: white;
		border: none;
	}
	#img_wrapper{
		margin-top: 30px;
	}
	.div_size{
		width: 400px;
		height: 460px;
		float: left;
	}
	#image{
		margin-right: 60px;
		border: 1px solid #b9b8b8;
	}
	#img_size{
		 width: 400px;
		 height: 460px;
	}
	#image_info{
		width: 400px;
		height: 460px;
		background-color: #f9f9f9;
		padding: 60px 20px 50px 20px;
	}	
	.font{
		font-weight: bold;
		margin-bottom: 10px;
		width: 80px;
		display: inline-block;
	}
	#comment{
		height: 140px;
		background-color: white;
		border: 1px solid #b9b8b8;
		margin-bottom: 20px;
	}
	#heart_div{
		margin: 0 auto;
		width: 320px;
		height: 30px;
	}
	.like_btn{
		width: 30px;
		height: 30px;
		background-image: url("../img/heart.png");
		border: none;
		background-color: #f9f9f9;
		display: block;
		margin: 0 auto;
		padding: 0px;
	}
	#back{
		position: absolute;
		top: 0px;
		left: 0px;
		bottom: 0px;
		right: 0px;
		background: black;
		opacity:0.8;
		z-index : 1;
	}
	.onHeart{
		background-image: url("../img/fullHeart.png");
	}
</style>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	function back(){
		parent.back();
	}
	function heartClick(p_num){
		if($($(".heart")).hasClass("onHeart")){
			$($(".heart")).removeClass("onHeart");
			
			$.ajax({
				url : "../Draft/Update_Heart.do",
				data : "p_num="+p_num+"&chk=0"
			})
		}else{
			$($(".heart")).addClass("onHeart");
			
			$.ajax({
				url : "../Draft/Update_Heart.do",
				data : "p_num="+p_num+"&chk=1"
			})
		}
	}
</script>
</head>
<body>
	<div id="back"></div>
	<div id="wrapper">
		<!-- x버튼 -->
		<input type="button" id="cancel_btn" onclick="back()">
		<br>
		<div id="img_wrapper">
			<!-- 이미지 영역 -->
			<div id="image" class="div_size">
				<img alt="" src="${draft_info.photo_url}" id="img_size">
			</div>
			<div id="image_info" class="div_size">
				<!-- 게시물관련 정보 -->
				<div id="info_div">
					<span class="font">제목</span>
					<span class="font2">${draft_info.title}</span><br>
					<span class="font">작성자</span>
					<span class="font2">${draft_info.id}</span><br>
					<span class="font">작성일자</span>
					<span class="font2">${draft_info.upload_date}</span><br>
					<span class="font">하트 수</span>
					<span class="font2">${draft_info.heart_num}&nbsp;개</span><br>
					<span class="font">설명</span><br>
					<div id="comment">
						<span class="font2">${draft_info.comments}</span>
					</div>
				</div>
				<!-- 하트 버튼 -->
				<div id="heart_div">
					<input type="button" class="like_btn heart" onclick="heartClick(${draft_info.p_num})">
				</div>
			</div>
		</div>
	</div>
</body>
</html>