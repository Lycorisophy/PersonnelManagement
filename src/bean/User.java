package bean;


import annotation.Column;
import annotation.Table;

@Table(tableName = "user")
public class User {
	@Column(type = "int(30)" ,field = "id" ,primaryKey = true ,defaultNull = false)
	private Integer id;        //����������UUID

	@Column(type = "VARCHAR(50)", field = "username",defaultNull = false)
	private String username;  //�û���

	@Column(type = "VARCHAR(50)", field = "password",defaultNull = false)
	private String password;  //����


	@Column(type = "VARCHAR(50)", field = "gender")
	private String gender;      //�Ա� �� Ů ����

	@Column(type = "date", field = "birthday")
	private String birthday;  //��������
	
	@Column(type = "VARCHAR(50)", field = "nation")
	private String nation;  //����
	
	@Column(type = "INT(30)", field = "departmentID")
	private Integer departmentID;  //����ID
	
	@Column(type = "VARCHAR(50)", field = "position")
	private String position;  //ְλ
	
	@Column(type = "VARCHAR(50)", field = "telephone")
	private String telephone; //�绰
	
	@Column(type = "datetime", field = "createTime")
	private String createTime;//����ʱ��

	@Column(type = "VARCHAR(50)", field = "photo")
	private String photo; //ͷ��


	
	@Column(type = "int(10)", field = "isAdmin" ,defaultNull = false)
	private Integer isAdmin; //�ǹ���Ա
	
	@Column(type = "int(10)", field = "notAdmin" ,defaultNull = false)
	private Integer notAdmin; //���ǹ���Ա

	@Column(type = "VARCHAR(50)", field = "notes")
	private String notes; //��ע

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public Integer getDepartmentID() {
		return departmentID;
	}

	public void setDepartmentID(Integer departmentID) {
		this.departmentID = departmentID;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public Integer getIsAdmin() {
		return isAdmin;
	}

	public void setIsAdmin(Integer isAdmin) {
		this.isAdmin = isAdmin;
	}

	public Integer getNotAdmin() {
		return notAdmin;
	}

	public void setNotAdmin(Integer notAdmin) {
		this.notAdmin = notAdmin;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}
	

}
