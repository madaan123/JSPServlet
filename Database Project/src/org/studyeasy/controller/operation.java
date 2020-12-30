package org.studyeasy.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.studyeasy.entity.User;
import org.studyeasy.model.usersModel;

/**
 * Servlet implementation class operation
 */
@WebServlet("/operation")
public class operation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name ="jdbc/project")
	private DataSource dataSource;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String operation = request.getParameter("form");
		operation = operation.toLowerCase();
		
		switch (operation) {
		case "adduser_operation": {
			User newUser = new User(request.getParameter("username"), request.getParameter("email"));
			addUserOperation(newUser);
			listUsers(request, response);
			break;
		}
		default:
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}

	private void addUserOperation(User newUser) {
		// TODO Auto-generated method stub
		new usersModel().addUser(dataSource, newUser);
		return;
	}
	
	public void listUsers(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		List<User> listUsers = new ArrayList<User>();
		listUsers = new usersModel().listUsers(dataSource);
		request.setAttribute("listUsers", listUsers);
		request.getRequestDispatcher("listuser.jsp").forward(request, response);
	}

}
