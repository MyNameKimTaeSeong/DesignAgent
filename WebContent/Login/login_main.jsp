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
#wrapper {  /* ��üƲ */
	margin: 0 auto;
	width: 1200px;
}

#header { /* ����κ� */
	height: 240px;
	width: 100%;
	margin-top: 60px;
}

#content {  /* �߰��κ� */
	height: 650px;
	width: 100%;
}

#center1 { /* ���� �α����ؽ�Ʈ �α��ι�ư */
	width: 599.5px;
	height: 100%;
	float: left;
	box-sizing: border-box;
}

#center2 { /*  �߰� �� */
	width: 1px;
	float: left;
	height: 100%;
	box-sizing: border-box;
}

#center3 { /* ������ ȸ������ ���̵�ã�� ��й�ȣã�� */
	width: 599.5px;
	height: 100%;
	float: left;
	box-sizing: border-box;
}

#text1 {  /* ������ ȸ������ ���� */
	box-sizing: border-box;
	font-size: 12pt;
	margin: 57px  50px 20px 50px;
	font-family: Noto sans Mono CJK KR Regular;
}

#text2 { /* ������ ���̵�,��й�ȣã�� ���� */
	box-sizing: border-box;
	font-size: 12pt;
	margin: 0px 50px 20px 50px;
	font-family: Noto sans Mono CJK KR Regular;
}

.id {   /* ���̵���ǲ�ؽ�Ʈ */
	box-sizing: border-box;
	font-size: 14pt;
	padding: 15px;
	width: 350px;
	height: 50px;
	margin: 65px 50px 10px 200px;
	border: 1px solid #b9b8b8;
	font-family: Noto sans Mono CJK KR Regular
}

.pw { /* �����ǲ�ؽ�Ʈ */
	box-sizing: border-box;
	font-size: 14pt;
	padding: 15px;
	width: 350px;
	height: 50px;
	margin: 0px 50px 10px 200px;
	border: 1px solid #b9b8b8;
	font-family: Noto sans Mono CJK KR Regular
}

.login { /* �α��ι�ư */
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

.join { /* ȸ������ ��ư */
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

.idsearch { /* ���̵�ã���ư */
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

.pwsearch { /* ���ã�� ��ư */
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

.line { /* �߰��� */
	border: 1px solid #b9b8b8;
	height: 390px;
}
</style>
</head>
<body>
	<c:if test="${param.success == true }">
		<script>
			alert("ȸ������ �����ϼ̽��ϴ�.");
		</script>
	</c:if>
	<c:if test="${param.login_false == false}">
		<script>
			alert("���̵�,��й�ȣ�� Ʋ�Ȱų� �����ϴ�.");
		</script>
	</c:if>
	
	
	
	
 	<c:if test="${d_id != null }"> 
 	
 	<script> 
 	var id = "<c:out value="${d_id}" />";
 	alert(id+"�Դϴ�");
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
				<input type="text" placeholder="���̵�" class="id" name="id"> <input
					type="password" placeholder="��й�ȣ" class="pw"name="pw"> <input
					type="submit" value="�α���" name="d_login" class="login">
			</div>
			</form>
			<div id="center2">
				<div class="line"></div>
			</div>
			<div id="center3">
				<div id="text1">- ȸ�������� �Ͻø� ������ ������ ������ �� �ֽ��ϴ�</div>
				<a href="../Join/join_agreement.jsp"><input type="submit" value="ȸ������" class="join"></a>
				<div id="text2">- ���̵� �Ǵ� ��й�ȣ�� �ؾ���ȳ���?</div>
				<a href="../Login/login_d_searchID.jsp"><input type="submit" value="���̵�ã��" class="idsearch"></a> 
				<a href="../Login/login_d_searchPW.jsp"><input type="submit" value="��й�ȣã��" class="pwsearch"></a>
			</div>

		</div>

		<%@ include file="../footer.jsp"%>

	</div>

</body>
</html>