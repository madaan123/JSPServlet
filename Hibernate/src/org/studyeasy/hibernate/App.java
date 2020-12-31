package org.studyeasy.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.studyeasy.hibernate.servlet.Users;

public class App {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SessionFactory factory = new Configuration()
								.configure("hibernate.cfg.xml")
								.addAnnotatedClass(Users.class)
								.buildSessionFactory();
		
		Session session = factory.getCurrentSession();
		
		try {
			// Create object of entity class 
			Users user = new Users("ashish", "ashish123", "ashish", "madaan");
//			Users user1 = new Users("rahul", "rahul123", "rahul", "roy");
//			Users user2 = new Users("ria", "ria123", "ria", "kapoor");
//			Users user3 = new Users("sam", "sam123", "sam", "arora");
			// Start transaction
			session.beginTransaction();
			
			// Perform operation
			session.save(user);
			
			// Commit Transaction
			session.getTransaction().commit();
			System.out.println("Row Added");
			
		} finally {
			// TODO: handle finally clause
			session.close();
			factory.close();
		}
	}
}
