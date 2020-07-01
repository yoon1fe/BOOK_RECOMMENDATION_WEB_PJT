<%@page import="com.dto.CommentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dto.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	BoardDTO boardContent = (BoardDTO) request.getAttribute("boardContent");
	ArrayList<CommentDTO> comments = (ArrayList<CommentDTO>) request.getAttribute("comments");
	Boolean isOwnContent;
	Boolean isOwnComment;
	if(session.getAttribute("userID") == null) isOwnContent = null;
	else if(session.getAttribute("userID").equals(boardContent.getId())) isOwnContent = true;
	else isOwnContent = false;
	System.out.println(isOwnContent);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=boardContent.getTitle()%></title>
<style>
	.button{
	transition-duration : 0.4s;	"WebContent/boardContent.jsp"
	font-size:15px;
	border-radius:8px; 
	padding: 16px 32px;
}
	.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button2:hover {
  background-color: #008CBA;
  color: white;
}

.button3 {
  background-color: white; 
  color: black; 
  border: 2px solid #f44336;
}

.button3:hover {
  background-color: #f44336;
  color: white;
}
</style>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
			<div class="card shadow mt-4">
				<div class="card-body">
					<h2 class="card-title">제목 : <%=boardContent.getTitle()%></h2>
					<p>작성자 : <%=boardContent.getId()%> 작성시간 : <%=boardContent.toString()%> </p>
					<p>추천수 : <%=boardContent.getLike() %> 비추천수 : <%=boardContent.getDislike() %> 조회수 : <%=boardContent.getReadCount() %>
					<p1 class="text warning">
					<%
						int a = (int)Math.round((boardContent.getLike()/(boardContent.getLike()+boardContent.getDislike()+0.1))*5);
						for(int i=0;i<a;i++)
							out.println('★');
						for(int i=0;i<5-a;i++)
							out.println('☆');
					%>
					</p1>
					</p>
					<hr>
					<p class="card-text"><%=boardContent.getBoard_content()%></p>
					
				</div>
			
	

	<table class="recommend" style="margin-left:auto;margin-right:auto;">
	<tr>
	<td>
		<form action="Like" accept-charset='utf-8' method="post">
			<button id="like" class="button button2">추천</button>
			<input type="hidden" name="board_number" value=<%=boardContent.getBoard_number() %>> <input type="hidden" name="id" value=<%=session.getAttribute("userID") %>>
		</form>
	</td>
	<td>
	&nbsp; &nbsp;
	</td>
	<td>
	</td>
	<td>
		<form action="Dislike" accept-charset='utf-8' method="post">
			<button id="dislike" class="button button3">비추천</button>
			<input type="hidden" name="board_number" value=<%=boardContent.getBoard_number() %>> <input type="hidden" name="id" value=<%=session.getAttribute("userID") %>>
		</form>
	</td>
	</tr>
	</table>



	<%if(isOwnContent != null && isOwnContent == true){%>	<!-- 로그인이 되어있고 자기 글을 조회했을 때 -->
	<div class="modify-delete-button" style="margin-left:25px;">
		<button class="btn btn-outline-success" id="modify" onClick="location.href='Rewrite.jsp'"><%
int bn = boardContent.getBoard_number();
session.setAttribute("board_number", bn);
%>수정</button>
		&nbsp;
		<button class="btn btn-outline-danger" id="delete" onClick="delBoard()">삭제</button> 
	</div>
	<%
	}%>
	
	<div class="card card-outline-secondary my-4">
		<div class="card-header">
		<form action="./CommentWrite" accept-charset='utf-8' method="post">
			댓글: <input type="text" name="content" required="required" placeholder="댓글을 입력하세요" size=80>
			<input type="hidden" name="id" value=<%=boardContent.getBoard_number()%>>
			<%if(isOwnContent == null){%>
			<button disabled title="로그인해야 작성할 수 있습니다.">작성</button><%}else{%>
			<button class="btn btn-info">작성</button><%} %>
		</form>	
		</div>
		<div class="card-body">
		<%
			if (comments.isEmpty()) {
			} else {
				for (CommentDTO cms : comments) {
		%>
		<p><%=cms.getComment_content()%></p>
		<small class="text-muted">By <%=cms.getId()%>, <%=cms.toString()%> </small>
		&nbsp;&nbsp;
		<button id='comment-delete' onClick="delComment(<%=cms.getComment_number()%>, '<%=cms.getId()%>')">X</button>
		<hr>
		<%
				}
			}
		%>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	


	<script>
	function reWrite(){
		const isDel = confirm("정말 수정하시겠습니까?");
		if(isDel){
			var bn = '<%=boardContent.getBoard_number() %>';
			
			setAttribute("board_number", bn);
			location.href="./Rewrite.jsp";
			
			return true;
		}
		else{
			return false;
		}
	}
		function delBoard(){
			const isDel = confirm("정말 삭제하시겠습니까?");
			if(isDel){
				var bn = '<%=boardContent.getBoard_number() %>';
				
				location.href="./DeleteBoard?board_number="+bn;
				return true;
			}
			else{
				return false;
			}
		}
		
		function delComment(cn, id){
			const isDel = confirm("정말 삭제하시겠습니까?");
			if(isDel){
				if(id != '<%=session.getAttribute("userID")%>'){
					alert('본인의 댓글만 삭제할 수 있습니다!');
					return false;
				}
				
				location.href="./DeleteComment?comment_number="+cn + "&board_number=" + <%=boardContent.getBoard_number()%>;
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