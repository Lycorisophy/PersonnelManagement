package test;

import service.SearchService;
import util.DataBaseUtils;
import bean.Department;


public class TestSearch {
	 public static void main(String[] args) throws Exception  
	    {  //jdbc????SQLServer?????  
		 DataBaseUtils.config("config/jdbc.properties");
		
		 SearchService searchService = new SearchService();
		    //接下来判断用户名是否存在
		    Department department = searchService.getDepartment("财务部");
		    System.out.print(department);
		    
	    }	
}