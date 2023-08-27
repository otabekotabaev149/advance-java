package org.studyeasy.org;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class SiteController
 */
@WebServlet("/SiteController")
public class SiteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SiteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch(action) {
		case "login":
			request.getRequestDispatcher("login.jsp").forward(request, response);
			break;
			
		default:
			break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		authenticate(request, response);
	}
	public void authenticate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if(username.equals("Otabek") && password.equals("lldsds149")) {
			// Invalidating session if any
//			request.getSession().invalidate();
			HttpSession newSession = request.getSession(true);
			newSession.setMaxInactiveInterval(300);
			newSession.setAttribute("username", username);
			String encode = response.encodeURL(request.getContextPath());
			response.sendRedirect(encode+"/MemberAreaController?action=memberArea");
		}
		else {
			response.sendRedirect(request.getContextPath()+"/SiteController?action=login");
		}
	}
}
























