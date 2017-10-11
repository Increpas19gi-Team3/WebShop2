<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 헤더 인클루드 -->
<%-- <c:import url="../header.jsp" charEncoding="UTF-8"></c:import> --%>
<%@include file="../header.jsp" %>

<div class="wrapper">
	


<!-- top 메뉴바 -->
<%-- <c:import url="../topMenu.jsp" charEncoding="UTF-8"></c:import> --%>
<%@include file="../topMenu.jsp" %>
<h2>product : computer.jsp</h2>
테스트 파일 입니다.

<pre>
여기서 인클루드를 사용할 때 동적으로 할지 정적으로 할지는 약간 생각해 보아야 할 문제이다. 
파일 인클루드는 <jsp:include>액션태그(동적)와 include 디렉티브(정적) 2가지 방식이 있다.

<jsp:include page="introView.jsp" flush="false" />
<%@ include file="introView.jsp" %>


<c:import>
= >동일한 웹 어플리케이션뿐만 아니라 외부의 다른 자원을 읽어와 포함시킬 수 있도록 해주는 태그이다. GET방식 또는 <c:param>태그를 이용하여 파라미터를 전송할 수도 있다.
 
<c:import url = "URL" [var = "변수명"][scope = "범위"][charEncording = "케릭터셋"]>
</c:import>
*<jsp:include>와의 차이점
         <jsp:include>액션 태그는 현재 위치에 무조건 결과를 출력하는 반면, <c:import>태
그는 EL변수에 보관한 뒤 필요에 따라 알맞은 처리를 할 수 있다.
[출처] JSTL - <c:import, url, redirect>|작성자 원종천
</pre>

</div>
<%-- <c:import url="../footer.jsp" charEncoding="UTF-8"></c:import> --%>
<%@include file="../footer.jsp" %>