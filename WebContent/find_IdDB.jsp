<%-- 아이디 찾기 --%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%!
	Connection conn = null;
	PreparedStatement preStmt = null;
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String uid = "system";
	String pass = "oracle";
%>

<%
	String dbId = ""; //db 에서 찾은 결과 id
	String forget = "Id";//찾기 모드
	
	String sql = "SELECT USERID FROM WEBSHOP "; 

	request.setCharacterEncoding("UTF-8"); //한글 깨짐 방지
	
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");

	//sql += "WHERE NAME = '"+name+"' AND PHONE = '"+phone+"' AND EMAIL = '"+email+"'";
	sql += "WHERE NAME = ? AND PHONE = ? AND EMAIL = ?";
	
		
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = null;
	con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "system", "oracle");
	con.setAutoCommit(false);//AutoCommit 해제
	
	ResultSet rs=null;
	
	try{
		
		if((name != null && !name.equals("")) && 
			(phone != null && !phone.equals("")) && 
			(email != null && !email.equals(""))){
			
			
			preStmt = con.prepareStatement(sql);
			preStmt.setString(1, name);
			preStmt.setString(2, phone);
			preStmt.setString(3, email);
			
			rs= preStmt.executeQuery();
			con.commit();
		}
		
		//6. 실행결과처리
		while(rs.next()) {
			dbId = rs.getString("USERID");
		}
		
	}catch(Exception e){
		e.getStackTrace();
	}finally {
		
		//(6단계) 사용한 리소스 해제
		try {
			if (preStmt != null)
				preStmt.close();
		
			if (conn != null)
				conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}//finally의 끝
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("find.jsp");
	request.setAttribute("forget", forget);
	request.setAttribute("dbId", dbId);
	dispatcher.forward(request, response);
%>
	