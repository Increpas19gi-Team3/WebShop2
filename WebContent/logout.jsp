<%--
	로그아웃 처리 페이지
 --%>
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//session 내용 완전 제거
	session.invalidate();	
%>

<script type="text/javascript" >
	alert("로그아웃 되셨습니다.");
	location.href="index.jsp"; /* alert의 확인 버튼을 누르면 index.jsp 로 이동 */
</script>