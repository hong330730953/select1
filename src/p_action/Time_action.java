package p_action;

import com.opensymphony.xwork2.ActionSupport;

import model.Timetable;
import p_dao.TimeDao;

public class Time_action extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String Stime;
	private String Ftime;
	private String result;
	
	public String getResult() {
		return result;
	}


	public void setResult(String result) {
		this.result = result;
	}


	public String getStime() {
		return Stime;
	}


	public void setStime(String stime) {
		Stime = stime;
	}


	public String getFtime() {
		return Ftime;
	}


	public void setFtime(String ftime) {
		Ftime = ftime;
	}


	public String setTime1() {
		Timetable ta = new Timetable();
		ta.setAct("1");
		ta.setStime(Stime);
		ta.setFtime(Ftime);
		System.out.println("nihao"+Stime);
		System.out.println("woshi"+Ftime);
		TimeDao tdao = new TimeDao();
	    int rs = tdao.setTime(ta);
	    if(rs==1) {
	    	this.setResult("设置成功");
	    	return "ok";
	    }else {
	    	this.setResult("设置失败");
	    	return "ok";
	    }
		
	}
	
	public String setTime2() {
		Timetable ta = new Timetable();
		ta.setAct("0");
		ta.setStime(Stime);
		ta.setFtime(Ftime);
		System.out.println("nihao"+Stime);
		System.out.println("woshi"+Ftime);
		TimeDao tdao = new TimeDao();
	    int rs = tdao.setTime(ta);
	    if(rs==1) {
	    	this.setResult("设置成功");
	    	return "ok";
	    }else {
	    	this.setResult("设置失败");
	    	return "ok";
	    }
		
	}
	
	

}
