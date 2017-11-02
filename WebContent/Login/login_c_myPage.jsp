<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
	right: 0px;
	width: 70px;
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
</head>
<body>
	<%@ include file="../header.jsp"%>
	<div id="wrapper">
	<div id="menu_line">
			<span>Home > My Page</span>
	</div>
	<div id="content">
		<!-- ȸ������ �Է� �κ� -->
		<div class="SignUp" align="center">
			<div class="c_title">
				<span>��������</span>
			</div>

			<!-- ���̵�, ��й�ȣ �Է� �κ� -->
			<!-- �ؽ�Ʈ ũ�� -->
			<form action="../Login_Join/c_update.do" name="myform" id="myform">
            <div id="c_id_pw">

               <input type="text" name="c_id" placeholder="���̵�" class="c_id in BL" value="${dto.c_id }">


               <input type="password" name="c_pw1" placeholder="��й�ȣ"
                  class="c_pw1 in BL" maxlength="15"> <input type="password"
                  name="c_pw2" placeholder="��й�ȣ Ȯ��" class="c_pw2 in" maxlength="15">

            </div>

            <!-- ���ۻ� �� ���� �κ� -->
            <div id="c_profile">
               <div>
                  <input type="text" name="c_name" placeholder="�̸�"
                     class="c_name in BL" value="${dto.c_name }">

               </div>
               <div class="absorption">
                  <input type="text" name="c_position" placeholder="�μ�"
                     class="c_position an" value="${dto.c_position }">
                     <input type="text" name="c_depart" placeholder="��å" class="c_depart an" value="${dto.c_depart }">
               </div>
               <div>
                  <input type="text" name="c_companyName" placeholder="ȸ���"
                     class="c_companyName in BL" value="${dto.c_companyName }">
               </div>
               <div>
                  <input type="text" name="c_phone" placeholder="ȸ���ȣ"
                     class="c_phone in BL" maxlength="11" value="${dto.c_phone}">
               </div>
               <div>
                  <input type="text" name="c_fax" placeholder="�ѽ� ��ȣ"
                     class="c_fax in BL" value="${ dto.c_fax}">
               </div>
               <div>
                  <input type="text" name="c_ema   il" placeholder="�̸���"
                     class="c_email in BL" value="${dto.c_email }">
               </div>
               <div class="guide">
                  <div class="box2">
                     <span>����� ������� ������ּ���</span>
                     <div class="box">
                        <button class="replace">���ε�</button>
                        <input type="file" value="���� ���ε�" class="upload">
                     </div>
                  </div>
               </div>
            </div>
            <div>
               <input type="submit" value="�����Ϸ�" id="c_btn"
                  onClick="checkForm(myform.c_pw1)">
            </div>
         </form>
		</div>
	</div>
	</div>
	<%@ include file="../footer.jsp"%>
</body>
</html>