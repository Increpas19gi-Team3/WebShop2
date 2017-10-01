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
	String sql = "select name, userid, email, phone from webshop where userid=?";
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
		String userid = (String)session.getAttribute("USERID");
		String name = null;
		String email = null;
		String phone = null;
		
		
		try {
			if(userid != null && userid.equals("") == false) {
			
				Class.forName("oracle.jdbc.driver.OracleDriver");
			
				conn = DriverManager.getConnection(url, uid, pass);
		
				pstmt = conn.prepareStatement(sql);
	
				pstmt.setString(1, userid);
			
				rs = pstmt.executeQuery();
				while(rs.next()){
					System.out.print(rs.getString("name"));
					name = rs.getString("name");
					email = rs.getString("email");
					phone = rs.getString("phone");
				}
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
	
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("myPage.jsp");
	request.setAttribute("name", name);
	request.setAttribute("email", email);
	request.setAttribute("phone", phone);
	dispatcher.forward(request, response);
	%>
	
	
</body>
</html>