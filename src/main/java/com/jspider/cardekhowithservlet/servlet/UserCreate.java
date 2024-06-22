package com.jspider.cardekhowithservlet.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspider.cardekhowithservlet.JDBC.CarJDBC;
@WebServlet("/User_Create")
public class UserCreate extends HttpServlet{

	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String email = req.getParameter("email");
            String password = req.getParameter("password");
            int res = CarJDBC.userCreate(email ,password);
            
            
            if (res == 1) {
                req.setAttribute("message", "<h1>User details updated successfully.</h1>");
            } else {
                req.setAttribute("message", "<h1>Failed to update User details. Please try again.</h1>");
            }
		} catch (Exception e) {
			e.printStackTrace();		
			}
		 RequestDispatcher requestDispatcher = req.getRequestDispatcher("create_user.jsp");
	     requestDispatcher.forward(req, resp);
	}

}
