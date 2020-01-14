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
					<input type="text" class="form-control" placeholder="Enter Username" name="username" required="required" maxlength="20">
				</div>
				<div class="form-group">
					<label for="password">Password:</label>
					<input type="password" class="form-control" placeholder="Enter password" name="password" required="required" maxlength="12">
				</div>
				<div class="form-group">
					<label for="email">Email address:</label>
					<input type="email" class="form-control" placeholder="Enter email" name="email" required="required" maxlength="30">
				</div>
				
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>

</div>

<%@ include file="../include/footer.jsp"%>