package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="t_message")
public class Message {
	
	private int id; 					//ID						 
	private String title;               //����
	private String content;				//����
	private String  sender;	           //������ID
	private String receiver;			//������ID
	private Date sendtime;                //����ʱ��
	private int 	senderdisable;		//������ɾ����־
	private int   receivererdisable;	//������ɾ����־
	private int   hasread;					//�Ķ���־1-û����0-�Ѷ�
	private int  parentId;				//��ID�������������ԣ�
	private int  level;						//0-һ����Ϣ��1-רҵ��Ϣ��2-Ժ����Ϣ��3-У����Ϣ
	
	@Id
	@GeneratedValue(generator="_native")
	@GenericGenerator(name="_native",strategy="native")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public Date getSendtime() {
		return sendtime;
	}
	public void setSendtime(Date sendtime) {
		this.sendtime = sendtime;
	}
	public int getSenderdisable() {
		return senderdisable;
	}
	public void setSenderdisable(int senderdisable) {
		this.senderdisable = senderdisable;
	}
	public int getReceivererdisable() {
		return receivererdisable;
	}
	public void setReceivererdisable(int receivererdisable) {
		this.receivererdisable = receivererdisable;
	}
	public int getHasread() {
		return hasread;
	}
	public void setHasread(int hasread) {
		this.hasread = hasread;
	}
	public int getParentId() {
		return parentId;
	}
	public void setParentId(int parentId) {
		this.parentId = parentId;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	
	
}
