<%-- 아이디, 비밀번호 찾기 --%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%!
	Connection conn = null;
	PreparedStatement pstmt = null;
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String uid = "system";
	String pass = "oracle";
	
	String sql = "SELECT NAME, USERID, PWD, EMAIL, PHONE, ADMIN ";
	System.out.println("sql1="+sql);
	sql += "FROM WEBSHOP ";
	System.out.println("sql2="+sql);
%>
<%
	
	//"insert into member values(?, ?, ?, ?, ?, ?)"; 

	request.setCharacterEncoding("UTF-8"); //한글 깨짐 방지
	
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");

	/* 
	if(id == null && id.equals("")){ // 아이디 찾기
		sql += "WHERE NAME LIKE '손가연' AND PHONE LIKE '010-111-1111' AND EMAIL LIKE 'son@mail.com'";
	}else{ //비밀번호 찾기
		sql += "WHERE USERID LIKE 'son' AND NAME LIKE '손가연' AND PHONE LIKE '010-111-1111' AND EMAIL LIKE 'son@mail.com'";
	} */
%>




<!-- 헤더 인클루드 -->
<c:import url="header.jsp" charEncoding="UTF-8"></c:import>

<div class="wrapper news cart">

<!-- top 메뉴바 -->
<c:import url="topMenu.jsp" charEncoding="UTF-8"></c:import>

	<%//= sql %>
	

</div>
<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>