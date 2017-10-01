<%-- 내정보 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- 헤더 인클루드 -->
<c:import url="header.jsp" charEncoding="UTF-8"></c:import>
<div class="wrapper my">

<!-- top 메뉴바 -->
<c:import url="topMenu.jsp" charEncoding="UTF-8"></c:import>


    <div class="container">
      <div class="tab_wrap">
        <input type="radio" id="tab_1" name="tab_menu" checked>
        <div class="tab_inner">
        
        <%
        	String userid = (String)session.getAttribute("USERID");
        	if(userid != null && userid.equals("") == false){
        %>
        
          <label for="tab_1">내정보</label>
          <div class="tab_con">
            <form class="" action="myPage_upForm.jsp" method="post">
              <div class="row">
                <label for="my_id">아이디</label>
                <input id="my_id" type="text" name="" value="<%=session.getAttribute("USERID")%>" readonly="readonly">
              </div>
              <div class="row">
                <label for="my_name">이름</label>
                <input id="my_name" type="text" name="my_name" value="<%=request.getAttribute("name")%>" readonly="readonly">
              </div>
              <div class="row">
                <label for="my_phone">휴대폰 번호</label>
                <input id="my_phone" type="text" name="my_phone" value="<%=request.getAttribute("phone")%>" readonly="readonly">
              </div>
              <div class="row">
                <label for="my_email">이메일</label>
                <input id="my_email" type="text" name="my_email" value="<%=request.getAttribute("email")%>" readonly="readonly">
              </div>
              <div class="row">
              	<label for="my_email" style="border: none"></label>
                <input type="submit" name="" value="내정보 변경" style="width: 190px">
              </div>
            </form>
          </div>
        </div>
        <%
        	}else{
        %>
        <label for="tab_1">내정보</label>
          <div class="tab_con">
            <form class="" action="index.html" method="post">
              <div class="row">
                <label for="my_id">아이디</label>
                <input id="my_id" type="text" name="" value="">
              </div>
              <div class="row">
                <label for="my_name">이름</label>
                <input id="my_name" type="text" name="" value="">
              </div>
              <div class="row">
                <label for="my_phone">휴대폰 번호</label>
                <input id="my_phone" type="text" name="" value="">
              </div>
              <div class="row">
                <label for="my_email">이메일</label>
                <input id="my_email" type="text" name="" value="">
              </div>
            </form>
          </div>
        </div>
        <script type="text/javascript">
          		alert("로그인 후 이용 가능합니다.");
          </script> 
        <%
        	}
        %>
        
        
        <input type="radio" id="tab_2" name="tab_menu">
        <div class="tab_inner">
          <label for="tab_2">배송조회</label>
          <div class="tab_con">
            <form class="" action="index.html" method="post">
              <div class="row">
                <label for="my_orderNum">주문번호</label>
                <input id="my_orderNum" type="text" name="" value="">
              </div>
            </form>
          </div>
        </div>
        
        
      </div>
    </div>

</div>     
<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>