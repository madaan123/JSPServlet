package org.studyeasy.hibernate.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.studyeasy.hibernate.entity.Files;

public class FilesDAO {
	SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Files.class)
			.buildSessionFactory();
	
	public void addFileDetails(Files file) {
		Session session = factory.getCurrentSession();
		
		try {
			// Start transaction
			session.beginTransaction();

			// Perform operation
			session.save(file);
			// Commit Transaction
			session.getTransaction().commit();
			System.out.println(file.getFileName()+" Got Added");

		} finally {
			// TODO: handle finally clause
			session.close();
			factory.close();
		}
	}
}
