package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="t_prelection")
public class Prelection {
	
	private int id; 														 
	//private String subjectId;               //��ĿID
	//private String studentId;				//ѧ��ID
	private int choice;						//�ڼ�ѡ��
	private Date selectdate;                //��������
	private int disable;				//0-���ޣ�1-��Ч
	
	private Student student;
	private Subject subject;
	
	@Id
	@GeneratedValue(generator="_native")
	@GenericGenerator(name="_native",strategy="native")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getChoice() {
		return choice;
	}
	public void setChoice(int choice) {
		this.choice = choice;
	}
	public Date getSelectdate() {
		return selectdate;
	}
	public void setSelectdate(Date selectdate) {
		this.selectdate = selectdate;
	}
	public int getDisable() {
		return disable;
	}
	public void setDisable(int disable) {
		this.disable = disable;
	}
	
	@ManyToOne
    @JoinColumn(name="studentId")//ѧ��ID
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	
	@ManyToOne
    @JoinColumn(name="subjectId")//��ĿID
	public Subject getSubject() {
		return subject;
	}
	public void setSubject(Subject subject) {
		this.subject = subject;
	}
	
	
	
}
