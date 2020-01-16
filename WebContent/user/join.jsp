<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/nav.jsp"%>

<div class="container">
	<div class="card">
		<h5 class="card-header">Join</h5>
		<div class="card-body">
			<form action="/user?cmd=joinProc" method="POST">
				<div class="form-group">
					<label for="username">Username:</label>
					<button type="button" class="btn btn-success float-right mb-2">중복확인</button>
					<input type="text" class="form-control" placeholder="Enter Username" name="username" required="required" maxlength="20"/>
				</div>
				<div class="form-group">
					<label for="password">Password:</label>
					<input type="password" class="form-control" placeholder="Enter password" name="password" required="required" maxlength="12"/>
				</div>
				<div class="form-group">
					<label for="email">Email address:</label>
					<input type="email" class="form-control" placeholder="Enter email" name="email" required="required" maxlength="30"/>
				</div>
				<div class="form-group">
					<label for="text">Home Address:</label>
					<button onClick="goPopup();" type="button" class="btn btn-info float-right mb-2">주소찾기</button>
					
					<input type="text" class="form-control" placeholder="Enter Adress" id="address" name="address" readonly="readonly"/>
				</div>
				
				<button type="submit" class="btn btn-primary float-right">회원가입</button>
			</form>
		</div>
	</div>
</div>

<script src="/js/join.js"></script>

<%@ include file="../include/footer.jsp"%>