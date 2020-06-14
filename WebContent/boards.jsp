<%@page import="java.util.Enumeration"%>
<%@page import="com.dto.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	ArrayList<BoardDTO> boards = (ArrayList<BoardDTO>)request.getAttribute("boards");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
	<jsp:include page="menu.jsp" />

	<a href="write.jsp">글 쓰기</a>
	

	
				<h3>게시글 번호 제목 작성자 조회수 시각</h3>
				
			<%
			for(BoardDTO bds : boards){
				%>
				<article class = "board-article">
				<a href="BoardContent?id=<%=bds.getBoard_number()%>">
				<%=bds.getBoard_number() %>
				<%=bds.getTitle() %>
				<%=bds.getId() %>
				<%=bds.getReadCount()%>
				<%=bds.toString() %>
				</a>
				</article>
				<%
			}
			%>
		</tbody>

	</table>

 <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
 <script src="js/bootstrap.js"></script>
	<jsp:include page="footer.jsp" />
</body>
</html>