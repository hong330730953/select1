package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="t_openreport")
public class Openreport {
	
	private String subjectId;//��ĿID
	private String studentId;//ѧ��ID
	private String comment1;// �������������
	private String person1;//�������������ǩ����
	private  Date  data1;   //����������������ǩ��ʱ��
	private String comment2;  //ѧԺָ��ίԱ�����
	private String person2;     //ѧԺָ��ίԱ�����ǩ����
	private  Date  data2;    //ѧԺָ��ίԱ�����ǩ������
	private int disable;        //0-��Ч��1-��Ч��2-�����
	public String getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(String subjectId) {
		this.subjectId = subjectId;
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getComment1() {
		return comment1;
	}
	public void setComment1(String comment1) {
		this.comment1 = comment1;
	}
	public String getPerson1() {
		return person1;
	}
	public void setPerson1(String person1) {
		this.person1 = person1;
	}
	public Date getData1() {
		return data1;
	}
	public void setData1(Date data1) {
		this.data1 = data1;
	}
	public String getComment2() {
		return comment2;
	}
	public void setComment2(String comment2) {
		this.comment2 = comment2;
	}
	public String getPerson2() {
		return person2;
	}
	public void setPerson2(String person2) {
		this.person2 = person2;
	}
	public Date getData2() {
		return data2;
	}
	public void setData2(Date data2) {
		this.data2 = data2;
	}
	public int getDisable() {
		return disable;
	}
	public void setDisable(int disable) {
		this.disable = disable;
	}
	
	
	
	
}
