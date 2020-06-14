<%@ page import="com.dao.RecommendDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.io.PrintWriter"%>

<%

	request.setCharacterEncoding("UTF-8");
	String id=null;
	int board_number=0;
	int like=0;

	if(request.getParameter("id")!=null){
		id = (String)request.getParameter("id");
	}
	else
	{
		System.out.println("sibal");
	}
	if(request.getParameter("board_number")!=null){
		board_number = Integer.parseInt(request.getParameter("board_number"));
	}
	else
	{
		System.out.println("sibal");
	}
	System.out.println(id);
	System.out.println(board_number);
	
	RecommendDAO recommendDAO = new RecommendDAO();
	
	int result = recommendDAO.processDisLike(id, board_number);
	
	if (result <0) {

	       PrintWriter script = response.getWriter();

	       script.println("<script>");
	       script.println("alert('비추천을 해제하였습니다.');");
	       script.println("history.back();");
	       script.println("</script>");
	       script.close();

	    } 
	    else
	    {
	       PrintWriter script = response.getWriter();

	       script.println("<script>");
	       script.println("alert('비추천을 하였습니다.');");
	       script.println("history.back();");
	       script.println("</script>");
	       script.close();
	    }

%>