<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    <div class="header">
      <div class="logo">
        <a href="index.jsp">web shop</a>
      </div>
      <div class="menu">
        <ul>
          <li><a href="news.jsp">news</a></li>
          <li><a href="magazine.jsp">magazine</a></li>
          <li><a href="about.jsp">about</a></li>
          <li><a href="event.jsp">event</a></li>
        </ul>
      </div>
      
      <div class="gnb">
      	
        <ul>
        	<c:if test="${sessionScope.NAME != null}">
        		<li><a>${sessionScope.NAME}님 어서오세요.</a></li>
        		<li><a href="logout.jsp">로그아웃</a></li>
        	</c:if>
        	<c:if test="${sessionScope.NAME == null}">
        		<li><a href="login.jsp">login</a></li>
			</c:if>
			
			
			<li><a href="cart.jsp">cart(0)</a></li>
			<li><a href="myPage_Select.jsp">my</a></li>
        </ul>
      </div>
    </div>