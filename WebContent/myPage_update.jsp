<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!Connection conn = null;
	PreparedStatement pstmt = null;
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String uid = "system";
	String pass = "oracle";
	String sql = "update webshop set pwd=?, email=?, phone=? where userid=?";
	ResultSet rs = null;
	%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String userid = (String)session.getAttribute("USERID");
		String userpass = request.getParameter("my_pw");
		String name = request.getParameter("my_name");
		String email = request.getParameter("my_email");
		String phone = request.getParameter("my_phone");
		int res = 0;
		
		//System.out.println(userid +" " + name +" " + email +" " + phone );
		try {
			if( (userid != null && userid.equals("") == false) && (userpass != null && userpass.equals("") == false) ) {
			
				Class.forName("oracle.jdbc.driver.OracleDriver");
			
				conn = DriverManager.getConnection(url, uid, pass);
		
				pstmt = conn.prepareStatement(sql);
	
				pstmt.setString(1, userpass);
				pstmt.setString(2, email);
				pstmt.setString(3, phone);
				pstmt.setString(4, userid);
			
				res = pstmt.executeUpdate();
				conn.commit();					
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			//(6단계) 사용한 리소스 해제
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}//finally의 끝
	
		System.out.println("페이지 변경");
		RequestDispatcher dispatcher = request.getRequestDispatcher("myPage_Select.jsp");
		dispatcher.forward(request, response);
	%>
	
	
</body>
</html>