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
			alert("��й�ȣ�� �Է����ּ���.");
			myform.d_pw1.focus();
		} else if (document.myform.d_pw2.value == "") {
			alert("Ȯ���� ���� ��й�ȣ�� �ѹ��� �Է����ּ���.");
			myform.d_pw2.focus();
		} else if (document.myform.d_pw.value != document.myform.d_pw2.value) {
			document.myform.d_pw2.value = "";
			alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
			myform.d_pw2.focus();
		} else if (document.myform.d_name.value == "") {
			alert("�̸��� �Է����ּ���.");
			myform.d_name.focus();
		} else if (document.myform.d_phone.value == "") {
			alert("�ڵ��� ��ȣ�� �Է����ּ���");
			myform.d_phone.focus();
		} else if (document.myform.d_email.value == "") {
			alert("�̸����� �Է����ּ���.");
			myform.d_email.focus();
		} else if (document.myform.d_blog.value == "") {
			alert("��α� �ּҸ� �Է����ּ���.");
			myform.d_blog.focus();
		} else {
			len = myPwd.value.length;
		
			if (len < 8 || len > 12) {
				alert("��й�ȣ�� 8�� �̻� 12�� ���Ϸ� �Է��ϼ���.");
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
			alert("'����ó' �ʵ忡�� ���ڸ� �Է��� �ּ���")  ;
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
			alert("ȸ������ �����߽��ϴ�.");
		</script>
	</c:if>
	<%@ include file="../LJ_header.jsp"%>
	<!-- ����Ʈ �κ� -->
	<div id="content">

		<!-- ȸ������ �Է� �κ� -->
		<div class="SignUp" align="center">
			<div class="d_title">
				<span>�Ϲ� ȸ������</span>
			</div>

			<!-- ���̵�, ��й�ȣ �Է� �κ� -->
			<!-- �ؽ�Ʈ ũ�� -->
			<form action="../Login_Join/d_login.do" id="myform" name="myform">
				<div id="d_id_pw">

               <input type="text" name="d_id" placeholder="���̵�" class="d_id">
               <div id="double_ch">
					<input type="button" value="�ߺ�Ȯ��" name="double_chk" class="double_check" onclick="d_idCheck()"> 
					<input type="hidden" id="reid" size="20">
               </div>

               <input type="password" name="d_pw" class="d_pw in BL" maxlength="12" placeholder="��й�ȣ �Է�"> 
               <input type="password" name="d_pw2"  class="d_pw2 in" maxlength="12" placeholder="��й�ȣ �Է� Ȯ��">
            </div>

            <!-- ���ۻ� �� ���� �κ� -->
            <div id="d_profile">

               <input type="text" name="d_name" placeholder="�̸�"
                  class="d_name in BL"> <input type="text" name="d_phone"
                  placeholder="�ڵ��� ��ȣ" class="d_phone in BL" maxlength="11">
               <input type="email" name="d_email" placeholder="�̸��� �ּ�"
                  class="d_email in BL" required="required"> <input type="text" name="d_blog"
                  placeholder="��α� �ּ�" class="d_blog in">
               <input type="hidden" name="Mix_div" value = "d" > 

            </div>
            <div id="botton">
               <input type="button" value="ȸ������" id="d_btn"
                  onclick="isNumber(myform.d_phone),checkForm(myform.d_pw)">
            </div>
         </form>
		</div>
	</div>
	<%@ include file="../footer.jsp"%>
</body>
</html>