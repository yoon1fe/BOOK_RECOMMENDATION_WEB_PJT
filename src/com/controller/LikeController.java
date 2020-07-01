package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.RecommendDAO;

/**
 * Servlet implementation class LikeController
 */
@WebServlet("/Like")
public class LikeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LikeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		
		RecommendDAO recommendDAO = new RecommendDAO();
		
		int result = recommendDAO.processLike(id, board_number);
	

	    response.sendRedirect("./BoardContent?id=" + board_number);
	}

}
