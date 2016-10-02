package learn.hibernate.webTest;


import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class App {

	public static int register(Employee e) {
		int i = 0;
		
		Session session = new Configuration().configure().buildSessionFactory().openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		
		i = (int) session.save(e);
		
		
		t.commit();
		session.close();
		
		return i;
	}
}
