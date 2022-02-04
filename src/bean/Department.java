package bean;

import annotation.Column;
import annotation.Table;

/**
 * @author lysoy
 */
@Table(tableName = "department")
public class Department {
	@Column(type = "int(30)" ,field = "departmentID" ,primaryKey = true ,defaultNull = false)
	private Integer departmentID;        //主键，采用UUID
	
	@Column(type = "VARCHAR(50)" ,field = "departmentName",defaultNull = false)
	private String departmentName;  
	
	@Column(type = "int(30)" ,field = "adminID")
	private Integer adminID;  //部门主管ID
	
	@Column(type = "VARCHAR(50)", field = "notes")
	private String notes; //备注

	public Integer getDepartmentID() {
		return departmentID;
	}

	public void setDepartmentID(Integer departmentID) {
		this.departmentID = departmentID;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public Integer getAdminID() {
		return adminID;
	}

	public void setAdminID(Integer adminID) {
		this.adminID = adminID;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}
	
	
}
