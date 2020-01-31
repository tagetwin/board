<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/include/nav.jsp"%>

<c:if test="${empty sessionScope.user}">
	<script>
		alert('잘못된 접근입니다.');
		location.href = '/user?cmd=login';
	</script>
</c:if>

<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-bs4.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-bs4.min.js"></script>

<div class="container">
	<div class="card">
		<h5 class="card-header">Post</h5>
		<div class="card-body">
			<form action="/blog/board?cmd=writeProc" method="POST">
				<div class="form-group">
					<label for="Title">Title:</label> <input type="text"
						class="form-control" placeholder="Enter Title" name="title"
						required="required" maxlength="20">
				</div>
				<div class="form-group">
					<label for="password">Content:</label>
					<textarea id="summernote" class="form-control" rows="10" cols="5" name="content"></textarea>
				</div>

				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>
</div>


<script>
	$('#summernote').summernote({
		placeholder : '"Post Page"',
		tabsize : 2,
		height : 300
	});
</script>


<%@ include file="/include/footer.jsp"%>