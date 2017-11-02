<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
div#wrapper{
	width: 1200px;
	margin: 0 auto;
}
div#menu_line{
	font-family: 'Noto Sans CJK KR DemLight';
	font-size: 15pt;
	line-height: 70px;
	width: 100%;
	height: 70px;
	background-color: #333333;
	color: white;
	padding-left: 80px;
	box-sizing: border-box;
}
div#content {
	margin: 0 auto;
	margin-top: 100px;
	height: 650px;
	width: 1200px;
}

div.d_title {
	font-family: 'Noto Sans CJK KR DemLight';
	font-size: 20px;
	font-weight: bold;
	margin: 0 auto;
	padding: 0px;
	width: 300px;
	height: 50px;
	text-align: center;
}

div.SignUp {
	margin: 0 auto;
	width: 520px;
	height: 730px;
	margin-top: 10px;
}

div#d_id_pw {
	border: 1px solid #dadada;
	margin: 20px;
	margin-left: 0px;
	margin-right: 0px;
	margin-top: 0px;
}

div .BL {
	border-bottom: 1px solid #f0f0f0;
}

div#d_profile {
	border: 1px solid #dadada;
}

.in {
	box-sizing: border-box;
	padding: 15px;
	height: 50px;
	width: 100%;
	border-width: 0px;
}

#d_btn {
	box-sizing: border-box;
	margin-top: 20px;
	height: 60px;
	width: 100%;
	border-width: 0px;
	background-color: #b22222;
	color: #fafafa;
	font-size: 20px;
}

.box {
	margin: 0 auto;
	margin-bottom: 50px;
	text-align: center;
}

.box1 {
	display: inline-block;
	margin-right: 10px;
}
.box1 > a{
	color: #b22222;
}
.box2:HOVER > a{
	color: #b22222;
}

.box2 {
	display: inline-block;
	margin: 0 auto;
	margin-left: 10px;
}

.line {
	margin: 0 auto;
	height: 12px;
	width: 1px;
	background-color: #dadada;
	display: inline-block;
}

.pro {
	text-decoration: none;
	color: #000000;
}
</style>
</head>
<script type="text/javascript">
 function checkForm(){		
	var pw1 = document.getElementById("pw1").value;
	var pw2 = document.getElementById("pw2").value;

	if(pw1 != pw2){
		alert("비밀번호가 일치 하지 않습니다.")
	}else
		document.getElementById("myform").submit();	
}  

</script>
<body>
	<%@ include file="../header.jsp"%>
	<div id="wrapper">
		<div id="menu_line">
			<span>Home > My Page > 회원 정보</span>
		</div>
		<div id="content">
		<!-- 서브 타이틀 -->
			<div class="d_title">
				<div class="box1 box">
					<a href="#" class="pro"><span>회원 정보</span></a>
				</div>
				<div class="line"></div>
				<div class="box2 box">
					<a href="../Draft/Select_My.do?id=${id}&nowPage=1" class="pro"><span>내 게시물</span></a>
				</div>
			</div>
			<div class="SignUp" align="center">
			<!-- 아이디, 비밀번호 입력 부분 -->
			<!-- 텍스트 크기 -->
			<form action="../Login_Join/d_update.do" id="myform" name="myform" >        
				<div id="d_id_pw">
      	        	<div name="d_id" class="d_id in BL">
        	        	<span> ${dto.d_id}</span>
          	     	</div>
               		<input type="password" id="pw1" name="d_pw1" class="d_pw1 in BL" maxlength="15" placeholder="비밀번호">
               		<input type="password" id="pw2" name="pw2" class="d_pw2 in" maxlength="15" placeholder="비밀번호 확인">
            	</div>

            	<!-- 제작사 상세 정보 부분 -->
            	<div id="d_profile">
             		<input type="text" name="d_name" class="d_name in BL" value="${dto.d_name}"> 
               		<input type="text" name="d_phone" class="d_phone in BL" maxlength="11" value="${dto.d_phone }">
               		<input type="text" name=d_email class="d_email in BL" value="${dto.d_email }"> 
               		<input type="text" name="d_blog" class="d_blog in" value="${ dto.d_blog }" placeholder="블로그">
               		<input type="hidden" name="d_id" value="${dto.d_id }">
            	</div>
            	<div id="botton">
               		<input type="button" value="수정 완료" id="d_btn"   onclick="checkForm()">
            	</div>
         	</form>
			</div>
		</div>
	</div>
	<%@ include file="../footer.jsp"%>
</body>
</html>