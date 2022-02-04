package bean;


import annotation.Column;
import annotation.Table;

@Table(tableName = "employee")
public class Employee {
	@Column(type = "int(30)" ,field = "id" ,primaryKey = true ,defaultNull = false)
	private Integer id;        //����������UUID
	
	@Column(type = "VARCHAR(50)", field = "name")
	private String name;  //����
	
	@Column(type = "VARCHAR(50)", field = "gender")
	private String gender;  
	
	@Column(type = "date", field = "birthday")
	private String birthday;
	
	@Column(type = "VARCHAR(50)", field = "nation")
	private String nation;  
	
	@Column(type = "VARCHAR(50)", field = "faction")
	private String faction;  //����
	
	@Column(type = "VARCHAR(50)", field = "idNumber")
	private String idNumber;  //���֤����
	
	@Column(type = "VARCHAR(50)", field = "experience")
	private String experience;//����
	
	@Column(type = "VARCHAR(50)", field = "majoy")
	private String majoy;  //רҵ
	
	@Column(type = "VARCHAR(50)", field = "wannaPosition")
	private String wannaPosition;//ӦƸְλ
	
	@Column(type = "VARCHAR(50)", field = "telephone")
	private String telephone; //�绰
	
	@Column(type = "VARCHAR(50)", field = "photo")
	private String photo; //ͷ��
	
	@Column(type = "VARCHAR(50)", field = "notes")
	private String notes; //��ע

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getFaction() {
		return faction;
	}

	public void setFaction(String faction) {
		this.faction = faction;
	}

	public String getIdNumber() {
		return idNumber;
	}

	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getMajoy() {
		return majoy;
	}

	public void setMajoy(String majoy) {
		this.majoy = majoy;
	}

	public String getWannaPosition() {
		return wannaPosition;
	}

	public void setWannaPosition(String wannaPosition) {
		this.wannaPosition = wannaPosition;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}
	
	
}
