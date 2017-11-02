<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
div#content {
	margin: 0 auto;
	height: 650px;
	width: 1200px;
}

div.d_title {
	padding-bottom: 30px;
}

div.SignUp {
	margin: 0 auto;
	width: 520px;
	height: 730px;
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

.d_id {
	box-sizing: border-box;
	padding: 15px;
	height: 50px;
	width: 430px;
	border-width: 0px;
	float: left;
}

#double_ch {
	height: 50px;
	border-bottom: 1px solid #f0f0f0;
	bor
}

.double_check {
	float: right;
	margin-right: 15px;
	margin-top: 10px;
	color: #fafafa;
	background-color: #b22222;
	padding: 5px;
	border: 0px;
	radious: 10;
}
</style>
</head>
<script type="text/javascript">
	function checkForm(myPwd) {
		uPhone = myPwd.value;

		if (document.myform.d_pw.value == " ") {
			alert("비밀번호를 입력해주세요.");
			myform.d_pw1.focus();
		} else if (document.myform.d_pw2.value == "") {
			alert("확인을 위해 비밀번호를 한번더 입력해주세요.");
			myform.d_pw2.focus();
		} else if (document.myform.d_pw.value != document.myform.d_pw2.value) {
			document.myform.d_pw2.value = "";
			alert("비밀번호가 일치하지 않습니다.");
			myform.d_pw2.focus();
		} else if (document.myform.d_name.value == "") {
			alert("이름을 입력해주세요.");
			myform.d_name.focus();
		} else if (document.myform.d_phone.value == "") {
			alert("핸드폰 번호를 입력해주세요");
			myform.d_phone.focus();
		} else if (document.myform.d_email.value == "") {
			alert("이메일을 입력해주세요.");
			myform.d_email.focus();
		} else if (document.myform.d_blog.value == "") {
			alert("블로그 주소를 입력해주세요.");
			myform.d_blog.focus();
		} else {
			len = myPwd.value.length;
		
			if (len < 8 || len > 12) {
				alert("비밀번호는 8자 이상 12자 이하로 입력하세요.");
				document.myform.d_pw.value = "";
				document.myform.d_pw2.value = "";
				myform.d_pw.focus();
				
			} else {
				/* document.myform.submit(); */
				document.getElementById("myform").submit();
			}
		}
	}
	function isNumber(txt) {
		uPhone = txt.value;
		if (isNaN(uPhone)) {
			alert("'연락처' 필드에는 숫자만 입력해 주세요")  ;
			txt.value = ""
			txt.focus();
		}
	}
	function d_idCheck(){
		var url = "../Login_Join/d_joinCheck.do?d_id="+document.myform.d_id.value;
		window.open(url, "_blank_1", "toolbar=no, memubar=no, scrollbars=yes, resizable=no,width=450, height=200");	
	}
</script>

<body onload="myform.d_id.focus()">
	<c:if test="${param.success == false }">
		<script>
			alert("회원가입 실패했습니다.");
		</script>
	</c:if>
	<%@ include file="../LJ_header.jsp"%>
	<!-- 컨텐트 부분 -->
	<div id="content">

		<!-- 회원가입 입력 부분 -->
		<div class="SignUp" align="center">
			<div class="d_title">
				<span>일반 회원가입</span>
			</div>

			<!-- 아이디, 비밀번호 입력 부분 -->
			<!-- 텍스트 크기 -->
			<form action="../Login_Join/d_login.do" id="myform" name="myform">
				<div id="d_id_pw">

               <input type="text" name="d_id" placeholder="아이디" class="d_id">
               <div id="double_ch">
					<input type="button" value="중복확인" name="double_chk" class="double_check" onclick="d_idCheck()"> 
					<input type="hidden" id="reid" size="20">
               </div>

               <input type="password" name="d_pw" class="d_pw in BL" maxlength="12" placeholder="비밀번호 입력"> 
               <input type="password" name="d_pw2"  class="d_pw2 in" maxlength="12" placeholder="비밀번호 입력 확인">
            </div>

            <!-- 제작사 상세 정보 부분 -->
            <div id="d_profile">

               <input type="text" name="d_name" placeholder="이름"
                  class="d_name in BL"> <input type="text" name="d_phone"
                  placeholder="핸드폰 번호" class="d_phone in BL" maxlength="11">
               <input type="email" name="d_email" placeholder="이메일 주소"
                  class="d_email in BL" required="required"> <input type="text" name="d_blog"
                  placeholder="블로그 주소" class="d_blog in">
               <input type="hidden" name="Mix_div" value = "d" > 

            </div>
            <div id="botton">
               <input type="button" value="회원가입" id="d_btn"
                  onclick="isNumber(myform.d_phone),checkForm(myform.d_pw)">
            </div>
         </form>
		</div>
	</div>
	<%@ include file="../footer.jsp"%>
</body>
</html>