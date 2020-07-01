package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.filters.SetCharacterEncodingFilter;

import com.dao.BoardDAO;

@WebServlet("/Rewrite")
public class BoardRewriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardRewriteController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		int board_number = (int)session.getAttribute("board_number");
		
		BoardDAO boardDao = new BoardDAO();
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		boardDao.reWriteBoard(title, content, board_number);

		response.sendRedirect("Board");
	}
}