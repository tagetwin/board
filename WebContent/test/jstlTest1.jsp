<%@page import="com.cos.board.Model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setAttribute("phone", "010222");
	session.setAttribute("phone", "0103333");
	User user = new User(1, "love", "1234", "love@nate.com", null);
	request.setAttribute("user", user);
	RequestDispatcher dis = request.getRequestDispatcher("jstlTest2.jsp?phone=0105555");
	dis.forward(request, response);
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Test1 Page</h1>
</body>
</html>