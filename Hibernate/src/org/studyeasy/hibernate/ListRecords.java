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
			
			// Where clause
			List<Users> users2 = session.createQuery("from users where first_name='rahul' ").getResultList();
			
			for(Users user:users2) {
				System.out.println(user);
			}
			
			// Update query
			session.createQuery("update users set password='rahul@123' where first_name='rahul' ").executeUpdate();
			
		} finally {
			// TODO: handle finally clause
			session.close();
			factory.close();
		}
	}
}
