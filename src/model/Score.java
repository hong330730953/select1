package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="t_score")
public class Score {
	
	private String studentId;  //ѧ��ID
	private int  subjectId;	//����ID
	private int  assessScore;//��ʦ���۷���
	private String comment;//��ʦ����
	private int rejoin;//���ɼ�
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public int getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}
	public int getAssessScore() {
		return assessScore;
	}
	public void setAssessScore(int assessScore) {
		this.assessScore = assessScore;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public int getRejoin() {
		return rejoin;
	}
	public void setRejoin(int rejoin) {
		this.rejoin = rejoin;
	}
	
	
}
