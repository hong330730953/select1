package action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import dao.StudentDao;
import model.Student;

public class StudentAction extends ActionSupport implements ServletRequestAware{
	private static final long serialVersionUID = 1L;
	private HttpServletRequest request;
	private StudentDao studentDao = new StudentDao();
	
	private Student student;
	private String error;
	
	private String mainPage;
	
	
	
	
	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	public String getMainPage() {
		return mainPage;
	}

	public void setMainPage(String mainPage) {
		this.mainPage = mainPage;
	}
	
	public String login()throws Exception{
		HttpSession session=request.getSession();
		Student currentUser=studentDao.login(student);
		if(currentUser==null){
			error="×¼¿¼Ö¤ºÅ»òÃÜÂë´íÎó";
			return ERROR;
		}else{
			session.setAttribute("currentUser", currentUser);
			return SUCCESS;
		}
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request=request;
	}
	
}
