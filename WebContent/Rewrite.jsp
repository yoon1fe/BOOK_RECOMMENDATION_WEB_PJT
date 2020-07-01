<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.dao.BoardDAO"%>
<%@page import="com.dto.BoardDTO"%>

<%
	BoardDAO bao = new BoardDAO();
	int board_number = (int)session.getAttribute("board_number");
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>게시글 작성</title>
</head>

<body>

	<jsp:include page="menu.jsp" />
	<form action="./Rewrite" accept-charset='utf-8' method="post">
	<div class="container">
	<br>
		<h2>게시판 글 수정</h2>
		<table class = "table table-hover">
			<tbody>
				<tr>
				<td>
				
					<input id="past_title" type="text" name="title" value="<%=bao.findTitle(board_number) %>" 
					required="required" maxlength="200" size="100">
					
					</td>
				</tr>
				<tr>
					<td><textarea name="content" class="form-control" required="required" maxlength="5120" 
					cols="50" rows="10"><%=bao.findContent(board_number) %></textarea></td>
				</tr>
			</tbody>
		
		</table>
		<input type ="submit" class="btn btn-primary pull-right" value="수정">
	</div>

	</form>
	<br>
	<jsp:include page="footer.jsp" />
</body>
</html>