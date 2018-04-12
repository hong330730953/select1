package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="t_subject")
public class Subject {
	
	private int id; 					//��Ŀid��������
	//private String tea1Id;				//��һָ����ʦ
	//private String studentId;			//ѧ��
	//private String tea2Id;               //�ڶ�ָ����ʦ
	private String name;                  //��Ŀ��
	//private int typeId;                 //��Ŀ����
	private int first;                  //0-���ǵ�һ��ָ����1-��һ��ָ��
	private int same;                   //0-����ͬ��1-��ͬ
	private int personcount;              //����ѧ������
	private int personlave;               //��ѡѧ������
	private int grade;                    //��
	//private int sourceId;                  //��Ŀ��Դ
	private String summary;                  //ѡ��������Ҫ
	private String feasibility;              //������
	private String necessary;                 //��Ҫ��
	private int majorId;                     //��Ŀ���ĸ�רҵѧ��ѡ��           (�����⣩
	private  Date  data;                    //�ύ����
	private String comment1;                        //�������������
	private String person1;                   //�������������ǩ����
	private  Date  data1;                     //����������������ǩ��ʱ��
	private String comment2;                  //ѧԺָ��ίԱ�����
	private String person2;                       //ѧԺָ��ίԱ�����ǩ����
	private  Date  data2;                        //ѧԺָ��ίԱ�����ǩ������
	private String ordernum;                     //�鵵���
	private int disable;                          //0-��Ч��1-��Ч��2-�����
	private int status;                          //״̬
	private int othermajor;                        //������ѡרҵ
	
	private Teacher teacher;
	private Type type;
	private Source source;
	private Student student;
	
	
	@Id
	@GeneratedValue(generator="_native")
	@GenericGenerator(name="_native",strategy="native")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getFirst() {
		return first;
	}
	public void setFirst(int first) {
		this.first = first;
	}
	public int getSame() {
		return same;
	}
	public void setSame(int same) {
		this.same = same;
	}
	public int getPersoncount() {
		return personcount;
	}
	public void setPersoncount(int personcount) {
		this.personcount = personcount;
	}
	public int getPersonlave() {
		return personlave;
	}
	public void setPersonlave(int personlave) {
		this.personlave = personlave;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getFeasibility() {
		return feasibility;
	}
	public void setFeasibility(String feasibility) {
		this.feasibility = feasibility;
	}
	public String getNecessary() {
		return necessary;
	}
	public void setNecessary(String necessary) {
		this.necessary = necessary;
	}
	public int getMajorId() {
		return majorId;
	}
	public void setMajorId(int majorId) {
		this.majorId = majorId;
	}
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
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
	public String getOrdernum() {
		return ordernum;
	}
	public void setOrdernum(String ordernum) {
		this.ordernum = ordernum;
	}
	public int getDisable() {
		return disable;
	}
	public void setDisable(int disable) {
		this.disable = disable;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getOthermajor() {
		return othermajor;
	}
	public void setOthermajor(int othermajor) {
		this.othermajor = othermajor;
	}
	
	@OneToOne
    @JoinColumn(name="tea1Id")//ָ����ʦID
	public Teacher getTeacher() {
		return teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	
	@ManyToOne
    @JoinColumn(name="typeId")//��Ŀ����Id
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	
	@OneToOne
    @JoinColumn(name="sourceId")//��Ŀ��ԴId
	public Source getSource() {
		return source;
	}
	public void setSource(Source source) {
		this.source = source;
	}
	
	@OneToOne
    @JoinColumn(name="studentId")//ѧ��Id
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	
	
	
	

}
