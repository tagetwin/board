<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// reponse.setHeader("Set-Cookie", "phone=0102222; name=cos;");	

	Cookie cookie = new Cookie("phone", "01022222222");
	Cookie cookie2= new Cookie("age", "29");

	cookie.setMaxAge(600); // 초 단위
	response.addCookie(cookie);
	response.addCookie(cookie2);

%>

</body>
</html>