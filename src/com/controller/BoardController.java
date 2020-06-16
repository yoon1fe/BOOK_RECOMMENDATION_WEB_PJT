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
import com.dao.RecommendDAO;
import com.dto.BoardDTO;
import com.dto.recommendDTO;


/**
 * Servlet implementation class FrontController
 */
@WebServlet("/Board")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardController() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	BoardDAO boardDao = new BoardDAO();
    	RecommendDAO recommDao = new RecommendDAO();
		ArrayList<BoardDTO> boards = boardDao.getBoards();

		
		for(BoardDTO bds: boards) {
			int board_number = bds.getBoard_number();
			bds.setLike(recommDao.getLike(board_number));
			bds.setDislike(recommDao.getDislike(board_number));
		}
		
		request.setAttribute("boards", boards);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/boards.jsp");
		requestDispatcher.forward(request, response);
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
