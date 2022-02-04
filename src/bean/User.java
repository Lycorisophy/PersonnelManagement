package bean;


import annotation.Column;
import annotation.Table;

@Table(tableName = "user")
public class User {
	@Column(type = "int(30)" ,field = "id" ,primaryKey = true ,defaultNull = false)
	private Integer id;        //主键，采用UUID

	@Column(type = "VARCHAR(50)", field = "username",defaultNull = false)
	private String username;  //用户名

	@Column(type = "VARCHAR(50)", field = "password",defaultNull = false)
	private String password;  //密码


	@Column(type = "VARCHAR(50)", field = "gender")
	private String gender;      //性别 男 女 不明

	@Column(type = "date", field = "birthday")
	private String birthday;  //出生日期
	
	@Column(type = "VARCHAR(50)", field = "nation")
	private String nation;  //国家
	
	@Column(type = "INT(30)", field = "departmentID")
	private Integer departmentID;  //部门ID
	
	@Column(type = "VARCHAR(50)", field = "position")
	private String position;  //职位
	
	@Column(type = "VARCHAR(50)", field = "telephone")
	private String telephone; //电话
	
	@Column(type = "datetime", field = "createTime")
	private String createTime;//创建时间

	@Column(type = "VARCHAR(50)", field = "photo")
	private String photo; //头像


	
	@Column(type = "int(10)", field = "isAdmin" ,defaultNull = false)
	private Integer isAdmin; //是管理员
	
	@Column(type = "int(10)", field = "notAdmin" ,defaultNull = false)
	private Integer notAdmin; //不是管理员

	@Column(type = "VARCHAR(50)", field = "notes")
	private String notes; //备注

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
