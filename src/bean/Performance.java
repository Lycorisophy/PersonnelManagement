package bean;


import annotation.Column;
import annotation.Table;

@Table(tableName = "performance")
public class Performance {
	@Column(type = "int(30)" ,field = "id" ,primaryKey = true ,defaultNull = false)
	private Integer id;        //主键，采用UUID
	
	@Column(type = "int(30)" ,field = "userID"  ,defaultNull = false)
	private Integer userID;        //外键
	
	@Column(type = "datetime", field = "startTime")
	private String startTime;//开始时间
	
	@Column(type = "datetime", field = "endTime")
	private String endTime;//结束时间
	
	@Column(type = "VARCHAR(50)", field = "performance")
	private String performance;//表现评价
	
	@Column(type = "datetime", field = "createTime")
	private String createTime;//创建时间
	
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

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getPerformance() {
		return performance;
	}

	public void setPerformance(String performance) {
		this.performance = performance;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}
	
	
}