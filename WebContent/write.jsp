<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
</head>
<body>

	<jsp:include page="menu.jsp" />
	<form action="./Write" accept-charset='utf-8' method="post">
	<div class="container">
		<h2>게시판 글쓰기</h2>
		<table class = "table table-hover">
			<tbody>
				<tr>
					<td><input type="text" name="title" placeholder="제목" maxlength="200" size="100"></td>
				</tr>
				<tr>
					<td><textarea name="content" class="form-control" placeholder="내용을 작성해주세요" required="required" maxlength="5120" 
					cols="50" rows="10"></textarea></td>
				</tr>
			</tbody>
		
		</table>
		<input type ="submit" class="btn btn-primary pull-right" value="작성">
	</div>

	</form>

	<jsp:include page="footer.jsp" />
</body>
</html>