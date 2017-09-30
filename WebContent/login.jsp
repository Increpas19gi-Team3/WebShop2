<%-- 로그인 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- 헤더 인클루드 -->
<c:import url="header.jsp" charEncoding="UTF-8"></c:import>

<div class="wrapper news cart">

<!-- top 메뉴바 -->
<c:import url="topMenu.jsp" charEncoding="UTF-8"></c:import>








    <div class="login_popup popup">
      <h2>LOGIN</h2>
      <form action="login_db.jsp" method="post">
        <div class="row">
          <input type="text" name="USERID" value="" id="USERID" placeholder="아이디" maxlength="20" >
        </div>
        <div class="row">
          <input type="text" name="PWD" value="" id="PWD" placeholder="비밀번호" maxlength="15">
        </div>
        <div class="row">
          <input type="submit" name="" value="로그인" onclick="return input_login()">
        </div>
      </form>
      <div class="find_row">
        <a href="find_Id.jsp">아이디 찾기</a>
        <a href="find_Pw.jsp">비밀번호 찾기</a>
        <a href="register.jsp">회원가입</a>
      </div>
    </div>

	<script type="text/javascript">
	function input_login(){
		var id = document.getElementById('USERID').value;
		var pw = document.getElementById('PWD').value;
		
		if(id == null || id == ""){
			alert("아이디를 입력 하세요.");
			return false;
		}
		else if(pw == null || pw == ""){
				alert("패스워드를 입력 하세요.")
				return false;
		}
		else{
			return true;
		}
	}	
	</script>






    
</div>   
<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>