package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/verify")
public class VerificationServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String verification = request.getParameter("verification");

		ServletConfig config = getServletConfig();

		String code = config.getInitParameter("code");

		if (verification == null || verification.trim().length() == 0) {
			RequestDispatcher rd = request.getRequestDispatcher("UserVerification.jsp");
			rd.forward(request, response);

		} else {

			if (verification.equals(code)) {
				RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("UserVerification.jsp");
				rd.forward(request, response);
			}
		}
	}
}
