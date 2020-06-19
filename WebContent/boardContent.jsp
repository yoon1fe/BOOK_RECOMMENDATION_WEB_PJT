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
			추천수:
			<%=boardContent.getLike() %>
			비추천수:
			<%=boardContent.getDislike() %>
			작성시간:
			<%=boardContent.toString()%></h4>
		<%=boardContent.getBoard_content()%>

	</div>

	<div class="recommend">
		<form action="likeAction.jsp" accept-charset='utf-8' method="post">
			<button id="like">추천</button>
			<input type="hidden" name="board_number" value=<%=boardContent.getBoard_number() %>> <input type="hidden" name="id" value=<%=session.getAttribute("userID") %>>
		</form>
		<form action="dislikeAction.jsp" accept-charset='utf-8' method="post">
			<button id="dislike">비추천</button>
			<input type="hidden" name="board_number" value=<%=boardContent.getBoard_number() %>> <input type="hidden" name="id" value=<%=session.getAttribute("userID") %>>
		</form>
	</div>



	<%

	if(session.getAttribute("userID") != null && session.getAttribute("userID").equals(boardContent.getId())){
		%>
	<div class="modify-delete-button">
		<button id="modify">수정</button>
		
		<!-- <button id="delete" onClick="delBoard()">삭제</button>  -->
		<form action="./DeleteBoard" accept-charset='utf-8' method="post">
			<button id="delete">삭제</button>
			<input type="hidden" name="board_number" value=<%=boardContent.getBoard_number() %>>
		</form>
	</div>
	<%
	}%>

	<div class="board-comment">

		<h4>============댓글창============</h4>
		<form action="./CommentWrite" accept-charset='utf-8' method="post">
			댓글: <input type="text" name="content" placeholder="댓글을 입력하세요">
			<!--  <input type="hidden" name="userID" value=<%=session.getAttribute("userID") %>>-->
			<input type="hidden" name="id" value=<%=boardContent.getBoard_number()%>>
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
	<script>
		function delBoard(){
			const isDel = confirm("정말 삭제하시겠습니까?");
			if(isDel){
				var bn = '<%=boardContent.getBoard_number() %>';
				
				document.write("<%request.setAttribute("board_number", boardContent.getBoard_number()); %>");
				
				console.log(bn);
				
				
				location.href="./DeleteBoard";
				return true;
			}
			else{
				return false;
			}
		}
	
	</script>
	<jsp:include page="footer.jsp" />
</body>
</html>