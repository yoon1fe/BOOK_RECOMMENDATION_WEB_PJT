package com.controller;

import java.io.IOException;

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

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		System.out.println("This is BoardDeleteController");
		int board_number = Integer.parseInt(request.getParameter("board_number"));
		//int board_number = (int)request.getAttribute("board_number");
		System.out.println("board_number: " + board_number);
		BoardDAO boardDao = new BoardDAO();
		boardDao.deleteBoard(board_number);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Board");
		requestDispatcher.forward(request,  response);
	}

}
