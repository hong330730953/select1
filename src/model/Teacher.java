package model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
@Table(name="t_teacher")
public class Teacher {
	
	private  String id;                  //�û���
	private  String name;				//����
	private String pwd;					//����
	private String major;				//רҵ
	private int degreeId;             //ѧλ
	private String gender;			//�Ա�
	private String tel;					//�绰
	private String email;				//����
	private String registerdate;	//ע������	
	private String ip;					//���һ�ε�½IP
	private int disable;			//0-��Ч 1-��Ч
	
	private List<Subject1> subject1List=new ArrayList<Subject1>();
	
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
	public int getDisable() {
		return disable;
	}
	public void setDisable(int disable) {
		this.disable = disable;
	}
	
	public String getMajor() {
		return major;
	}
	
	@OneToMany(mappedBy="teacher")
	@Cascade(CascadeType.DELETE)
	public List<Subject1> getSubject1List() {
		return subject1List;
	}
	public void setSubject1List(List<Subject1> subject1List) {
		this.subject1List = subject1List;
	}
	
	

}
