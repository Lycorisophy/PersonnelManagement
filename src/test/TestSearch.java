package test;

import service.SearchService;
import util.DataBaseUtils;
import bean.Department;


public class TestSearch {
	 public static void main(String[] args) throws Exception  
	    {  //jdbc????SQLServer?????  
		 DataBaseUtils.config("config/jdbc.properties");
		
		 SearchService searchService = new SearchService();
		    //�������ж��û����Ƿ����
		    Department department = searchService.getDepartment("����");
		    System.out.print(department);
		    
	    }	
}