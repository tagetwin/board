<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	// 	// 나중에 EL로 변경할 예정
	// 	String cookie = request.getHeader("Cookie");
	// 	String usernameCookie = "";
	// 	if(cookie != null){
	// 		Cookie cookies[] = request.getCookies();

	// 		for(Cookie c: cookies){
	// 			if(c.getName().equals("usernameCookie")){
	// 				usernameCookie = c.getValue();
	// 			}
	// 		}
	// 	}
%>

<%@ include file="../include/nav.jsp"%>

<div class="container">
	<div class="card">
		<h5 class="card-header">Login</h5>
		<div class="card-body">
			<form action="/user?cmd=loginProc" method="post">
				<div class="form-group">
					<label for="username">Username</label> <input type="text"
						value="${cookie.usernameCookie.value}" class="form-control"
						placeholder="Enter Username" name="username" required="required"
						maxlength="20" />
				</div>
				<div class="form-group">
					<label for="pwd">Password:</label> <input type="password"
						class="form-control" placeholder="Enter password" name="password"
						required="required" maxlength="12" />
				</div>
				<div class="form-group form-check">
					<label class="form-check-label">
						 <c:choose>
							<c:when test="${not empty cookie.usernameCookie.value}">
								<input class="form-check-input" type="checkbox"
									name="rememberMe" checked /> Remember me
							</c:when>
							<c:otherwise>
								<input class="form-check-input" type="checkbox"
									name="rememberMe" /> Remember me
							</c:otherwise>
						</c:choose>

					</label>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>

</div>

<%@ include file="../include/footer.jsp"%>