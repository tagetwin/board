<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/nav.jsp"%>

<div class="container">
	<div class="col-sm-8 mx-auto">
		<div id="title">
			<h2>${buVM.board.title}</h2>
		</div>
		<div class="d-flex align-items-center">
		<!-- JSTL을 이용해서 세션의 user.id와 buVM.board.userId -->
			<c:if test="${not empty sessionScope.user}">
			<a href="/board?cmd=update&id=${buVM.board.id}&userId=${buVM.board.userId}" class="btn btn-info">수정</a>&nbsp;
			<button id="delete" type="button" class="btn btn-danger">삭제</button>
			</c:if>
			
			<span id="username" class="ml-auto">${buVM.user.username}</span>
		</div>
		<hr />
		<div id="content">
			${buVM.board.content}
		</div>
	</div>
</div>

<form id="deleteForm" action="/board?cmd=delete" method="POST">
	<input type="hidden" name="id" value="${buVM.board.id}"/>
	<input type="hidden" name="userId" value="${buVM.board.userId}"/>
	
</form>
<script>
	$('#delete').on('click', function(){
		$('#deleteForm').submit();	
	});
	console.log(${buVM.board.userId});
	console.log(${buVM.user.id});
	
</script>

<%@ include file="../include/footer.jsp"%>


