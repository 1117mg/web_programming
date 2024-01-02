<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.dto.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>step04_jstl</title>
</head>
<body>
	<h3>조건문</h3>
	<c:if test="${10 < 11}">
		 참이면 실행	
	</c:if>
	
	<%-- <% request.setAttribute("user", null); %>
	<c:if test="${not empty requestScope.user}">
		${requestScope.user.getName()}
	</c:if> --%>
  
  	<hr />
	<% session.setAttribute("floor", 2); %>
	<c:choose>
		<c:when test="${sessionScope.floor == 1}">
			1층입니다.
		</c:when>
		<c:when test="${sessionScope.floor == 1}">
			2층입니다.
		</c:when>
		<c:otherwise>
			몇층인지 나도모름
		</c:otherwise>	
	</c:choose>
  
  	<h3>반복문</h3>
	<!-- 1 ~ 5 -->
	<c:forEach begin="1" end="5" var="i" varStatus="loop">
		${loop.count}회 : 반복문  - ${i}<br/>
	</c:forEach>
	<%-- <c:forEach items="${userList}" var="user" varStatus="loop">
		${loop.count}회 : 반복문  - ${user}<br/>
	</c:forEach> --%>
	
</body>
</html>