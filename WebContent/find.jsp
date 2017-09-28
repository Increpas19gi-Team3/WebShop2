<%-- 아이디, 비밀번호 찾기 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 헤더 인클루드 -->
<c:import url="header.jsp" charEncoding="UTF-8"></c:import>

<div class="wrapper news cart">

<!-- top 메뉴바 -->
<c:import url="topMenu.jsp" charEncoding="UTF-8"></c:import>
	
	
		<div class="sign_popup popup"  style="margin-left: 30%;"> <!-- forgetPw -->
	      
	      <c:if test="${param.forget == 'Pw' }">
	      	<h2>FORGET PASSWORD</h2>
	      </c:if>
	      
	      <c:if test="${param.forget == 'Id' }">
	      	<h2>FORGET ID</h2>
	      </c:if>
	      
	      
	      <form class="" action="find_Result.jsp" method="post">
	      
			<c:if test="${param.forget == 'Pw' }">
		        <div class="row">
		          <input type="text" name="id" placeholder="아이디">
		        </div>
	        </c:if>	        
	        
	        <div class="row">
	          <input type="text" name="name" placeholder="이름">
	        </div>
	        <div class="row">
	          <input type="text" name="phone" placeholder="휴대폰 번호">
	        </div>
	        <div class="row">
	          <input type="text" name="email" placeholder="이메일">
	        </div>
	        <div class="row">
	          <input type="submit" value="비밀번호 찾기">
	        </div>
	      </form>
	    </div>


</div>
<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>