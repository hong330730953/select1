package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="t_filedownload")
public class Filedownload {
	
	private int id;//����
	private String subjectId;//��ĿID
	private int sendertype;//1-��ʦ�����ļ���0-ѧ�������ļ�
	private String location;//�ļ������ַ
	private String senderId;//������ID
	private int type;//�ļ�����1-���ⱨ�棬2-����
	
	
	@Id
	@GeneratedValue(generator="_native")
	@GenericGenerator(name="_native",strategy="native")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(String subjectId) {
		this.subjectId = subjectId;
	}
	public int getSendertype() {
		return sendertype;
	}
	public void setSendertype(int sendertype) {
		this.sendertype = sendertype;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getSenderId() {
		return senderId;
	}
	public void setSenderId(String senderId) {
		this.senderId = senderId;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
	
}
