<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/nav.jsp"%>

<div class="container">
	<div class="card">
		<h5 class="card-header">Profile</h5>
		<div class="card-body">
			<form action="/user?cmd=update&id=${userProfile.id}" method="POST">
				<div class="form-group">
					<label for="username">Username:</label>
					<input type="text" class="form-control"  name="username" required="required" maxlength="20" value="${userProfile.username}" readonly="readonly"/>
				</div>
				<div class="form-group">
					<label for="password">Password:</label>
					<input type="password" class="form-control"  name="password" required="required" maxlength="12" value="${userProfile.password}" />
				</div>
				<div class="form-group">
					<label for="email">Email address:</label>
					<input type="email" class="form-control"  name="email" required="required" maxlength="30" value="${userProfile.email}" />
				</div>
				<div class="form-group">
					<label for="text">Home Address:</label>
					<button type="button" onClick="goPopup();"class="btn btn-info float-right mb-2">주소찾기</button>
					
					<input type="text" class="form-control" id="address"  name="address" value="${userProfile.address}" readonly="readonly"/>
				</div>
				
				<button type="submit" class="btn btn-primary float-right">회원정보수정</button>
			</form>
		</div>
	</div>
</div>

<script src="/js/join.js"></script>

<%@ include file="../include/footer.jsp"%>