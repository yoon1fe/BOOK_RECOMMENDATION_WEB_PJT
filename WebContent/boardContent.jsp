<%@page import="com.dto.CommentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dto.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	BoardDTO boardContent = (BoardDTO) request.getAttribute("boardContent");
	ArrayList<CommentDTO> comments = (ArrayList<CommentDTO>) request.getAttribute("comments");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=boardContent.getTitle()%></title>
</head>
<body>
	<jsp:include page="menu.jsp" />

	<div class="board-content">
		<h4>
			제목:
			<%=boardContent.getTitle()%>
			작성자:
			<%=boardContent.getId()%>
			작성시간:
			<%=boardContent.toString()%></h4>
		<%=boardContent.getBoard_content()%>

	</div>

	<div class="board-comment">

		<h4>============댓글창============</h4>
		<form  action="./CommentWrite" accept-charset='utf-8' method="post">
			댓글: <input type="text" name="content" placeholder="댓글을 입력하세요">			
			<!--  <input type="hidden" name="userID" value=<%=session.getAttribute("userID") %>>-->
			<input type="hidden" name="id" value=<%=boardContent.getBoard_number() %>>
			<button>작성</button>
		</form>



		<%
			if (comments.isEmpty()) {

			} else {
				for (CommentDTO cms : comments) {
		%>


		<article class="comment-article">
			<%=cms.getId()%>
			<%=cms.getComment_content()%>
			<%=cms.toString()%>
		</article>

		<%
			}
			}
		%>

	</div>





	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<jsp:include page="footer.jsp" />
</body>
</html>