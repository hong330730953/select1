package dao;

import org.hibernate.Query;
import org.hibernate.Session;


import model.Student;
import util.HibernateUtil;

public class StudentDao {

	public Student login(Student student) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Query query=session.createQuery("from Student as s where s.id=:id and s.password=:password");
		query.setString("id", student.getId());
		query.setString("password", student.getPwd());
		Student resultStu=(Student)query.uniqueResult();
		session.getTransaction().commit();
		return resultStu;
	}
	
}
