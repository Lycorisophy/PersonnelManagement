package bean;


import annotation.Column;
import annotation.Table;

@Table(tableName = "wage")
public class Wage {
	@Column(type = "int(30)" ,field = "id" ,primaryKey = true ,defaultNull = false)
	private Integer id;        //主键，采用UUID

	@Column(type = "int(30)", field = "userID",defaultNull = false)
	private Integer userID;  //用户ID

	
	@Column(type = "datetime", field = "createTime")
	private String createTime;//创建时间


	@Column(type = "int(30)", field = "baseWage")
	private Integer baseWage;//基础工资 

	@Column(type = "int(30)", field = "performanceWage")
	private Integer performanceWage;//绩效工资
	
	@Column(type = "int(30)", field = "cutWage")
	private Integer cutWage;//扣除工资
	
	
	@Column(type = "date", field = "payTime")
	private String payTime;//发工资时间
	
	@Column(type = "VARCHAR(50)", field = "notes")
	private String notes; //备注

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUserID() {
		return userID;
	}

	public void setUserID(Integer userID) {
		this.userID = userID;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public Integer getBaseWage() {
		return baseWage;
	}

	public void setBaseWage(Integer baseWage) {
		this.baseWage = baseWage;
	}

	public Integer getPerformanceWage() {
		return performanceWage;
	}

	public void setPerformanceWage(Integer performanceWage) {
		this.performanceWage = performanceWage;
	}

	public Integer getCutWage() {
		return cutWage;
	}

	public void setCutWage(Integer cutWage) {
		this.cutWage = cutWage;
	}



	public String getPayTime() {
		return payTime;
	}

	public void setPayTime(String payTime) {
		this.payTime = payTime;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}



}
