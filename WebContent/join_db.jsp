<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%!Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet re = null;

	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String OracleID = "system";
	String OraclePASS = "oracle";

	String sql = "insert into WebShop values(?, ?, ?, ?, ?, ?)";%>

<%
	request.setCharacterEncoding("UTF-8");

	int result = -2; //적용된 결과 행 갯수 저장

	String NAME = request.getParameter("NAME");
	String USERID = request.getParameter("USERID");
	String PWD = request.getParameter("PWD");
	String EMAIL = request.getParameter("EMAIL");
	String PHONE = request.getParameter("PHONE");
	String ADMIN = "0"; //사용자로 저장

	//데이터 체크
	if ((NAME != null || !NAME.equals("")) || (USERID != null || !USERID.equals(""))
			|| (PWD != null || !PWD.equals("")) || (EMAIL != null || !EMAIL.equals(""))
			|| (PHONE != null || !PHONE.equals(""))) {

		//System.out.print("NAME="+NAME+", USERID="+USERID+", PWD="+PWD+", EMAIL ="+EMAIL+", PHONE="+PHONE+", ADMIN="+ADMIN);

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, OracleID, OraclePASS);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, NAME);
			pstmt.setString(2, USERID);
			pstmt.setString(3, PWD);
			pstmt.setString(4, EMAIL);
			pstmt.setString(5, PHONE);
			pstmt.setInt(6, Integer.parseInt(ADMIN));

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} //finally 끝
	} //End of if : 데이터 체크

	if (result == 1) {//가입 성공시
		//response.sendRedirect("index.jsp");
%>
<script type="text/javascript">
	alert("회원가입 되었습니다. 로그인을 해주세요.");
	location.href = "login.jsp";
</script>
<%
	} else {
		//response.sendRedirect("login.jsp");
%>
<script type="text/javascript">
	alert("회원가입이 실패했습니다. 다시 시도해 주세요.");
	location.href = "register.jsp";
</script>
<%
	}
%>