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

#d_id_pw .d_pw1 {
   border-bottom: 1px solid #f0f0f0;
}

#d_profile .d_name {
   border-bottom: 1px solid #f0f0f0;
}

#d_profile .d_phone {
   border-bottom: 1px solid #f0f0f0;
}

#d_profile .d_email {
   border-bottom: 1px solid #f0f0f0;
}

#d_profile .d_blof {
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
}
</style>
</head>
<script type="text/javascript">
   function checkForm(myPwd) {
      uPhone = myPwd.value;
      if (document.myform.d_id.value == "") {
         alert("아이디를 입력해주세요.");
         myform.d_id.focus();
      } else if (document.myform.d_pw1.value == " ") {
         alert("비밀번호를 입력해주세요.");
         myform.d_pw1.focus();
      } else if (document.myform.d_pw2.value == "") {
         alert("확인을 위해 비밀번호를 한번더 입력해주세요.");
         myform.d_pw2.focus();
      } else if (document.myform.d_pw1.value != document.myform.d_pw2.value) {
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
         if (len <= 8 || len >= 13) {
            alert("비밀번호는 8자 이상 12자 이하로 입력하세요.");
            document.myform.pw1.value = "";
            document.myform.pw2.value = "";
            myform.pw1.focus();
            return false;
         } else {
            document.myform.submit();
            alert("성공하셨습니다!");
            return true;
         }
         
      }
   }
</script>
<body onload="myform.d_id.focus()">
   <div id="wrap">
      <%@ include file="admin_header.jsp"%>
      <!-- 컨텐트 부분 -->
      <div id="content">
         <!-- 회원가입 입력 부분 -->
         <div class="SignUp" align="center">
            <div class="d_title">
               <h2>일반 회원가입</h2>
            </div>

            <!-- 아이디, 비밀번호 입력 부분 -->
            <!-- 텍스트 크기 -->
            <form action="designer" id="myform" name="myform" method="post" >
               <div id="d_id_pw">

                  <input type="text" name="d_id" placeholder="아이디" class="d_id">
                  <div id="double_ch">
                     <input type="button" value="중복확인" class="double_check">
                  </div>

                  <input type="text" name="d_pw1" placeholder="비밀번호"
                     class="d_pw1 in"> <input type="text" name="d_pw2"
                     placeholder="비밀번호 확인" class="d_pw2 in">

               </div>

               <!-- 제작사 상세 정보 부분 -->
               <div id="d_profile">

                  <input type="text" name="d_name" placeholder="이름"
                     class="d_name in"> <input type="text" name="d_phone"
                     placeholder="핸드폰 번호" class="d_phone in"> <input
                     type="text" name="d_email" placeholder="이메일 주소" class="d_email in">

                  <input type="text" name="d_blog" placeholder="블로그 주소"
                     class="d_blog in">


               </div>
               <div id="botton">
                  <input type="submit" value="회원가입" id="d_btn" onclick="checkForm(myform.d_phone)">
               </div>
            </form>
         </div>
      </div>

      <%@ include file="../footer.jsp"%>

   </div>
</body>
</html>