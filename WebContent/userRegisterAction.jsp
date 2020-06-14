<%@page import="com.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %>

<%
	request.setCharacterEncoding("UTF-8");
	String id=null;
	String password=null;
	String name=null;
	String age=null;
	String sex=null;
	String email=null;
	
	if(request.getParameter("id")!=null){
		id = (String)request.getParameter("id");
	}
	if(request.getParameter("password")!=null){
		password = (String)request.getParameter("password");
	}
	if(request.getParameter("name")!=null){
		name = (String)request.getParameter("name");
	}
	if(request.getParameter("age")!=null){
		age = (String)request.getParameter("age");
	}
	if(request.getParameter("sex")!=null){
		sex = (String)request.getParameter("sex");
	}
	if(request.getParameter("email")!=null){
		email = (String)request.getParameter("email");
	}
	
	if(id==null || password==null || name == null || age==null || sex==null||email==null)
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 존재합니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
	
	UserDAO dao = new UserDAO();
	int result = dao.register(id, password, name, Integer.parseInt(age), sex, email);
	
	if(result != -1)
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원가입에 성공했습니다.');");
		script.println("location.href='index.jsp';");
		script.println("</script>");
		script.close();
		return;
	}


%>