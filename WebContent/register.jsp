<%-- 회원가입 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- 헤더 인클루드 -->
<c:import url="header.jsp" charEncoding="UTF-8"></c:import>

<div class="wrapper news cart">

<!-- top 메뉴바 -->
<c:import url="topMenu.jsp" charEncoding="UTF-8"></c:import>


	<div class="sign_popup popup" style="margin-left: 30%;">
      <h2>SIGN</h2>
      <form class="" action="join_db.jsp" method="post">
        <div class="row">
          <input type="text" name="USERID" value="" id="USERID" placeholder="아이디">
        </div>
        <div class="row">
          <input type="text" name="PWD" value="" id="PWD" placeholder="비밀번호">
        </div>
        <div class="row">
          <input type="text" name="NAME" value="" id="NAME" placeholder="이름">
        </div>
        <div class="row">
          <input type="text" name="PHONE" value="" id="PHONE" placeholder="휴대폰 번호">
        </div>
        <div class="row">
          <input type="text" name="EMAIL" value="" id="EMAIL" placeholder="이메일">
        </div>
        
        <div class="row">
          <input type="submit" name="" value="회원가입" onclick="return input_check_func()">
        </div>
      </form>
    </div>


	<script type="text/javascript">
	function input_check_func() {
		var id = document.getElementById('USERID').value;
		var pw = document.getElementById('PWD').value;
		var nm = document.getElementById('NAME').value;
		var ph = document.getElementById('PHONE').value;
		var em = document.getElementById('EMAIL').value;

		if (id == null || id == "") {
			alert("아이디를 입력하셔야 합니다.");
			return false;
		} else if (pw == null || pw == "") {
			alert("패스워드를 입력하셔야 합니다.");
			return false;
		} else if (nm == null || nm == "") {
			alert("이름을 입력하셔야 합니다.");
			return false;
		}
		regNumber = /^[0-9]*$/;

		if (regNumber.test(nm)) {
			alert('이름은 한글이나 영어로만 쓰셔야 합니다.');
			return false;
		} else if (ph == null || ph == "") {
			alert("핸드폰번호를 입력하셔야 합니다.");
			return false;
		} else if (em == null || em == "") {
			alert("이메일을 입력하셔야 합니다.");
			return false;
		}
		regEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

		if (!regEmail.test(em)) {
			alert('이메일 주소가 올바르지 않습니다.');
			return false;
		} else {
			return true;
		}
	}
	</script>



</div>
<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>