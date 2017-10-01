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

		<!-- 일단 데이터 베이스에서 로그인 상태의 아이디는 삭제가 가능함
(한번 삭제후 데이터 베이스에서 commit을 눌러줘야함)
그러나 그 이후로 500이 뜸(로그인 상태창으로 돌아가야 하는데 안돌아감)
코드가 불안전 한것 같아서 고칠려고 찾아보는 중.. 
그리고 알람창을 쓰려면 자바스크립트를 써야하는데 계속 요렇게 써야함?
<script>alter("이런식으로 써야함")</script> 쓸까 말까 고민중 -->

		<!-- forgetPw -->
		<form class="" action="login.jsp" method="post">
			<c:choose>
				<c:when test="${requestScope.result == 1}">
					<!-- 1 : 성공 -->
					<% 
						// session 내용 완전 제거
						session.invalidate();
					%>
					<script type="text/javascript">
						alert("회원 탈퇴 되셨습니다.");
						location.href = "index.jsp";
					</script>
				</c:when>
				
				<c:when test="${requestScope.result == 0}">
					<!-- 0 : db 적용안됨 -->
					<script type="text/javascript">
						alert("데이터 베이스에서 불러올수 없습니다.");
						location.href = "leave.jsp";
					</script>
				</c:when>
				
				<c:otherwise>
					<!-- else 결과값 -->
					<script type="text/javascript">
						alert("알 수 없는 오류가 생겼습니다.");
						location.href = "leave.jsp";
					</script>
				</c:otherwise>							
			</c:choose>
		</form>
	</div>

</div>
<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>