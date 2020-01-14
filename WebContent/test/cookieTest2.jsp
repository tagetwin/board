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
// 	String cookie = request.getHeader("Cookie");
// 	if(cookie != null){
// 		Cookie cookies[] = request.getCookies();
// 		for(Cookie c: cookies){
// 			System.out.println(c.getName());
// 			System.out.println(c.getValue());
// 		}
// 	}
%>
<h1>${cookie.phone.name} : ${cookie.phone.value}</h1>
<h1>${cookie.age.name}  : ${cookie.age.value}</h1>

</body>
</html>