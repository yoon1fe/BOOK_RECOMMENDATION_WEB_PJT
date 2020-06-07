<%@page import="com.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>

<% request.setCharacterEncoding("UTF-8"); %>



<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->

<jsp:useBean id="user" class="com.dto.UserDTO" scope="page" />

<jsp:setProperty name="user" property="userID" />

<jsp:setProperty name="user" property="userPassword" />



<!DOCTYPE html>

<html>

<head>



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>도서추천</title>

</head>

<body>

	<%
	    String id=null;
	    String password=null;
	
		if(request.getParameter("id")!=null){
			id = (String)request.getParameter("id");
		}
		if(request.getParameter("password")!=null){
			password = (String)request.getParameter("password");
		}

		UserDAO userDAO = new UserDAO(); //인스턴스생성

		int result = userDAO.login(id, password);

		

		//로그인 성공

		if(result == 1){

			PrintWriter script = response.getWriter();
			session.setAttribute("userID",id);
			session.setAttribute("userPASSWORD",password);
			script.println("<script>");

			script.println("location.href='index.jsp';");

			script.println("</script>");

		}

		//로그인 실패

		else if(result == 0){

			PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("alert('비밀번호가 틀립니다.')");

			script.println("history.back()");

			script.println("</script>");

		}

		//아이디 없음

		else if(result == -1){

		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("alert('존재하지 않는 아이디 입니다.')");

		script.println("history.back()");

		script.println("</script>");

		}

		//DB오류

		else if(result == -2){

		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("alert('데이터베이스 서버 문제가 발생하였습니다..')");

		script.println("history.back()");

		script.println("</script>");

		}		

	

	%>



</body>

</body>

</html>



