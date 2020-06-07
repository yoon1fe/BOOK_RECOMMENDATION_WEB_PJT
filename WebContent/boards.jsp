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
	<%request.setAttribute("a", 44); %>
	

	<table class="board-table">
		<thead>
			<tr>
				<th>게시글 번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>시각</th>
			</tr>
		</thead>
		<tbody>
			<%
			for(BoardDTO bds : boards){
				request.setAttribute("board_number"+bds.getBoard_number(), bds.getBoard_number());

				%>
				<article class = "board-article">
				<a href="BoardContent">
				<%=bds.getBoard_number() %>
				<%=bds.getTitle() %>
				<%=bds.getId() %>
				<%=bds.toString() %>
				</a>
				</article>
				<%
			}
			%>
		</tbody>

	</table>
<%
Enumeration params = request.getParameterNames();
System.out.println("----------------------------");
while (params.hasMoreElements()){
    String name = (String)params.nextElement();
    System.out.println(name + " : " +request.getParameter(name));
}
System.out.println("----------------------------");
 %>


	<jsp:include page="footer.jsp" />
</body>
</html>