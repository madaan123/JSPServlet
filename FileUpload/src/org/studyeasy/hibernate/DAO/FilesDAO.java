package org.studyeasy.hibernate.DAO;

import java.util.List;

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
			System.out.println(file.getFileName() + " Got Added");

		} finally {
			// TODO: handle finally clause
			session.close();
			factory.close();
		}
	}

	public List<Files> listFiles() {
		Session session = factory.getCurrentSession();

		try {
			// Start transaction
			session.beginTransaction();

			// Perform operation
			List<Files> files = session.createQuery("from files").getResultList();
			// Commit Transaction
			// session.getTransaction().commit();
			return files;

		} finally {
			// TODO: handle finally clause
			session.close();
			factory.close();
		}
	}

	public void updateFileDetails(int fileId, String label, String caption) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();

		try {
			// Start transaction
			session.beginTransaction();

			// Perform operation
			Files file = session.get(Files.class, fileId);
			file.setLabel(label);
			file.setCaption(caption);
			// Commit Transaction
			session.getTransaction().commit();
		} finally {
			// TODO: handle finally clause
			session.close();
			factory.close();
		}
	}

	public Files getFile(int fileId) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();

		try {
			// Start transaction
			session.beginTransaction();

			// Perform operation
			Files file = session.get(Files.class, fileId);
			// Commit Transaction
			session.getTransaction().commit();
			return file;
		} finally {
			// TODO: handle finally clause
			session.close();
			factory.close();
		}
	}

	public void deleteFile(int fileId) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();

		try {
			// Start transaction
			session.beginTransaction();

			// Perform operation
			Files file = session.get(Files.class, fileId);
			// Commit Transaction
			session.delete(file);
			session.getTransaction().commit();
		} finally {
			// TODO: handle finally clause
			session.close();
			factory.close();
		}
	}
}
