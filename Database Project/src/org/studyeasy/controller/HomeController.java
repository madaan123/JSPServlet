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
 * Servlet implementation class HomeController
 */
@WebServlet("/home")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name ="jdbc/project")
	private DataSource dataSource;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String page = request.getParameter("page");
		if(page!=null)
		page = page.toLowerCase();

		switch (page) {
		case "home":
			request.getRequestDispatcher("index.jsp").forward(request, response);
			break;
		case "listuser":
			listUsers(request, response);
			break;
		case "adduser":
			request.getRequestDispatcher("adduser.jsp").forward(request, response);
			break;
		case "update_user":
			UpdateUserFormLoader(request,response);
			break;
		default:
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}
	
	private void UpdateUserFormLoader(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("updateUser.jsp").forward(request, response);
	}

	public void listUsers(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		List<User> listUsers = new ArrayList<User>();
		listUsers = new usersModel().listUsers(dataSource);
		request.setAttribute("listUsers", listUsers);
		request.getRequestDispatcher("listuser.jsp").forward(request, response);
	}

}
