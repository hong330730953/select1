package p_dao;


import org.hibernate.Session;
import model.Timetable;
import util.HibernateUtil;

public class TimeDao {
	
	public void setTime(Timetable t) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.merge(t);
		session.getTransaction().commit();
	}

}
