package com.jspider.cardekhowithservlet.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspider.cardekhowithservlet.JDBC.CarJDBC;
import com.jspider.cardekhowithservlet.object.Car;
@WebServlet("/Modify_Car")
public class ModifyCar extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
          
            int id = Integer.parseInt(req.getParameter("id"));
            String name = req.getParameter("name");
            String brand = req.getParameter("brand");
            double price = Double.parseDouble(req.getParameter("price"));

    
            int res = CarJDBC.modifyCar(id, name, brand, price);
             
           
            if (res == 1) {
                req.setAttribute("message", "<h3> updated successfully.</h3>");
            } else {
                req.setAttribute("message", "<h3>Failed to update details. Please try again.</h3>");
            }
        }  catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("modify_car.jsp");
        requestDispatcher.forward(req, resp);
    }
	}
	


