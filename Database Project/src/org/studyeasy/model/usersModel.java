package org.studyeasy.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.studyeasy.entity.User;

public class usersModel {
	public List<User> listUsers(DataSource dataSource) {
		// Step1: Initialize connection objects
		List<User> listUsers = new ArrayList<>();
		Connection connect = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			connect = dataSource.getConnection();

			// Step2: Create a SQL statement string
			String query = "Select * from users";
			stmt = connect.createStatement();

			// Step3: execute SQL statement
			rs = stmt.executeQuery(query);

			// Step4: Process the result set
			while (rs.next()) {
				listUsers.add(new User(rs.getInt("users_id"), rs.getString("username"), rs.getString("email")));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listUsers;
	}

	public Boolean addUser(DataSource dataSource, User newUser) {
		// TODO Auto-generated method stub
		Connection connect = null;
		PreparedStatement statement = null;
		try {
			connect = dataSource.getConnection();
			String username = newUser.getUsername();
			String email = newUser.getEmail();
			String query = "insert into users(username,email) values(?,?)";
			statement = connect.prepareStatement(query);
			statement.setString(1, username);
			statement.setString(2, email);
			
			return statement.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	public Boolean updateUser(DataSource dataSource, User updatedUser) {
		// TODO Auto-generated method stub
		Connection connect = null;
		PreparedStatement statement = null;
		try {
			connect = dataSource.getConnection();
			String username = updatedUser.getUsername();
			String email = updatedUser.getEmail();
			int userId = updatedUser.getUsers_id();
			String query = "update users set username = ?, email = ? where users_id = ?";
			statement = connect.prepareStatement(query);
			statement.setString(1, username);
			statement.setString(2, email);
			statement.setInt(3, userId);
			
			return statement.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
}
