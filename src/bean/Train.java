package bean;


import annotation.Column;
import annotation.Table;

@Table(tableName = "train")
public class Train {
	@Column(type = "int(30)" ,field = "id" ,primaryKey = true ,defaultNull = false)
	private Integer id;        //����������UUID
	
	@Column(type = "int(30)" ,field = "userID"  ,defaultNull = false)
	private Integer userID;        //���
	
	@Column(type = "datetime", field = "startTime")
	private String startTime;//��ʼʱ��
	
	@Column(type = "datetime", field = "endTime")
	private String endTime;//����ʱ��
	
	@Column(type = "VARCHAR(50)", field = "trian")
	private String train;//��ѵ����
	
	@Column(type = "datetime", field = "createTime")
	private String createTime;//����ʱ��
	
	@Column(type = "VARCHAR(50)", field = "notes")
	private String notes; //��ע

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

	public String getTrain() {
		return train;
	}

	public void setTrain(String train) {
		this.train = train;
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