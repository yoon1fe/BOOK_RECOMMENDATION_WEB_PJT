<%@page import="com.dto.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	BoardDTO boardContent = (BoardDTO)request.getAttribute("boardContent");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=boardContent.getBoard_number() %>
	<%=boardContent.getTitle() %>
	<%=boardContent.getBoard_content() %>
	<%=boardContent.getId() %>
	<%=boardContent.toString() %>
</body>
</html>