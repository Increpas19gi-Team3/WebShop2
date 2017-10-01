<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
    Connection conn=null;
    PreparedStatement pstmt=null;
    ResultSet rs = null;
    
    String url="jdbc:oracle:thin:@localhost:1521:XE";
    String OracleID="system";
    String OraclePASS="oracle";
    
    String sql = "Select NAME, ADMIN, PWD from webshop where USERID = ? and PWD = ?";
%>
<%

request.setCharacterEncoding("UTF-8");

String USERID = request.getParameter("USERID");
String PWD = request.getParameter("PWD");

String dbName = "";
String dbAdmin = "";
String dbPass = "";

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection(url, OracleID, OraclePASS);
	conn.setAutoCommit(false);// AutoCommit 해제
	
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, USERID);
	pstmt.setString(2, PWD);
	
	
	// 5. execute
	rs= pstmt.executeQuery();
	// 수동커밋
	conn.commit();

	
	// 6. 실행결과처리
	while (rs.next()) {
		//브라우저창에 출력 
		dbName= rs.getString("NAME");
		dbAdmin = rs.getString("ADMIN");
		dbPass = rs.getString("PWD");
		//System.out.println("login_db: dbName: "+dbName + ",  dbAdmin:"+dbAdmin+", dbPass:"+dbPass);
	}
	
}catch(Exception e){
	e.printStackTrace();
}finally{
	try{
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
}//finally 끝

	//PWD가 "" 가 아니면서 
	if(PWD.length() > 0 && (PWD.equals(dbPass))) {//고객 정보가 있다면
		session.setAttribute("NAME", dbName);//세션에 저장
		session.setAttribute("ADMIN", dbAdmin);
		session.setAttribute("USERID", USERID);		
		response.sendRedirect("index.jsp");	
	}else{// 로그인 실패시 sendRedirect (login.jsp) 로 보내기
		response.sendRedirect("login.jsp");
	}
%>
