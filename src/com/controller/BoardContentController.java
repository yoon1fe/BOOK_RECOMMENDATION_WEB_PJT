package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BoardDAO;
import com.dao.CommentDAO;
import com.dto.BoardDTO;
import com.dto.CommentDTO;

/**
 * Servlet implementation class BoardContentController
 */
@WebServlet("/BoardContent")
public class BoardContentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardContentController() {
        super();
        // TODO Auto-generated constructor stub
    }

    //protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	
    //}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("This is BoardContentController");
		int board_number = Integer.parseInt(request.getParameter("id"));
		System.out.println(board_number);
		BoardDAO boardDao = new BoardDAO();
		CommentDAO commentDao = new CommentDAO();
		System.out.println("~~~~");
		ArrayList<CommentDTO> comments = commentDao.getComments(board_number);

		System.out.println("~~~~");
		

		BoardDTO boardContent = boardDao.getBoardContent(board_number);
		System.out.println("~~~~");
		request.setAttribute("boardContent", boardContent);
		request.setAttribute("comments",  comments);
		System.out.println("~~~~");
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("boardContent.jsp");
		requestDispatcher.forward(request, response);
	}

}
