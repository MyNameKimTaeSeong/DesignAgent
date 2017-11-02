<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	div#wrapper{
		margin: 0 auto;	
		width: 1200px;
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
	div#container > table{
		width: 1000px;
		margin: 0 auto;
		text-align: center;
	}
	.con_title{
		font-family: 'Noto Sans CJK KR Bold'; 
		font-size: 40pt;
		font-weight: bold;
		height: 70px; 
		text-align: center; 
	}
	div#container > #c_img > img{
		width: 1000px;
		height: 340px;
		
	}
	.c_font{
		font-family: 'Noto Sans CJK KR Light';
		font-size: 18pt;
	}
</style>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<div id="wrapper">
		<div id="menu_line">
			<span>Home > Introduce > ȸ��Ұ�</span>
		</div>
		<div id="container">
			<table>
				<tr>
					<td style="height: 70px;"></td>
				</tr>
				<tr>
					<td class="con_title"><span>ȸ��Ұ�</span></td>
				</tr>
				<tr>
					<td style="height: 50px;"></td>
				</tr>
				<tr>
					<td style="height: 130px;" class="c_font">
						<p>������ ������Ʈ�� �������� �غ��� ���� �Ϲ����̳� ���� �� �������� ������ ����鿡��<br>
               			   �����Ӱ� ������ �������� ����� �� �ִ� ������ �����ϰ� �����ڿ� �����Ͽ� <br>
               			   ������ �������� ��ǰ�� ������ �� �ֵ��� �����ִ� �������Դϴ�.</p>
					</td>
				</tr>
				<tr id="c_img">
					<td>
						<img src="../img/catagory.JPG" />
					</td>
				</tr>
				<tr>
					<td style="height: 200px;"  class="c_font">
						<p>������ ������Ʈ�� ������ �ս��� ����ϰ� �̿��� �� �ֵ��� ����ڿ��� ���񽺸� �����ϰ�,<br>
               			   ������ ���� �� �پ��� ��Ʈ�ʵ��� ������ ���� �ǿ� �� �ֵ���,<br>
                		   ������� Ű��� �ٰ��� �̷��� �غ��ϰڽ��ϴ�.</p>
					</td>
				</tr>
				<tr>
					<td style="height: 100px;"></td>
				</tr>
			</table>
		</div>
	</div>
	<%@ include file="../footer.jsp" %>
</body>
</html>