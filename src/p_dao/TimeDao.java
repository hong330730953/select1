package p_dao;


import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

import model.Timetable;
import util.HibernateUtil;

public class TimeDao {
	
	public int setTime(Timetable t) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();
		String sql = "UPDATE t_timetable SET ftime = ?, stime =? where act =?";
		SQLQuery query = session.createSQLQuery(sql);	
		query.setString(0, t.getFtime());
		query.setString(1, t.getStime());
		query.setString(2, t.getAct());
	    int rs =query.executeUpdate();
//		System.out.println(rs);
		tx.commit();
		return rs;
	}

}
