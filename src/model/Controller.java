package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="t_controller")
public class Controller {
	
	private  String id;                //�û���
	private  String name;				//����
	private String pwd;					//����
	private  int  teachtitleId;       //ְ��ID
	private int officeId;                //�칫��ID
	private String major;				//רҵ
	private int degreeId;             //ѧλ
	private String gender;			//�Ա�
	private String tel;					//�绰
	private String email;				//����
	private String registerdate;	//ע������	
	private String ip;					//���һ�ε�½IP
	private int role;					//����Ա�ּ�0-רҵ����Ա��1-Ժ������Ա��2-У������Ա��3-��������Ա
	private int disable;			//0-��Ч 1-��Ч
	
	@Id
	@Column(name="id",unique=true,nullable=false,length=40)
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getTeachtitleId() {
		return teachtitleId;
	}
	public void setTeachtitleId(int teachtitleId) {
		this.teachtitleId = teachtitleId;
	}
	public int getOfficeId() {
		return officeId;
	}
	public void setOfficeId(int officeId) {
		this.officeId = officeId;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public int getDegreeId() {
		return degreeId;
	}
	public void setDegreeId(int degreeId) {
		this.degreeId = degreeId;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRegisterdate() {
		return registerdate;
	}
	public void setRegisterdate(String registerdate) {
		this.registerdate = registerdate;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	public int getDisable() {
		return disable;
	}
	public void setDisable(int disable) {
		this.disable = disable;
	}

	
}
