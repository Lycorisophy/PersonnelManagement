package service;



import util.DataBaseUtils;
import bean.Department;
import bean.Employee;
import bean.Performance;
import bean.Train;
import bean.User;
import bean.Wage;


/**
 * 查询的服务类
 */

public class SearchService {
	
    public User getUser(String username){
        String sql = "select * from [user] where username = ?";
        User user = DataBaseUtils.queryForBean(sql, User.class, username);
        if(user == null){
            return null;
        }
        //System.out.println(user);
        return user;
    }
    public User getUser(int id){
        String sql = "select * from [user] where id = ?";
        User user = DataBaseUtils.queryForBean(sql, User.class, id);
        if(user == null){
            return null;
        }
        //System.out.println(user);
        return user;
    }
	 public Department getDepartment(String departmentName){
	        String sql = "select * from [department] where departmentName = ?";
	        Department department = DataBaseUtils.queryForBean(sql, Department.class,departmentName);
	        if(department == null){
	            return null;
	        }
	        //System.out.print("1");
	        return department;
	    }
	  public Department getDepartment(int departmentID){
	        String sql = "select * from [department] where departmentID = ?";
	        Department department = DataBaseUtils.queryForBean(sql, Department.class, departmentID);
	        if(department == null){
	            return null;
	        }
	        //System.out.println(user);
	        return department;
	    }
	 public Employee getEmployee(String name){
	        String sql = "select * from [employee] where name = ?";
	        Employee employee = DataBaseUtils.queryForBean(sql, Employee.class,name);
	        if(employee == null){
	            return null;
	        }
	        //System.out.print("1");
	        return employee;
	    }
	 public Employee getEmployee(int ID){
	        String sql = "select * from [employee] where id = ?";
	        Employee employee = DataBaseUtils.queryForBean(sql, Employee.class, ID);
	        if(employee == null){
	            return null;
	        }
	        //System.out.println(user);
	        return employee;
	    }
	 public Performance getPerformance(int ID){
		  String sql = "select * from [performance] where id = ?";
		  Performance performance = DataBaseUtils.queryForBean(sql, Performance.class, ID);
	        if(performance == null){
	            return null;
	        }
	        //System.out.println(user);
	        return performance;		 
	 }
	 public Train getTrain(int ID){
		  String sql = "select * from [train] where id = ?";
		  Train train = DataBaseUtils.queryForBean(sql, Train.class, ID);
	        if(train == null){
	            return null;
	        }
	        //System.out.println(user);
	        return train;		 
	 }
	 public Wage getWage(int ID){
		 String sql = "select * from [wage] where id = ?";
		  Wage wage = DataBaseUtils.queryForBean(sql, Wage.class, ID);
	        if(wage == null){
	            return null;
	        }
	        //System.out.println(user);
	        return wage;	
	 }
}
