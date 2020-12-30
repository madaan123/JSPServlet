package org.studyeasy.model;

import java.sql.Connection;
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
}
