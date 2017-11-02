<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<style type="text/css">
body{
margin: 0px;

}

#wrap{
	margin: 0 auto;
	width: 1200px;
	height: 1000px;

	}
	
#menu_detail{
	width: 1200px;
	height: 1000px;
	background-color: #f5f5f5;
}
.title{
	margin-left :100px;
	margin-right: 100px;
	font-size: 30px;
}
.span{
margin-top: 50px;
line-height: 36px;
display: inline-block;
}
.title_text{
margin-left: 50px;
 margin-top: 52px;
 vertical-align: top;
line-height: 30px;
 
}
.write_text{
margin-left: 20px;
 margin-top: 52px;
 vertical-align: top;
line-height: 30px;
 
}

#span2{
text-align: right;
margin-left: 250px;}
#img{
position: absolute;
	background-color : white;
	margin-top : 50px;
	margin-left:100px;
	margin-right:100px;
	margin-bottom:100px;
	width: 1000px;
	height: 670px;

}
#button{
position: absolute;
	width: 1000px;
	height: 100px;
	margin-right:100px;
	margin-bottom:100px;
	margin-top: 670px;
	text-align: right;
}
.btn{
	margin-top:20px;
	background-color: #f9f9f9;
 	width:100px;
 	height: 60px;
	font-size:30px;
	text-align:center;
	border-radius:10px;
	border-color:#f9f9f9;
	outline: black;
	position: relative;
	
}

</style>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Insert title here</title>
</head>
<body>
	<div id="wrap">
		<div id="menu_detail">
			<div class="title">
			<span class="span">제목</span><input class="title_text" type="text" name="title"  size="110"> </div>
			
			<div class="title"><span class="span">작성자</span><input class="write_text" type="text" name="writer"  size="30">
				<span id="span2">카테고리</span><input class="write_text" type="text" name="writer"  size="30"> 
			
			</div>
			<div id="img"><div id="button">
				<button type="button"class="btn">승인</button>
			
			</div>
			</div>
			
				
			
		</div>
	</div>


</body>
</html>