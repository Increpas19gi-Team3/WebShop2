<%-- 아이디 찾기 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 헤더 인클루드 -->
<c:import url="header.jsp" charEncoding="UTF-8"></c:import>

<div class="wrapper news cart">

<!-- top 메뉴바 -->
<c:import url="topMenu.jsp" charEncoding="UTF-8"></c:import>
	
	
		<div class="sign_popup popup"  style="margin-left: 30%;"> <!-- forgetPw -->
	      
	      <form class="" action="login.jsp" method="post">
	      	
	      	<c:if test="${requestScope.forget == 'Id'}">
	      		<h2>FORGET ID</h2>
	      		<hr>
	      		
	      		<c:choose>
	      			<c:when test="${empty requestScope.dbId}">
	      				<h2>ID를 찾을 수 없습니다.</h2>
	      			</c:when>
	      			<c:otherwise>
						<h2>ID: ${requestScope.dbId}</h2>
	      			</c:otherwise>
	      		</c:choose>
	      		
	      		<c:if test="">
	      		</c:if>
	      	</c:if>
	      	
	      	<c:if test="${requestScope.forget == 'Pw'}">
	      		<h2>FORGET PASSWORD</h2>
	      		<hr>
	      		
	      		<c:choose>
	      			<c:when test="${empty requestScope.dbPw}">
	      				<h2>Password를 찾을 수 없습니다.</h2>
	      			</c:when>
	      			<c:otherwise>
						<h2>Password: ${requestScope.dbPw}</h2>
	      			</c:otherwise>
	      		</c:choose>
	      		
	      	</c:if>
	      	<br /><br />
	        <div class="row">
	          <input type="submit" value="로그인 화면으로 이동">
	        </div>
	      </form>
	    </div>


</div>
<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>