package org.studyeasy.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String param = request.getParameter("page");
		if(param.equals("login")) {
			getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
		}
		else if(param.equals("signup")) {
			getServletContext().getRequestDispatcher("/signUp.jsp").forward(request, response);
		}
		else if(param.equals("about")) {
			getServletContext().getRequestDispatcher("/about.jsp").forward(request, response);
		}
		else {
			getServletContext().getRequestDispatcher("/notFound.jsp").forward(request, response);
		}
	}

}

















