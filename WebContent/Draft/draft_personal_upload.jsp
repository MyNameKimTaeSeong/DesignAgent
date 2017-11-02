<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Design Agent</title>
<style type="text/css">
	body{
		margin: 0px;
	}
	.boxSize{
		box-sizing: border-box;
	}
	span{
		font-family: Noto Sans CJK KR;
	}
	#wrapper{
		margin: 0 auto;
		width: 1200px;
		height: 100%;
	}
	#header{
		width: 1200px;
		height: 340px;
	}
	#content{
		width: 1200px;
		height: 760px;
	}
	div#menu_line{
		line-height: 70px;
		width: 100%;
		height: 70px;
		background-color: #333333;
		color: white;
		padding-left: 80px;
		box-sizing: border-box;
	}
	div#menu_line > span{
		font-family: 'Noto Sans CJK KR DemLight';
		font-size: 15pt;
	}
	#upload_form{
		width: 800px;
		height: 500px;
		border: 1px solid black;
		margin: 0 auto;
		margin-top: 50px;
		margin-bottom: 20px;
		padding: 40px 45px 40px 40px;
		background-color: #f9f9f9;
	}
	.font{
		font-size: 16pt;
		font-weight: bold;
	}
	#title{
		width: 650px;
		height: 40px;
		margin-bottom: 30px; 
	}
	.font2{
		font-size: 15px;
	}
	#radio{
		margin-bottom: 30px;
	}
	#file{
		margin-bottom: 20px;
	}
	#comment{
		resize: none;
	}
	#btn{
		width: 800px;
		height: 40px;
		margin-left: 100px;
		position: relative;
		margin : 0 auto;
		text-align: right;		
	}
	.btn{
		width: 100px;
		height: 40px;
		border: none;
	}
	#upload{
		background-color: #b22222;
		color: white;
	}
	#cancel{
		background-color: #f9f9f9;
	}
</style>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<div id="wrapper">
		
		<div id="content" class="boxSize">
			<div id="menu_line" class="boxSize">
				<span>Home > Clothes Draft > 개인제작</span>
			</div>
			<form action="../Draft/FileUpload.do?sort=p" method="post" enctype="multipart/form-data">
				<div id="upload_form" class="boxSize">
					<span class="font">Title</span>
					<input type="text" name="title" id="title" placeholder="Title">
					<input type="radio" name="division" id="radio" value="상의" checked="checked"><span class="font2">상의</span>
					<input type="radio" name="division" id="radio" value="하의"><span class="font2">하의</span>
					<input type="radio" name="division" id="radio" value="원피스"><span class="font2">원피스</span>
					<input type="radio" name="division" id="radio" value="아우터"><span class="font2">아우터</span>
					<br>
					<span class="font">File</span>
					<input type="file" id="file" value="파일찾기" name="uploadFile"><br>
					<span class="font">Comment</span><br>
					<textarea rows="10" cols="102" name="comments" id="comment"></textarea>
				</div>
				<div id="btn" class="boxSize">
					<input type="submit" value="Upload" id="upload" class="btn">
					<a href="draft_personal.jsp"><input type="button" id="cancel" class="btn" value="Cancel"></a>
				</div>
			</form>
		</div>
	</div>
	<%@ include file="../footer.jsp" %>
</body>
</html>