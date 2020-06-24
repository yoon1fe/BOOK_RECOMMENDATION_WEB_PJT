package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BoardDAO;

/**
 * Servlet implementation class BoardDeleteController
 */
@WebServlet("/DeleteBoard")
public class BoardDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BoardDeleteController() {
		super();
		// TODO Auto-generated constructor stub
	}


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		int board_number = Integer.parseInt(request.getParameter("board_number"));
		BoardDAO boardDao = new BoardDAO();
		boardDao.deleteBoard(board_number);
		
		//자바스크립트 왜 안되지
		out.println("<script language='javascript'>");
		out.print("alert(");
		out.print("삭제되었습니다.");
		out.println(");");
		out.println("</script>");
		
		response.sendRedirect("Board");
	}

}
