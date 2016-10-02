package org.multiple.question;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class App {

	private static SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
	
	public static void addQustionAndAnswer(Question question) {
		
		Session session = sessionFactory.openSession();
		Transaction t = null;
		
		try {
			t = session.beginTransaction();
			
			session.save(question);
			
			t.commit();
		} catch(HibernateException e) {
			if(t != null) {
				t.rollback();
			}
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	public static List listQuestionAndAnswers() {
		Session session = sessionFactory.openSession();
		Transaction t = null;
		List<Question> list = new ArrayList<Question>();
		
		try {
			t = session.beginTransaction();
			
			list = session.createQuery("from Question").list();
			
			t.commit();
		}
		catch(HibernateException e ) {
			if(t !=null) {
				t.rollback();
			}
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
}
