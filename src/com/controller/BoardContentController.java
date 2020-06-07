package com.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BoardDAO;
import com.dto.BoardDTO;

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


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDAO boardDao = new BoardDAO();
		
		Enumeration params = request.getParameterNames();
		System.out.println("----------------------------");
		while (params.hasMoreElements()){
		    String name = (String)params.nextElement();
		    System.out.println(name + " : " +request.getParameter(name));
		}
		System.out.println("----------------------------");



		int board_number = (int)request.getAttribute("board_number");
		BoardDTO boardContent = boardDao.getBoardContent(board_number);
		
		request.setAttribute("boardContent", boardContent);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("boardContent.jsp");
		requestDispatcher.forward(request, response);
	}

}
