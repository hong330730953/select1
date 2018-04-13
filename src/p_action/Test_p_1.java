package p_action;

import com.opensymphony.xwork2.ActionSupport;

import model.Timetable;
import p_dao.TimeDao;

public class Test_p_1 extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Timetable ta;
	
	
	public Timetable getTa() {
		return ta;
	}


	public void setTa(Timetable ta) {
		this.ta = ta;
	}


	public String doa() {
		ta.setAct("1");
		TimeDao tdao = new TimeDao();
		tdao.setTime(ta);
		System.out.println(ta.getStime());
		System.out.println(ta.getFtime());
		return "ok";
	}
	
	

}
