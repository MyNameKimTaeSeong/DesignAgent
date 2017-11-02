<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	div#slider > img {
		width: 1200px;
		height: 350px;
	}
</style>

</head>
<body>
	<div class="slider">
		<img src="img/ani1.JPG" id="mainImage">	
	</div>
	<script type="text/javascript">
		var myImage = document.getElementById("mainImage");
		var imageArray = [ "img/ani1.JPG", "img/ani2.JPG", "img/ani3.JPG" ];
		var imageIndex = 0;

		function changeImage() {
			myImage.setAttribute("src", imageArray[imageIndex]);
			imageIndex++;
			if (imageIndex >= imageArray.length) {
				imageIndex = 0;
			}
		}
		setInterval(changeImage, 3000);
		
		function changeImage2(){
			myImage.setAttribute("src", imageArray[imageIndex]);
			imageIndex--;
			if (imageIndex < 0) {
				imageIndex = 3;
			}
		}
	</script>

	<button id="prev" onclick="changeImage2()">prev</button>
	<button id="next" onclick="changeImage()">next</button>
</body>
</html>