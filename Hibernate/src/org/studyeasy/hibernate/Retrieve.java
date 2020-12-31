package org.studyeasy.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.studyeasy.hibernate.servlet.Users;

public class Retrieve {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Users.class)
				.buildSessionFactory();

		Session session = factory.getCurrentSession();

		try {
			// Create object of entity class 
			Users user = new Users();

			// Start transaction
			session.beginTransaction();

			// Perform operation
			user = session.get(Users.class, 1);
			// Update User Info
			// user.setUsername("admin@studyeasy");
			// Delete User
			session.delete(user);
			// Commit Transaction
			session.getTransaction().commit();
			System.out.println(user);

		} finally {
			// TODO: handle finally clause
			session.close();
			factory.close();
		}
	}

}
