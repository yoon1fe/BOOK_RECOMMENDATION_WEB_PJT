package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CommentDAO;

/**
 * Servlet implementation class CommentDeleteController
 */
@WebServlet("/DeleteComment")
public class CommentDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		int comment_number = Integer.parseInt(request.getParameter("comment_number"));
		int board_number = Integer.parseInt(request.getParameter("board_number"));
		CommentDAO commentDao = new CommentDAO();
		commentDao.deleteComment(comment_number);
		
				
		response.sendRedirect("BoardContent?id=" + board_number);
	}

}
