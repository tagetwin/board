<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/nav.jsp"%>

<div class="container">
	<div class="card">
		<h5 class="card-header">Profile</h5>
		<div class="card-body">
			<form action="/blog/user?cmd=profileProc" method="POST">
				<div class="form-group">
					<label for="username">Username:</label>
					<input type="text" class="form-control" required="required" maxlength="20" value="${sessionScope.user.username}" readonly="readonly"/>
				</div>
				<div class="form-group">
					<label for="password">Password:</label>
					<input type="password" class="form-control"  name="password" required="required" maxlength="12" />
				</div>
				<div class="form-group">
					<label for="email">Email address:</label>
					<input type="email" class="form-control"  name="email" required="required" maxlength="30" value="${sessionScope.user.email}" />
				</div>
				<div class="form-group">
					<label for="text">Home Address:</label>
					<button type="button" onClick="goPopup();"class="btn btn-info float-right mb-2">주소찾기</button>
					
					<input type="text" class="form-control" id="address"  name="address" value="${sessionScope.user.address}" readonly="readonly"/>
				</div>
				
				<button type="submit" class="btn btn-primary float-right">회원정보수정</button>
			</form>
		</div>
	</div>
</div>

<script src="js/join.js"></script>

<%@ include file="../include/footer.jsp"%>