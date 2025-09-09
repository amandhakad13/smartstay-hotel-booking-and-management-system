package com.smartstay.controller;

import java.io.IOException;
import java.sql.SQLException;

import com.smartstay.dao.UserDao;
import com.smartstay.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String role = request.getParameter("role");
		
		User u = new User();
		u.setName(name);
		u.setEmail(email);
		u.setPassword(password);
		u.setRole(role);
		
		UserDao udao = new UserDao();
		
		try {
			boolean isPresent = udao.isEmailAlreadyExists(email);
			
			if(!isPresent) {
				HttpSession session = request.getSession();
				session.setAttribute("failed", "Email Alreday Exists");
				response.sendRedirect("register.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			int insert = udao.insertUser(u);
			
			if(insert>0) {
				HttpSession session = request.getSession();
				session.setAttribute("success", "Registration Successfull");
				response.sendRedirect("login.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
