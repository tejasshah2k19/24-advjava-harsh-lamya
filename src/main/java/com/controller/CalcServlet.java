package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CalcServlet")
public class CalcServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Integer num1 = Integer.parseInt(request.getParameter("num1"));
		Integer num2 = Integer.parseInt(request.getParameter("num2"));

		String operation = request.getParameter("operation");
		Integer ans = 0;
		if (operation.equals("add")) {
			ans = num1 + num2;
		} else if (operation.equals("sub")) {
			ans = num1 - num2;
		} else if (operation.equals("mul")) {
			ans = num1 * num2;
		}
		
		request.setAttribute("ans", ans);//set data 
		RequestDispatcher rd = request.getRequestDispatcher("CalcResult.jsp");//naviagate 
		rd.forward(request, response);
	}
}
