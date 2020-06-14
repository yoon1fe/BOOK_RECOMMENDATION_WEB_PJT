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
		<input type="text" name="title" placeholder="제목"></br>
		<textarea name="content" style="resize: none;" cols='50' rows='10' required="required" placeholder="내용"></textarea>
		</br>



		<button>작성</button>
	</form>

	<jsp:include page="footer.jsp" />
</body>
</html>