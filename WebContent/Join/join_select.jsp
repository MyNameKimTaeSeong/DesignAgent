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
	width: 1200px;
	background-color: #ffffff;
	padding-top: 80px;
}
div#select{
	margin: 0 auto;
	height: 500px;
	width: 580px;
	
}
div#design {
	display: inline-block;
}
div#company{
	display: inline-block;
	margin: 0px;
	
}

#line{
	margin: 0 30px;
	background-color: #dadada;
	width: 1px;
	height: 200px;
	margin-top: 20px;
	display: inline-block;
}
.img{
	width: 250px;
	height: 250px;
}
</style>
</head>
<body>
<%@ include file="../LJ_header.jsp" %>
	<div id="content">
		<div id="select">
			<div id="design">
				<a href="../Join/join_designer.jsp"><img src="../img/img_2.jpg" class="img"></a>
			</div>
			
			<div id="line"></div>
		
			<div id="company">
				<a href="../Join/join_manufacturer.jsp"><img src="../img/img4.jpg" class="img"></a>
			</div>
		</div>
	</div>
	<%@ include file="../footer.jsp" %>

</body>
</html>