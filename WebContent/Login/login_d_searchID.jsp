<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
body {
	margin: auto;
}

#wrapper { /* 전체틀 */
	margin: 0 auto;
	width: 1200px;
}

#content { /*  중간컨텐츠 */
	height: 660px;
	width: 100%;
	text-align: center;
}

#header { /* 헤더부분 */
	height: 240px;
	width: 100%;
	margin-top: 60px;
}

.text1 { /* 첫번째글자 */
	height: 15px;
	font-size: 12pt;
	box-sizing: border-box;
	margin-top: 100px;
	margin-bottom: 50px;
	font-family: Noto sans Mono CJK KR Regular
}

.text2 { /* 두번째텍스트글자 */
	margin-top: 0px;
	margin-bottom: 30px;
	font-size: 20px;
	font-family: Noto sans Mono CJK KR Regular
}

.line { /* 첫번째 선 */
	width: 800px;
	border: 1px solid #b9b8b8;
	margin-left: 200px;
	margin-bottom: 30px;
}

.line2 { /* 두번째선 */
	width: 800px;
	border: 1px solid #b9b8b8;
	margin-left: 200px;
	margin-bottom: 30px;
}

.c_name { /* 아이디인풋텍스트 */
	box-sizing: border-box;
	font-size: 14pt;
	padding: 15px;
	width: 350px;
	height: 50px;
	margin: 0px 422px 10px 428px;
	border: 1px solid #b9b8b8;
	font-family: Noto sans Mono CJK KR Regular
}

.c_email { /* 비번인풋텍스트 */
	box-sizing: border-box;
	font-size: 14pt;
	padding: 15px;
	width: 350px;
	height: 50px;
	margin: 0px 422px 30px 428px;
	border: 1px solid #b9b8b8;
	font-family: Noto sans Mono CJK KR Regular
}

.idsearch { /*  아이디버튼 */
	box-sizing: border-box;
	width: 100px;
	height: 50px;
	margin: 0px 540px 10px 560px;
	text-align: center;
	font-style: Noto Sans CJK KR;
	background: #b22222;
	border: 0px;
	color: #ffffff;
	font-family: Noto sans Mono CJK KR Regular;
	font-size: 12pt;
}
</style>
<script type="text/javascript">
function d_idid(){
	if(eval(${!empty search})){
		alert('${search}');
		location.href = "../Login/login_main.jsp";
	}
}
</script>
</head>
<body onload="d_idid()">
	<%@ include file="../LJ_header.jsp" %>
	<div id="wrapper">
		<form action="../Login_Join/d_searchId.do"  method="post" ><!--method="post"  -->
			<div id="content">
				<div class="text1">회원가입 시 입력하신 이름과 이메일로 아이디를 확인 하실 수 있습니다</div>
				<div class="text2">아이디 찾기</div>
				<div class="line"></div>
				<input type="text" placeholder="이름" class="c_name" name="d_name"> <input
					type="text" placeholder="이메일" class="c_email" name="d_email">
				<div class="line2"></div>
				
				<input type="submit" value="아이디 찾기" class="idsearch">
			</div>
	      </form>	
		<%@ include file="../footer.jsp"%>
	</div>

</body>
</html>