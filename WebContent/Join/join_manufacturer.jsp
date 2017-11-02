<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
div#content {
	margin: 0 auto;
	height: 850px;
	width: 1200px;
}

div.c_title {
	padding-bottom: 30px;
}

div.SignUp {
	margin: 0 auto;
	width: 520px;
	height: 730px;
}

div#c_id_pw {
	border: 1px solid #dadada;
	margin: 20px;
	margin-left: 0px;
	margin-right: 0px;
	margin-top: 0px;
}

div .BL {
	border-bottom: 1px solid #f0f0f0;
}

#c_profile .c_position {
	float: left;
	border-bottom: 1px solid #f0f0f0;
}

#c_profile .c_depart {
	border-left: 1px solid #f0f0f0;
	border-bottom: 1px solid #f0f0f0;
}

div#c_profile {
	border: 1px solid #dadada;
}

.in {
	box-sizing: border-box;
	padding: 15px;
	height: 50px;
	width: 100%;
	border-width: 0px;
}

.an {
	box-sizing: border-box;
	padding: 15px;
	height: 50px;
	width: 50%;
	border-width: 0px;
}

#c_btn {
	box-sizing: border-box;
	margin-top: 20px;
	height: 60px;
	width: 100%;
	border-width: 0px;
	background-color: #b22222;
	color: #fafafa;
	font-size: 20px;
}

.c_id {
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
}

.guide .box {
	position: relative;
	float: right;
}

.up {
	width: 70px;
	height: 30px;
	border-color: transparent;
	color: #f0f0f0;
	cursor: pointer;
}

.upload {
	opacity: 0;
	position: relative;
	float: left;
}

.replace {
	position: absolute;
	right: 0px; width : 70px;
	height: 30px;
	border-color: transparent;
	background: #b22222;
	color: #f0f0f0;
	cursor: pointer;
	width: 70px;
}

.box2 {
	padding: 15px;
}
</style>
<script type="text/javascript">
	function checkForm(myPwd) {
		if (document.myform.c_id.value == "") {
			alert("아이디를 입력해주세요.");
			myform.c_id.focus();
		} else if (document.myform.c_pw1.value == "") {
			alert("비밀번호를 입력해주세요.");
			myform.c_pw1.focus();
		} else if (document.myform.c_pw2.value == "") {
			alert("확인을 위해 비밀번호 한번더 입력해주세요.");
			myform.c_pw2.focus();
		} else if (document.myform.c_pw1.value != document.myform.c_pw2.value) {
			alert("비밀번호가 일치하지 않습니다.");
			document.myform.c_pw2.value = "";
			myform.c_pw2.focus();
		} else if (document.myform.c_name.value == "") {
			alert("이름을 입력해주세요.");
			myform.c_name.focus();
		} else if (document.myform.c_position.value == "") {
			alert("부서를 입력해주세요.");
			myform.c_position.focus();

		} else if (document.myform.c_depart.value == "") {
			alert("직책을 입력해주세요.");
			myform.c_depart.focus();
		} else if (document.myform.c_companyName.value == "") {
			alert("회사명을 입력해주세요.");
			myform.c_companyName.focus();
		} else if (document.myform.c_phone.value == "") {
			alert("회사 번호를 입려해주세요.");
			myform.c_phone.focus();
		} else if (document.myform.c_fax.value == "") {
			alert("팩스 번호를 입력해주세요.");
			myform.c_fax.focus();
		} else if (document.myform.c_email.value == "") {
			alert("이메일을 입력해주세요.");
		} else {
			len = myPwd.value.length;
			if (len < 8 || len > 12) {
				alert("비밀번호는 8자 이상 12자 이하로 입력하세요.");
				document.myform.c_pw1.value = "";
				document.myform.c_pw2.value = "";
				myform.c_pw1.focus();
				return false;
			} else {
				document.myform.submit();
				alert("성공하셨습니다!");
				return true;
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
	
	function c_idCheck(){
		var url = "../Login_Join/c_joinCheck.do?c_id="+document.myform.c_id.value;
		window.open(url, "_blank_1", "toolbar=no, memubar=no, scrollbars=yes, resizable=no,width=450, height=200");		
	}    
</script>
</head>

<body onLoad="myform.c_id.focus()">
	<div id="wrap">
		<%@ include file="../LJ_header.jsp"%>
		<!-- 컨텐트 부분 -->
		<div id="content">
			<!-- 회원가입 입력 부분 -->
			<div class="SignUp" align="center">
				<div class="c_title">
					<span>제작사 회원가입</span>
				</div>

				<!-- 아이디, 비밀번호 입력 부분 -->
				<!-- 텍스트 크기 -->
				<form action="../Login_Join/c_login.do" name="myform" id="myform">
					<div id="c_id_pw">

                  <input type="text" name="c_id" id="c_id" placeholder="아이디" class="c_id">
                  <div id="double_ch">
                     <input type="button" value="중복확인" class="double_check" onclick="c_idCheck()">
                     <!-- <input type="hidden" id="reid" size="20"> -->
                  </div>

                  <input type="password" name="c_pw1" placeholder="비밀번호 입력"
                     class="c_pw1 in BL" maxlength="12"> <input
                     type="password" name="c_pw2" placeholder="비밀번호 입력 확인"
                     class="c_pw2 in" maxlength="12">

               </div>

               <!-- 제작사 상세 정보 부분 -->
               <div id="c_profile">
                  <div>
                     <input type="text" name="c_companyName" placeholder="회사명"
                        class="c_companyName in BL">
                  </div>
                  <div>
                     <input type="text" name="c_name" placeholder="이름"
                        class="c_name in BL">

                  </div>
                  <div class="absorption">
                     <input type="text" name="c_position" placeholder="부서"
                        class="c_position an"><input type="text" name="c_depart"
                        placeholder="직책" class="c_depart an">
                  </div>
                  
                  <div>
                     <input type="text" name="c_phone" placeholder="회사번호"
                        class="c_phone in BL" maxlength="11">
                  </div>
                  <div>
                     <input type="text" name="c_fax" placeholder="팩스 번호"
                        class="c_fax in BL">
                  </div>
                  <div>
                     <input type="text" name="c_email" placeholder="이메일"
                        class="c_email in BL">
                     <input type="hidden" name="Mix_div" value = "c">  
                  </div>
                  <div class="guide">
                     <div class="box2">
                       		 사업자 등록증을 등록해주세요
                        <div class="box">
                           <button class="replace">업로드</button>
                           <input type="file" value="파일 업로드" class="upload">
                        </div>
                     </div>
                  </div>
               </div>
               <div>
                  <input type="button" value="회원가입" id="c_btn"
                     onClick="isNumber(myform.c_phone),checkForm(myform.c_pw1)">
               </div>
            </form>
			</div>
		</div>

		<%@ include file="../footer.jsp"%>

	</div>
</body>
</html>