<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>리턴받는페이지</h1>
<%
	request.setCharacterEncoding("utf-8");
%>

<c:if test="${param.inputYn == 'Y'}">
<h3>주소 : ${param.roadFullAddr}</h3>
</c:if>
<h3>주소 : ${param.roadFullAddr}</h3>


</body>
</html>