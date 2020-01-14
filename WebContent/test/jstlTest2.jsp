<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 	String phone = (String) request.getAttribute("phone");
	pageContext.setAttribute("phone", "010444");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
가장 가까운 객체를 찾아낸다. page > request > session > application
<h1>Test2 Page: ${pageScope.phone}</h1>
<h1>Test2 Page: ${requestScope.phone}</h1>
<h1>Test2 Page: ${sessionScope.phone}</h1>
<h1>Test2 : ${param.phone}</h1>
<hr/>
<h1>User:${user.getUsername()}</h1>
<h1>EL연산자 : ${param.phone == requestScope.phone}</h1>
<h1>EL연산자 : ${param.phone eq requestScope.phone}</h1>
<h1>EL연산자 : ${not empty param.phone}</h1>
</body>
</html>