package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;
@Entity
@Table(name="t_team")
public class Team {
	
	private int defId;//���ID
	private String studentId;//�����ԱID
	public int getDefId() {
		return defId;
	}
	public void setDefId(int defId) {
		this.defId = defId;
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	
}
