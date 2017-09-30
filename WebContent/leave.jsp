<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 헤더 인클루드 -->
<c:import url="header.jsp" charEncoding="UTF-8"></c:import>

<div class="wrapper news cart">

	<!-- top 메뉴바 -->
	<c:import url="topMenu.jsp" charEncoding="UTF-8"></c:import>

<!-- * 넣고 싶은데 안먹힘 일단 코드를 주석처리하여 넣음

실행결과 : style 부분만 따로 빼서 .CSS 파일을 만들어서 <link type="text/css" rel="stylesheet" href=".CSS">로 
연결하고 원래 적용되어 있던 CSS파일과의 코드네임 중복을 확인후 body라는 코드네임만 body1으로 적용
결과는 원래 있던 CSS파일과 내가 만든 CSS파일이 섞여서 아주 이상한 페이지가 만드어짐..ㅠㅜ

결론 : 페이지 안에 페이지로? 적용하면 될 것 같은데 그걸 내가 못찾겠음.. 조금만 더 찾아 보겠음  

P.S 주석부분만 따로 복사해서 html 파일로 만든 후 실행해보면 화면은 출력이 가능함

<!doctype html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<title>leave_out</title>

<style>

body {
	background-color: #1D1D1D;
	position: relative;
	min-height: 100vh;
	margin: 0;
	font-family: 'Droid Sans', sans-serif;
	color: #fff;
}

body:before {
	content: '';
	position: fixed;
	top: 0px;
	left: 50%;
	bottom: 0px;
	-webkit-transform: translateX(-50%);
	transform: translateX(-50%);
	width: 4px;
	background-color: #fff;
}

body .entries {
	width: calc(100% - 80px);
	max-width: 800px;
	margin: auto;
	position: relative;
	left: -5px;
}

body .entries .entry {
	width: calc(50% - 80px);
	float: left;
	padding: 20px;
	clear: both;
	text-align: right;
}

body .entries.entry:not(:first-child){
	margin-top:-60px;
}

body .entries .entry .title {
	font-size: 27px;
	margin-bottom: 12px;
	position: relative;
}

body .entries .entry .title:before {
	content: '';
	position: absolute;
	width: 8px;
	height: 8px;
	border: 4px solid #ffffff;
	background-color: #1D1D1D;
	border-radius: 100%;
	top: 50%;
	-webkit-transform: translateY(-50%);
	transform: translateY(-50%);
	right: -73px;
	z-index: 1000;
}

body .entries .entry .title.big:before {
	width: 24px;
	height: 24px;
	-webkit-transform: translate(8px, -50%);
	transform: translate(8px, -50%);
}

body .entries .entry .body {
	color: #aaa;
}

/* 글자 간격 */
body .entries .entry .body p {
	line-height: 1.4em;
}

body .entries .entry:nth-child(2n) {
	text-align: left;
	float: right;
}

/* 오른쪽 글자 크기 사이즈 */
body .entries .entry:nth-child(2n) .title {
	font-size: 25px;
}

body .entries .entry:nth-child(2n) .title:before {
	left: -63px;
}

body .entries .entry:nth-child(2n) .title.big:before {
	width: 24px;
	height: 24px;
	-webkit-transform: translate(-8px, -50%);
	transform: translate(-8px, -50%);
}

</style>
</head>

<body>


여기까지 주석 * -->


	
	<div class="timeline">
		<div class="entries">
		
			<div class="entry">
				<div class="title">회원탈퇴 안내</div>
				<div class="body">
					<p>
						회원탈퇴를 신청하기 전에<br> 
						안내사항을 확인해 주세요.
					</p>
				</div>
			</div>

			<div class="entry">
				<div class="title">
					사용자 ID(아이디)<br> 
					재사용 및 복구 불가능
				</div>
				<div class="body">
					<p>
						탈퇴한 사용자 ID(아이디)는 본인과<br> 
						타인 모두 재사용 및 복구가 불가하오니<br> 
						신중하게 선택하시기 바랍니다.
					</p>
				</div>
			</div>

			<div class="entry">
				<div class="title big">
					회원정보 이용기록은<br> 
					모두 삭제
				</div>
				<div class="body">
					<p>
						회원정보 및 메일, 블로그, 주소록 등<br>
						개인형 서비스 이용기록은 모두 삭제되며<br>
						삭제된 데이터는 복구 되지 않습니다.<br>
						삭제되는 내용을 확인하시고 필요한<br>
						데이터는 미리 백업을 해주시길 바랍니다.
					</p>
				</div>
			</div>

			<div class="entry">
				<div class="title">게시판형 서비스에 등록한 게시물은 남아 있습니다.</div>
				<div class="body">
					<p>
						게시판에 올린 게시글 및 댓글은 탈퇴 시<br>
						자동 삭제되지 않고 그대로 남아 있습니다.<br>
						삭제를 원하시는 게시글이 있다면 반드시<br>
						탈퇴 전에 비공개 처리하거나 삭제하시기<br>
						바랍니다.
					</p>
				</div>
			</div>

			<div class="entry">
				<div class="title">
					사용자(ID)를 이용하여<br> 
					다른 서비스에 로그인<br>
					할 수 없게 됩니다.
				</div>
				<div class="body">
					<p>
						사용자 아이디로 로그인하여<br>
						사용 중이던 외부 사이트를 방문하여<br>
						다른 로그인 수단을 준비하거나<br>
						데이터 백업한 후 탈퇴하셔야 합니다.
					</p>
				</div>
			</div>

			<div class="entry">
				<div class="title big">탈퇴확인</div>
				<div class="body">
					<p>
						1. 사용자 아이디(ID)로 다시 가입불가<br> 
						2. 아이디, 데이터 복구 불가<br> 
						3. 서비스에 남아있는 게시글 탈퇴 후<br>
						&nbsp;삭제 불가<br> 
						4. 아이디를 사용하여 다른 서비스에<br>
						&nbsp;로그인 불가
					</p>
				</div>
			</div>

			<div class="entry">
				<div class="title">안내 사항을 모두 확인</div>
				<div class="body">
					<p>안내 사항을 모두 확인하였으며<br>이에 동의 합니다.</p>
										
					<form action="leave_out.jsp">
						<input type="submit" value="탈퇴">
					</form>
					
				</div>
			</div>
		</div>
	</div>

	<%-- 탈퇴관련 문구 끝 --%>

	<%
		//System.out.println("leave=>" + session.getAttribute("USERID"));
	%>
	<br /><br /><br /><br />

</div>
<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>