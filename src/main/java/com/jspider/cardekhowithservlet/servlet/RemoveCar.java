package com.jspider.cardekhowithservlet.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspider.cardekhowithservlet.JDBC.CarJDBC;

@WebServlet("/Remove_Car")
public class RemoveCar extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		int res = CarJDBC.RemoveCar(id);
		if(res == 1) {
			req.setAttribute("message", " id " + id + " Car Removed Successfully  ");
		}else {
			req.setAttribute("message", " id " + id + " Car not found ");
		}
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("remove_car.jsp");
		requestDispatcher.forward(req, resp);
	}

}