<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">

body{
margin: 0px;
}
#wrapper {  /* 전체틀 */
	margin: 0 auto;
	width: 1200px;
}

#header { /* 헤더부분 */
	height: 240px;
	width: 100%;
	margin-top: 60px;
}

#content {  /* 중간부분 */
	height: 650px;
	width: 100%;
}

#center1 { /* 왼쪽 로그인텍스트 로그인버튼 */
	width: 599.5px;
	height: 100%;
	float: left;
	box-sizing: border-box;
}

#center2 { /*  중간 선 */
	width: 1px;
	float: left;
	height: 100%;
	box-sizing: border-box;
}

#center3 { /* 오른쪽 회원가입 아이디찾기 비밀번호찾기 */
	width: 599.5px;
	height: 100%;
	float: left;
	box-sizing: border-box;
}

#text1 {  /* 오른쪽 회원가입 글자 */
	box-sizing: border-box;
	font-size: 12pt;
	margin: 57px  50px 20px 50px;
	font-family: Noto sans Mono CJK KR Regular;
}

#text2 { /* 오른쪽 아이디,비밀번호찾기 글자 */
	box-sizing: border-box;
	font-size: 12pt;
	margin: 0px 50px 20px 50px;
	font-family: Noto sans Mono CJK KR Regular;
}

.id {   /* 아이디인풋텍스트 */
	box-sizing: border-box;
	font-size: 14pt;
	padding: 15px;
	width: 350px;
	height: 50px;
	margin: 65px 50px 10px 200px;
	border: 1px solid #b9b8b8;
	font-family: Noto sans Mono CJK KR Regular
}

.pw { /* 비번인풋텍스트 */
	box-sizing: border-box;
	font-size: 14pt;
	padding: 15px;
	width: 350px;
	height: 50px;
	margin: 0px 50px 10px 200px;
	border: 1px solid #b9b8b8;
	font-family: Noto sans Mono CJK KR Regular
}

.login { /* 로그인버튼 */
	box-sizing: border-box;
	font-size: 14pt;
	width: 350px;
	height: 50px;
	margin: 100px 50px 10px 200px;
	text-align: center;
	background: #b22222;
	color: #ffffff;
	border-width: 0px;
	font-family: Noto sans Mono CJK KR Regular
}

.join { /* 회원가입 버튼 */
	box-sizing: border-box;
	font-size: 14pt;
	font-style: Noto Sans CJK KR;
	width: 350px;
	height: 50px;
	margin: 0px 200px 30px 50px;
	background: #b22222;
	color: #ffffff;
	border-width: 0px;
	font-family: Noto sans Mono CJK KR Regular
}

.idsearch { /* 아이디찾기버튼 */
	box-sizing: border-box;
	font-size: 14pt;
	width: 350px;
	height: 50px;
	margin: 0px 50px 10px 50px;
	text-align: center; background : #b22222;
	color: #ffffff;
	border-width: 0px;
	font-family: Noto sans Mono CJK KR Regular;
	background: #b22222;
}

.pwsearch { /* 비번찾기 버튼 */
	box-sizing: border-box;
	font-size: 14pt;
	width: 350px;
	height: 50px;
	margin: 0px 50px 10px 50px;
	text-align: center;
	font-family: Noto sans Mono CJK KR Regular;
	background: #b22222;
	color: #ffffff;
	border-width: 0px; 
}

.line { /* 중간선 */
	border: 1px solid #b9b8b8;
	height: 390px;
}
</style>
</head>
<body>
	<c:if test="${param.success == true }">
		<script>
			alert("회원가입 성공하셨습니다.");
		</script>
	</c:if>
	<c:if test="${param.login_false == false}">
		<script>
			alert("아이디,비밀번호가 틀렸거나 없습니다.");
		</script>
	</c:if>
	
	
	
	
 	<c:if test="${d_id != null }"> 
 	
 	<script> 
 	var id = "<c:out value="${d_id}" />";
 	alert(id+"입니다");
 	</script> 
 	</c:if> 
	<script type="text/javascript">
function d_idCheck(){
		
	var url = "../Login_Join/d_joinCheck.do?d_id="+document.myform.d_id.value;
		window.open(url, "_blank_1", "toolbar=no, memubar=no, scrollbars=yes, resizable=no,width=450, height=200");
		
}
</script>
	<%@ include file="../LJ_header.jsp" %>
	<div id="wrapper">
		<div id="content">
		<form action="../Login_Join/d_joinLogin.do" method="post">
			<div id="center1">
				<input type="text" placeholder="아이디" class="id" name="id"> <input
					type="password" placeholder="비밀번호" class="pw"name="pw"> <input
					type="submit" value="로그인" name="d_login" class="login">
			</div>
			</form>
			<div id="center2">
				<div class="line"></div>
			</div>
			<div id="center3">
				<div id="text1">- 회원가입을 하시면 더많은 혜택을 받으실 수 있습니다</div>
				<a href="../Join/join_agreement.jsp"><input type="submit" value="회원가입" class="join"></a>
				<div id="text2">- 아이디 또는 비밀번호를 잊어버렸나요?</div>
				<a href="../Login/login_d_searchID.jsp"><input type="submit" value="아이디찾기" class="idsearch"></a> 
				<a href="../Login/login_d_searchPW.jsp"><input type="submit" value="비밀번호찾기" class="pwsearch"></a>
			</div>

		</div>

		<%@ include file="../footer.jsp"%>

	</div>

</body>
</html>