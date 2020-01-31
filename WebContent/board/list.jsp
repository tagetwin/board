<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/include/nav.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<div class="container">
	<table class="table table-hover">
		<thead>
			<tr>
				<th>#</th>
				<th>Title</th>
				<th>CreateTime</th>
			</tr>
		</thead>
		<tbody>
			<!-- 	varStatus -> status.index로 번호를 출력할 수 있다. -->
			<c:forEach var="board" items="${boards}" varStatus="status">
				<tr>
					<td>${board.id}</td>
					<td><a href="/blog/board?cmd=detail&id=${board.id}">${board.title}</a></td>
					<td><fmt:formatDate value="${board.createTime}" pattern="yyyy-MM-dd HH:mm"/></td>
				</tr>
			</c:forEach>



		</tbody>
	</table>
</div>



<%@ include file="/include/footer.jsp"%>