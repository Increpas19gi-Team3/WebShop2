<%-- 아이디 찾기 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 헤더 인클루드 -->
<c:import url="header.jsp" charEncoding="UTF-8"></c:import>

<div class="wrapper news cart">

	<!-- top 메뉴바 -->
	<c:import url="topMenu.jsp" charEncoding="UTF-8"></c:import>


	<div class="sign_popup popup" style="margin-left: 30%;">
		<!-- forgetPw -->

		<form class="" action="login.jsp" method="post">


			<h2>회원탈퇴</h2>
			<hr>

			<c:choose>
				<c:when test="${empty requestScope.result == 1}">
					<!-- 1 : 성공 -->
					<h2>회원 탈퇴 되셨습니다.</h2>
				</c:when>

				<c:when test="${empty requestScope.result == 0}">
					<!-- 0 : db 적용안됨 -->
					<h2>회원 탈퇴 되셨습니다.</h2>
				</c:when>

				<c:otherwise>
					<!-- else 결과값 -->
					<h2>알수 없는 오류??</h2>
				</c:otherwise>
			</c:choose>

			<br />
			<br />
			<div class="row">
				<input type="submit" value="로그인 화면으로 이동">
			</div>
		</form>
	</div>


</div>
<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>