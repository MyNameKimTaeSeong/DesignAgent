<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	div#container{
		width: 100%;
		height: auto;	
	}
	div#container > table{
		margin: 0 auto;
		width: 1000px;
	}
	.con_title{
		font-family: 'Noto Sans CJK KR Bold'; 
		font-size: 40pt;
		font-weight: bold;
		height: 70px; 
		text-align: center; 
	}
	div#c_serach{
		font-family: 'Noto Sans CJK KR DemLight';
		font-size: 12pt;
		height: 30px;
		float: right;
	}
	div#c_search > input{
		width: 300px;
		
	}
	button{
		width: 30px;
		height: 30px;
		border-width: 0px;
		padding-left: 0px;
		padding-top: 0px; 
	}
	div#container > #c_q_top, .c_line{
		font-family: 'Noto Sans CJK KR DemLight';
		font-weight: 14pt;
	}
	div#container > #c_q_top{
		height: 50px;
		text-align: center;
		border-top: 3px solid #333333;
	}
	div#container > .c_line{
		height: 50px;
		text-align: center;
		border-top: 1px solid #333333;
	}
	#c_title > a{
		text-decoration: none;
		color: #000000;
	}
	div#container > #c_q_bottom{
		border-bottom: 3px solid #333333;
		margin-bottom: 15px;
	}
	div#c_btn{
		line-height: 50px;
		text-align: center;
		float: right;
		margin-right: 15px;
		margin-bottom: 30px;
	}
	div#c_btn > input{
		font-family: 'Noto Sans CJK KR DemLight';
		font-size: 12pt;
		width: 100px;
		height: 50px;
		border: 0px;
		border-radius: 10px;
		background-color: #333333;
		color: white;
	}
	ul.c_page{
		height: 50px;
		list-style-type: none;
		margin-bottom: 100px;
		line-height: 50px;
		text-align: center;
		padding: 0px 360px 0px 390px;
		margin-top: 0px;
	}
	ul.c_page > li > a{
		text-decoration: none;
		color: #000000;
		float: left;
		padding-left: 20px;
	}
</style>
<script type="text/javascript">
	function login_writer(){
		if(${ id != null }){
			location.href="../QA/QA_upload.jsp";
		}else{
			alert("로그인 후 사용해주세요");
		}
	}
</script>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<div id="wrapper">
		<div id="menu_line">
			<span>Home > Q & A</span>
		</div>
		<div id="container">
			<table>
				<tr>
					<td style="height: 70px;"></td>
				</tr>
				<tr>
					<td class="con_title"><span>Q & A</span></td>
				</tr>
				<tr>
					<td style="height: 100px;"></td>
				</tr>
				<tr>
					<td>
						<form action="../QA/searchQA.do?num=1" method="post">
							<div id="c_serach">
								<!-- <input type="radio" name="q_select" value="name" checked>이름 
								<input type="radio" name="q_select" value="title">제목  -->
								<input type="text" name="search_input" placeholder="이름으로 검색"> 
								<button type="submit"><img src="../img/search_btn.jpg" alt="검색버튼"></button>
							</div>
						</form>
					</td>
				</tr>
				<tr>
					<td style="height: 20px;"></td>
				</tr>
			</table>
			<table id="c_q_top">
				<tr>
					<th style="width: 25px;"></th>
					<th style="width: 50px;">No</th>
					<th style="width: 500px;">제목</th>
					<th style="width: 70px;">작성자</th>
					<th style="width: 180px;">작성일</th>
					<th style="width: 50px;">조회수</th>
					<th style="width: 25px;"></th>
				</tr>
			</table>
			<c:forEach var="q_list" items="${ paging }">
				<table class="c_line">
					<tr>
						<td style="width: 25px;"></td>
						<td style="width: 50px;">${ q_list.q_num }</td>
						<td style="width: 500px;" id="c_title">
							<a href="passwordQA.do?q_num=${ q_list.q_num }">${ q_list.q_title }</a>
						</td>
						<td style="width: 70px;">${ q_list.q_writer }</td>
						<td style="width: 180px;">${ q_list.q_date }</td>
						<td style="width: 50px;">${ q_list.q_read_count }</td>
						<td style="width: 25px;"></td>
					</tr>
				</table>
			</c:forEach>
			
			<table id="c_q_bottom">
				<tr>
					<td></td>
				</tr>
			</table>
			<table>
				<tr>
					<td>
						<!-- <a href="QA_upload.jsp" style="text-decoration: none; color: #ffffff;"> -->
						<div id="c_btn">
							<input type="button" value="글쓰기" onclick="login_writer()">
						</div>
						<!-- </a> -->
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						 <ul class="c_page">
							<li><a href="../QA/paging.do?num=${ paging2.firstPageNo }" class="first">Start</a></li>
							<li><a href="../QA/paging.do?num=${ paging2.prevPageNo }" class="prev">&laquo;</a></li>
								<c:forEach var="i" begin="${ paging2.startPageNo }" end="${paging2.endPageNo}" step="1">
									<li><a href="../QA/paging.do?num=${ i }">${ i }</a></li>
								</c:forEach>
							<li><a href="../QA/paging.do?num=${ paging2.nextPageNo }" class="next">&raquo;</a></li>
							<li><a href="../QA/paging.do?num=${ paging2.finalPageNo }" class="lase">End</a></li>
						</ul>
						
					</td>
				</tr>
			</table>
		</div>
	</div>
	<%@ include file="../footer.jsp" %>
</body>
</html>