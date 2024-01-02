<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, user.dto.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>step03_el</title>
</head>
<body>
	<h3>step03_EL</h3>
	
	<h4>배열</h4>
	<% 
		String[] strs = {"a", "b", "c"};	
		request.setAttribute("strs", strs);
		out.println(strs[1]);
	%>
	<%= strs[1] %> <br/>
	${requeestScope.strs[1]}

	<h4>ArrayList</h4>
	<%
		ArrayList<String> strList = new ArrayList<String>();
		strList.add("a");
		strList.add("b");
		strList.add("c");
		session.setAttribute("strList", strList);
	%>
	${sessionScope.strList.get(1)}
	${sessionScope.strList[1]}
	<hr/>
	
	  	<%-- 
		1번 데이터 : a
		2번 데이터 : b
		3번 데이터 : c
	 --%>
	 <c:forEach
	 	items="${sessionScope.strList }"
	 	var="str"
	 	varStatus="loop">
	 	
	 	<div>${loop.count}번 데이터 : ${str}</div>
	 	
	 </c:forEach>
	 
	 
	
	<h4>DTO</h4>
	<%
		ArrayList<User> users = new ArrayList<User>();
		users.add(new User("IT", 28));
		users.add(new User("Dev", 30));
		session.setAttribute("users", users);
	%>
	${sessionScope.users.get(1).name}
	${sessionScope.users.get(1).age}
	</hr>
	<%--
	1번 데이터 - 이름 : IT 나이 : 28
		2번 데이터 - 이름 : DEV 나이 : 30
	 --%>
	<c:forEach
		items="${sessionScope.users}"
		var="user"
		varStatus="loop">
		
		<div>${loop.count}번 데이터 - 이름 : ${user.getName()} 나이 : ${user.getAge() }</div>
	
	</c:forEach>
	
	
	
	
	
	
	
	
	

</body>
</html>