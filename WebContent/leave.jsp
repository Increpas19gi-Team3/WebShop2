<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 헤더 인클루드 -->
<c:import url="header.jsp" charEncoding="UTF-8"></c:import>

<div class="wrapper news cart">

	<!-- top 메뉴바 -->
	<c:import url="topMenu.jsp" charEncoding="UTF-8"></c:import>

	<body>
		<nav>
			<h2>회원 탈퇴 안내</h2>
		</nav>

		<section>
			탈퇴 관련 로직 <br /> 1. 탈퇴자에게 탈퇴 할껀지 물어보기 <br /> 2. 탈퇴 한다면 DB 작업후 탈퇴성공 &
			실패알려주기 <br /> <br /> 추가 가능한 기능 (시간이 된다면..) <br /> - 탈퇴 사유 물어보기 <br />
			1. 상품불만 <br /> 2. 배송불만 <br /> 3. 고객 응대불만 <br /> 4. 기타.. <br /> 입력
			데이터가 있다면 탈퇴사유 DB 에 저장후 탈퇴처리 <br />
		</section>

		<form action="leave_out.jsp">
			<input type="submit" value="탈퇴">
		</form>
	</body>
</div>
<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>