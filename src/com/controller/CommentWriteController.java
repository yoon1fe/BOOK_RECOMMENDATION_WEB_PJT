package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.CommentDAO;

/**
 * Servlet implementation class CommentWriteController
 */
@WebServlet("/CommentWrite")
public class CommentWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentWriteController() {
        super();
        // TODO Auto-generated constructor stub
    }

    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("userID");
		int board_number = Integer.parseInt(request.getParameter("id"));
		String comment_content = request.getParameter("content");
		CommentDAO commentDao = new CommentDAO();
		commentDao.addComment(id, board_number, comment_content);
		
		
		response.sendRedirect("./BoardContent?id=" + board_number);
		//RequestDispatcher rd = request.getRequestDispatcher("./BoardContent?id=" + board_number);
		//rd.forward(request, response);
	}

}
