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
			alert("���̵� �Է����ּ���.");
			myform.c_id.focus();
		} else if (document.myform.c_pw1.value == "") {
			alert("��й�ȣ�� �Է����ּ���.");
			myform.c_pw1.focus();
		} else if (document.myform.c_pw2.value == "") {
			alert("Ȯ���� ���� ��й�ȣ �ѹ��� �Է����ּ���.");
			myform.c_pw2.focus();
		} else if (document.myform.c_pw1.value != document.myform.c_pw2.value) {
			alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
			document.myform.c_pw2.value = "";
			myform.c_pw2.focus();
		} else if (document.myform.c_name.value == "") {
			alert("�̸��� �Է����ּ���.");
			myform.c_name.focus();
		} else if (document.myform.c_position.value == "") {
			alert("�μ��� �Է����ּ���.");
			myform.c_position.focus();

		} else if (document.myform.c_depart.value == "") {
			alert("��å�� �Է����ּ���.");
			myform.c_depart.focus();
		} else if (document.myform.c_companyName.value == "") {
			alert("ȸ����� �Է����ּ���.");
			myform.c_companyName.focus();
		} else if (document.myform.c_phone.value == "") {
			alert("ȸ�� ��ȣ�� �Է����ּ���.");
			myform.c_phone.focus();
		} else if (document.myform.c_fax.value == "") {
			alert("�ѽ� ��ȣ�� �Է����ּ���.");
			myform.c_fax.focus();
		} else if (document.myform.c_email.value == "") {
			alert("�̸����� �Է����ּ���.");
		} else {
			len = myPwd.value.length;
			if (len < 8 || len > 12) {
				alert("��й�ȣ�� 8�� �̻� 12�� ���Ϸ� �Է��ϼ���.");
				document.myform.c_pw1.value = "";
				document.myform.c_pw2.value = "";
				myform.c_pw1.focus();
				return false;
			} else {
				document.myform.submit();
				alert("�����ϼ̽��ϴ�!");
				return true;
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
	
	function c_idCheck(){
		var url = "../Login_Join/c_joinCheck.do?c_id="+document.myform.c_id.value;
		window.open(url, "_blank_1", "toolbar=no, memubar=no, scrollbars=yes, resizable=no,width=450, height=200");		
	}    
</script>
</head>

<body onLoad="myform.c_id.focus()">
	<div id="wrap">
		<%@ include file="../LJ_header.jsp"%>
		<!-- ����Ʈ �κ� -->
		<div id="content">
			<!-- ȸ������ �Է� �κ� -->
			<div class="SignUp" align="center">
				<div class="c_title">
					<span>���ۻ� ȸ������</span>
				</div>

				<!-- ���̵�, ��й�ȣ �Է� �κ� -->
				<!-- �ؽ�Ʈ ũ�� -->
				<form action="../Login_Join/c_login.do" name="myform" id="myform">
					<div id="c_id_pw">

                  <input type="text" name="c_id" id="c_id" placeholder="���̵�" class="c_id">
                  <div id="double_ch">
                     <input type="button" value="�ߺ�Ȯ��" class="double_check" onclick="c_idCheck()">
                     <!-- <input type="hidden" id="reid" size="20"> -->
                  </div>

                  <input type="password" name="c_pw1" placeholder="��й�ȣ �Է�"
                     class="c_pw1 in BL" maxlength="12"> <input
                     type="password" name="c_pw2" placeholder="��й�ȣ �Է� Ȯ��"
                     class="c_pw2 in" maxlength="12">

               </div>

               <!-- ���ۻ� �� ���� �κ� -->
               <div id="c_profile">
                  <div>
                     <input type="text" name="c_companyName" placeholder="ȸ���"
                        class="c_companyName in BL">
                  </div>
                  <div>
                     <input type="text" name="c_name" placeholder="�̸�"
                        class="c_name in BL">

                  </div>
                  <div class="absorption">
                     <input type="text" name="c_position" placeholder="�μ�"
                        class="c_position an"><input type="text" name="c_depart"
                        placeholder="��å" class="c_depart an">
                  </div>
                  
                  <div>
                     <input type="text" name="c_phone" placeholder="ȸ���ȣ"
                        class="c_phone in BL" maxlength="11">
                  </div>
                  <div>
                     <input type="text" name="c_fax" placeholder="�ѽ� ��ȣ"
                        class="c_fax in BL">
                  </div>
                  <div>
                     <input type="text" name="c_email" placeholder="�̸���"
                        class="c_email in BL">
                     <input type="hidden" name="Mix_div" value = "c">  
                  </div>
                  <div class="guide">
                     <div class="box2">
                       		 ����� ������� ������ּ���
                        <div class="box">
                           <button class="replace">���ε�</button>
                           <input type="file" value="���� ���ε�" class="upload">
                        </div>
                     </div>
                  </div>
               </div>
               <div>
                  <input type="button" value="ȸ������" id="c_btn"
                     onClick="isNumber(myform.c_phone),checkForm(myform.c_pw1)">
               </div>
            </form>
			</div>
		</div>

		<%@ include file="../footer.jsp"%>

	</div>
</body>
</html>