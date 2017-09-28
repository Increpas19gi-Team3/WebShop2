<%-- 아이디, 비밀번호 찾기 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 헤더 인클루드 -->
<c:import url="header.jsp" charEncoding="UTF-8"></c:import>

<div class="wrapper news cart">

<!-- top 메뉴바 -->
<c:import url="topMenu.jsp" charEncoding="UTF-8"></c:import>


	<strong>
	로그인 한 이름 : ${sessionScope.NAME} <br />
	로그인 한 아이디 : ${sessionScope.USERID }
	</strong>
	
	<c:if test="${param.forget == 'Pw' }">
	
		<div class="sign_popup popup"  style="margin-left: 30%;"> <!-- forgetPw -->
	      <h2>FORGET PASSWORD</h2>
	      <form class="" action="index.html" method="post">
	        <div class="row">
	          <input type="text" name="" value="" id="login_id" placeholder="아이디">
	        </div>
	        <div class="row">
	          <input type="text" name="" value="" id="login_name" placeholder="이름">
	        </div>
	        <div class="row">
	          <input type="text" name="" value="" id="login_phone" placeholder="휴대폰 번호">
	        </div>
	        <div class="row">
	          <input type="text" name="" value="" id="login_email" placeholder="이메일">
	        </div>
	        <div class="row">
	          <input type="submit" name="" value="비밀번호 찾기">
	        </div>
	      </form>
	    </div>
	
	</c:if>


	
    <c:if test="${param.forget == 'Id' }">
    
	    <div class="sign_popup popup"  style="margin-left: 30%;"><!-- forgetId -->
	      <h2>FORGET ID</h2>
	      <form class="" action="index.html" method="post">
	        <div class="row">
	          <input type="text" name="" value="" id="login_name" placeholder="이름">
	        </div>
	        <div class="row">
	          <input type="text" name="" value="" id="login_phone" placeholder="휴대폰 번호">
	        </div>
	        <div class="row">
	          <input type="text" name="" value="" id="login_phone" placeholder="이메일">
	        </div>
	        <div class="row">
	          <input type="submit" name="" value="아이디 찾기">
	        </div>
	      </form>
	    </div>

	</c:if>

</div>
<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>