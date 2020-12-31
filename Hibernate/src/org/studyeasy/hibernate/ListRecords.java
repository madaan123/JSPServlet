package org.studyeasy.hibernate;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.studyeasy.hibernate.servlet.Users;

public class ListRecords {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SessionFactory factory = new Configuration()
								.configure("hibernate.cfg.xml")
								.addAnnotatedClass(Users.class)
								.buildSessionFactory();
		
		Session session = factory.getCurrentSession();
		
		try {
			// Start transaction
			session.beginTransaction();
			
			// Perform operation
			List<Users> users = session.createQuery("from users").getResultList();
			
			for(Users user:users) {
				System.out.println(user);
			}
			
		} finally {
			// TODO: handle finally clause
			session.close();
			factory.close();
		}
	}
}
