<%-- 회원 탈퇴 --%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%!
	Connection conn = null;
	PreparedStatement pstmt = null;

	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String uid = "system";
	String pass = "oracle";

	// pstmt.setString(1, );
	// 숫자(키값)가 물음표임
	String sql = "DELETE FROM WebShop WHERE USERID=?";
	// String sql = "DELETE FROM WebShop WHERE USERID='han'";
%>

<%
	// UTF-8코드로 바꿔줌
	request.setCharacterEncoding("UTF-8");

	// DB SQL 결과값
	int result = -2; 
	System.out.println("leave_out=>" + session.getAttribute("USERID"));
	
	try {
		
		// 로그인 되어 있는 상태
		String USERID = (String)session.getAttribute("USERID");
		
		// 1. JDBC 드라이버 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("1");
		
		// 2. 데이터 베이스 연결 객체인 Connection 생성		
		conn = DriverManager.getConnection(url, uid, pass);
		System.out.println("2");
		
		// 수동 커밋으로 변경		
		// conn.setAutoCommit(false);
		System.out.println("3");
		
		// 3. PreparedStatement 객체 생성하기
		pstmt = conn.prepareStatement(sql);
		System.out.println("4");
		
		System.out.println(USERID);
		System.out.println("5");
		
		// 4. 바인딩 변수를 채운다.
		pstmt.setString(1, USERID.trim());		

		// 5.SQL문을 실행하여 결과 처리
		result = pstmt.executeUpdate();
		// conn.commit();
		System.out.println("6");
		System.out.println("DB적용결과값:"+result);

	} catch (Exception e) {
		e.printStackTrace();

	} finally {
		try {
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// session 내용 완전 제거
	session.invalidate();
	System.out.println("7");
	
	if (request.isRequestedSessionIdValid() == true) {
		System.out.println("1");
	} else {
		System.out.println("0");
	}
%>