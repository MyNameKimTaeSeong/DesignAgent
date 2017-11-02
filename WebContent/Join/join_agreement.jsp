<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/style.css" />
<style type="text/css">

/*this is just to organize the demo checkboxes*/
body {
	margin: 0 auto;
}

div#wrap {
	/*  	position: absolute;  */
	left: 0px;
	right: 0px;
	top: 0px;
	bottom: 0px;
}
#div#header {
	margin: 0 auto;
	background-color: #ffffff;
	height: 240px;
}

/*  �ΰ�  */
div.logo {
	margin: 0 auto;
	padding-top: 60px;
	width: 1200px;
	height: 120px;
	margin: 0 auto;
}

div#content {
	margin: 0 auto;
	height: 700px;
	width: 1200px;
	background-color: #ffffff;
}

div#agreement {
	margin: 0 auto;
	width: 520px;
	height: 650px;
}

div#DAA_top {
	margin: 0 auto;
	height: 255px;
	width: 100%;
	background-color: #ffffff;
	border: 1px;
	border-style: solid;
	border-color: #dadada;
}

.DAA_bar {
	height: 60px;
	width: 100%;
}

.DAA_pledge {
	margin: 0 auto;
	height: 195px;
	width: 500px;
	background-color: #fafafa;
	overflow: scroll;
	overflow-x: hidden;
	border: 1px;
	border-style: solid;
	border-color: #dadada;
}

.DAA {
	position: relative;
	left: 10px;
	margin: 0 auto;
	padding-top: 5px;
	padding-right: 20px;
	text-align: justify;
}

div#DAA_bottom {
	margin: 0 auto;
	margin-top: 20px;
	height: 255px;
	width: 100%;
	background-color: #ffffff;
	border: 1px;
	border-style: solid;
	border-color: #dadada;
	border-style: solid;
}

.DAA_bar {
	margin: 0 auto;
	height: 50px;
	width: 100%;
	background-color: white;
}

.a {
	padding-top: 15px;
	float: left;
}

.a_check {
	display: inline-block;
	margin-top: 10px;
}

.w {
	margin-top: 10px;
	margin-left: 200px;
	float: right;
	width: 50px;
}

.w2 {
	margin-top: 10px;
	margin-left: 140px;
	float: right;
	width: 50px;
}

.text {
	margin: 10px;
	height: 50px;
	width: 100%;
	border-width: 0px;
}

.a_btn {
	margin-top: 20px;
	height: 60px;
	width: 100%;
	border-width: 0px;
	background-color: #b22222;
	font-size: 20px;
	color: #fafafa;
}

.agr {
	box-sizing: border-box;
	margin: 0 auto;
	width: 250px;
	height: 60px;
	margin-top: 10px;
}

.n_agree {
	float: left;
}

.agree {
	display: inline-block;
	margin-left: 20px;
}

#btn {
	padding: 0px;
	border: 0px;
}

.h {
	margin: 0 auto;
}
</style>
</head>
<script type="text/javascript">
	function check(myform){
		var chk1 = document.myform.checkboxG1.checked;
		var chk2 = document.myform.checkboxG2.checked;
		
		if(chk1 == ""){
			alert("���1�� �������ּ���!");
			return false;
		}
		if(chk2 == ""){
			alert("���2�� �������ּ���!");
			return false;
		}
		if(chk1 && chk2 ){
			location.href="../Join/join_select.jsp";
		}
	}
</script>
<body>
	<%@ include file="../LJ_header.jsp"%>
	<!-- ����Ʈ �κ� -->
	<div id="content">
		<div id="agreement">
			<!-- �� �κ� -->
			<form action="" name="myform" onsubmit="return check(this)">
				<div id="DAA_top">
					<div class="DAA_bar">
						<div class="a">
							<span class="text">Design Agent �̿� ��� ����</span>
						</div>
						<div class="a_check w">
							<input type="checkbox" name="checkboxG1" id="checkboxG1" class="css-checkbox"/>
							<label for="checkboxG1" class="css-label"></label>
						</div>
					</div>
					
					<div class="DAA_pledge">
						<div class="DAA">
							<h4 class="h">�� 1 �� (����)</h4>
							�� ����� Design Agent �ֽ�ȸ�� ("ȸ��" �Ǵ� "Design Agent")�� �����ϴ� Design
							Agent �� Design Agent ���� ���� ������ �̿�� �����Ͽ� ȸ��� ȸ������ �Ǹ�, �ǹ� �� å�ӻ���,
							��Ÿ �ʿ��� ������ �������� �������� �մϴ�.
							<h4 class="h">�� 2 �� (����)</h4>
							�� ������� ����ϴ� ����� ���Ǵ� ������ �����ϴ�. ��"����"�� ���� �����Ǵ� �ܸ���(PC, TV, �޴����ܸ���
							���� ���� ������ ��ġ�� ����)�� ������� "ȸ��"�� �̿��� �� �ִ� Design Agent �� Design
							Agent ���� ���� ���񽺸� �ǹ��մϴ�. ��"ȸ��"�̶� ���� ȸ���� "����"�� �����Ͽ� �� ����� ���� "ȸ��"��
							�̿����� ü���ϰ� "ȸ��"�� �����ϴ� "����"�� �̿��ϴ� ���� ���մϴ�. ��"���̵�(ID)"�� ���� "ȸ��"��
							�ĺ��� "����" �̿��� ���Ͽ� "ȸ��"�� ���ϰ� "ȸ��"�� �����ϴ� ���ڿ� ������ ������ �ǹ��մϴ�.
							��"��й�ȣ"�� ���� "ȸ��"�� �ο� ���� "���̵�� ��ġ�Ǵ� "ȸ��"���� Ȯ���ϰ� ��к�ȣ�� ���� "ȸ��" �ڽ���
							���� ���� �Ǵ� ������ ������ �ǹ��մϴ�. ��"���Ἥ��"�� ���� "ȸ��"�� ����� �����ϴ� ����
							�¶��ε�����������(���� ����������, VOD, ������ ��Ÿ ������������ ����) �� ���� ���񽺸� �ǹ��մϴ�.
							��"����Ʈ"�� ���� ������ ȿ���� �̿��� ���� ȸ�簡 ���Ƿ� å�� �Ǵ� ����, ������ �� �ִ� ����� ��ġ�� ����
							"����" ���� ���� �����͸� �ǹ��մϴ�. ��"�Խù�"�̶� ���� "ȸ��"�� "����"�� �̿��Կ� �־� "���񽺻�"��
							�Խ��� ��ȣ�����ڤ������������ȭ��������� ���� ���� ������ ��, ����, ������ �� ���� ���ϰ� ��ũ ���� �ǹ��մϴ�.
						</div>
					</div>
				</div>
				<!-- �Ʒ� �κ� -->
				<div id="DAA_bottom">
					<div class="DAA_bar">
						<div class="a">
							<span class="text">�������� ���� �� �̿뿡 ���� �ȳ�</span>
						</div>
						<div class="a_check w2">
							<input type="checkbox" name="checkboxG2" id="checkboxG2" class="css-checkbox"/>
							<label for="checkboxG2" class="css-label"></label>
						</div>
					</div>
					<div class="DAA_pledge">
						<div class="DAA">
							<h5 class="h">������Ÿ��� ������ ���� Design Agent�� ȸ������ ��û�Ͻô� �в� �����ϴ�
								���������� �׸�, ���������� ���� �� �̿����, ���������� ���� �� �̿�Ⱓ�� �ȳ� �帮���� �ڼ��� ���� ��
								�����Ͽ� �ֽñ� �ٶ��ϴ�.</h5>
							1. �����ϴ� �������� �̿��ڴ� ȸ�������� ���� �ʾƵ� ���� �˻�, ���� ���� �� ��κ��� Design Agent
							���񽺸� ȸ���� �����ϰ� �̿��� �� �ֽ��ϴ�. �̿��ڰ� ����, Ķ����, ī��, ��α� ��� ���� ����ȭ Ȥ�� ȸ����
							���񽺸� �̿��ϱ� ���� ȸ�������� �� ���, Design Agent�� ���� �̿��� ���� �ʿ��� �ּ����� ����������
							�����մϴ�. ȸ������ ������ Design Agent�� �̿��ڷκ��� �����ϴ� ���������� �Ʒ��� �����ϴ�. - ȸ�� ����
							�ÿ� �����̵�, ��й�ȣ, �̸�, �������, ����, �������� �޴�����ȣ���� �ʼ��׸����� �����մϴ�. ���� �̿��ڰ�
							�Է��ϴ� ��������� ��14�� �̸� �Ƶ��� ��쿡�� �����븮�� ����(�����븮���� �̸�, �������, ����,
							�ߺ�����Ȯ������(DI), �޴�����ȣ)�� �߰��� �����մϴ�. �׸��� �����׸����� �̸��� �ּҸ� �����մϴ�. -
							��ü���̵�� ȸ������ �� ��ü���̵�, ��й�ȣ, ��ü�̸�, �̸����ּ�, �������� �޴�����ȣ�� �ʼ��׸����� �����մϴ�.
							�׸��� ��ü ��ǥ�ڸ�, ��й�ȣ �߱޿� ��� �̸� �� �̸����ּҸ� �����׸����� �����մϴ�. ���� �̿� ��������
							�̿��ڷκ��� �����ϴ� ���������� �Ʒ��� �����ϴ�. ���� ���� ���� �̿�, �̺�Ʈ ���� �� ��ǰ ��û �������� �ش�
							������ �̿��ڿ� ���� �߰� �������� ������ �߻��� �� �ֽ��ϴ�. �߰��� ���������� ������ ��쿡�� �ش� ��������
							���� �������� �̿��ڿ��� �������ϴ� �������� �׸�, ���������� ���� �� �̿����, ���������� �����Ⱓ���� ���� �ȳ�
							�帮�� ���Ǹ� �޽��ϴ�. ���� �̿� �������� IP �ּ�, ��Ű, �湮�Ͻá��ҷ� �̿� ��� ���� ���� �̿� ���,
							��������� �����Ǿ� ������ �� �ֽ��ϴ�. ��ü������ 1) ���� �̿� �������� �̿��ڿ� ���� ������ ������ż���
							�����ڰ� �ڵ�ȭ�� ������� �����Ͽ� �̸� ����(����)�ϰų�, 2) �̿��� ����� ������ ������ ������ ���� Ȯ������
							���ϵ��� �����ϰ� ��ȯ�� �Ŀ� �����ϴ� ��츦 �ǹ��մϴ�.
						</div>
					</div>
				</div>
				<div id="a_btn">
					<div class="n_agree agr">
						<input type="button" value="����" class="a_btn">
					</div>
					<div class="agree agr">
						<input type="button" value="����" class="a_btn" onclick="check(this.form.checkboxG1)">
					</div>
				</div>
			</form>
		</div>
	</div>
	<%@ include file="../footer.jsp"%>

</body>
</html>