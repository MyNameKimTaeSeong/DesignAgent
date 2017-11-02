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

/*  로고  */
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
			alert("약관1에 동의해주세요!");
			return false;
		}
		if(chk2 == ""){
			alert("약관2에 동의해주세요!");
			return false;
		}
		if(chk1 && chk2 ){
			location.href="../Join/join_select.jsp";
		}
	}
</script>
<body>
	<%@ include file="../LJ_header.jsp"%>
	<!-- 컨텐트 부분 -->
	<div id="content">
		<div id="agreement">
			<!-- 윗 부분 -->
			<form action="" name="myform" onsubmit="return check(this)">
				<div id="DAA_top">
					<div class="DAA_bar">
						<div class="a">
							<span class="text">Design Agent 이용 약관 동의</span>
						</div>
						<div class="a_check w">
							<input type="checkbox" name="checkboxG1" id="checkboxG1" class="css-checkbox"/>
							<label for="checkboxG1" class="css-label"></label>
						</div>
					</div>
					
					<div class="DAA_pledge">
						<div class="DAA">
							<h4 class="h">제 1 조 (목적)</h4>
							이 약관은 Design Agent 주식회사 ("회사" 또는 "Design Agent")가 제공하는 Design
							Agent 및 Design Agent 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항,
							기타 필요한 사항을 규정함을 목적으로 합니다.
							<h4 class="h">제 2 조 (정의)</h4>
							이 약관에서 사용하는 용어의 정의는 다음과 같습니다. ①"서비스"라 함은 구현되는 단말기(PC, TV, 휴대형단말기
							등의 각종 유무선 장치를 포함)와 상관없이 "회원"이 이용할 수 있는 Design Agent 및 Design
							Agent 관련 제반 서비스를 의미합니다. ②"회원"이라 함은 회사의 "서비스"에 접속하여 이 약관에 따라 "회사"와
							이용계약을 체결하고 "회사"가 제공하는 "서비스"를 이용하는 고객을 말합니다. ③"아이디(ID)"라 함은 "회원"의
							식별과 "서비스" 이용을 위하여 "회원"이 정하고 "회사"가 승인하는 문자와 숫자의 조합을 의미합니다.
							④"비밀번호"라 함은 "회원"이 부여 받은 "아이디와 일치되는 "회원"임을 확인하고 비밀보호를 위해 "회원" 자신이
							정한 문자 또는 숫자의 조합을 의미합니다. ⑤"유료서비스"라 함은 "회사"가 유료로 제공하는 각종
							온라인디지털콘텐츠(각종 정보콘텐츠, VOD, 아이템 기타 유료콘텐츠를 포함) 및 제반 서비스를 의미합니다.
							⑥"포인트"라 함은 서비스의 효율적 이용을 위해 회사가 임의로 책정 또는 지급, 조정할 수 있는 재산적 가치가 없는
							"서비스" 상의 가상 데이터를 의미합니다. ⑦"게시물"이라 함은 "회원"이 "서비스"를 이용함에 있어 "서비스상"에
							게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다.
						</div>
					</div>
				</div>
				<!-- 아랫 부분 -->
				<div id="DAA_bottom">
					<div class="DAA_bar">
						<div class="a">
							<span class="text">개인정보 수집 및 이용에 대한 안내</span>
						</div>
						<div class="a_check w2">
							<input type="checkbox" name="checkboxG2" id="checkboxG2" class="css-checkbox"/>
							<label for="checkboxG2" class="css-label"></label>
						</div>
					</div>
					<div class="DAA_pledge">
						<div class="DAA">
							<h5 class="h">정보통신망법 규정에 따라 Design Agent에 회원가입 신청하시는 분께 수집하는
								개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을 안내 드리오니 자세히 읽은 후
								동의하여 주시기 바랍니다.</h5>
							1. 수집하는 개인정보 이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 Design Agent
							서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제
							서비스를 이용하기 위해 회원가입을 할 경우, Design Agent는 서비스 이용을 위해 필요한 최소한의 개인정보를
							수집합니다. 회원가입 시점에 Design Agent가 이용자로부터 수집하는 개인정보는 아래와 같습니다. - 회원 가입
							시에 ‘아이디, 비밀번호, 이름, 생년월일, 성별, 가입인증 휴대폰번호’를 필수항목으로 수집합니다. 만약 이용자가
							입력하는 생년월일이 만14세 미만 아동일 경우에는 법정대리인 정보(법정대리인의 이름, 생년월일, 성별,
							중복가입확인정보(DI), 휴대폰번호)를 추가로 수집합니다. 그리고 선택항목으로 이메일 주소를 수집합니다. -
							단체아이디로 회원가입 시 단체아이디, 비밀번호, 단체이름, 이메일주소, 가입인증 휴대폰번호를 필수항목으로 수집합니다.
							그리고 단체 대표자명, 비밀번호 발급용 멤버 이름 및 이메일주소를 선택항목으로 수집합니다. 서비스 이용 과정에서
							이용자로부터 수집하는 개인정보는 아래와 같습니다. 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당
							서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보
							수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내
							드리고 동의를 받습니다. 서비스 이용 과정에서 IP 주소, 쿠키, 방문일시·불량 이용 기록 등의 서비스 이용 기록,
							기기정보가 생성되어 수집될 수 있습니다. 구체적으로 1) 서비스 이용 과정에서 이용자에 관한 정보를 정보통신서비스
							제공자가 자동화된 방법으로 생성하여 이를 저장(수집)하거나, 2) 이용자 기기의 고유한 정보를 원래의 값을 확인하지
							못하도록 안전하게 변환한 후에 수집하는 경우를 의미합니다.
						</div>
					</div>
				</div>
				<div id="a_btn">
					<div class="n_agree agr">
						<input type="button" value="비동의" class="a_btn">
					</div>
					<div class="agree agr">
						<input type="button" value="동의" class="a_btn" onclick="check(this.form.checkboxG1)">
					</div>
				</div>
			</form>
		</div>
	</div>
	<%@ include file="../footer.jsp"%>

</body>
</html>