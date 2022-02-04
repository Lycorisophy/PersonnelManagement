package test;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;



import util.DataBaseUtils;

public class TestConnect {
	 public static void main(String[] args) throws Exception  
	    {   	
		 Connection conn = DataBaseUtils.getConnection();
		 ResultSet result= DataBaseUtils.select(conn,"select * from [user]");
		 System.out.println();
		 result.next();
		 for(int j=1;j<=result.getRow();j++){
		 for(int i=1;i<=result.getMetaData().getColumnCount();i++){ 		
		System.out.print(result.getString(i) + " ");}
		 result.next();
		 System.out.println();
		 }
		 System.out.println("²éÑ¯Íê±Ï£¡");
		DataBaseUtils.closeConnection(conn, null, result);
		String sql="select count(*) from";
		Connection conn1 = DataBaseUtils.getConnection();
		Statement stmt=conn1.createStatement();
		ResultSet rset = stmt.executeQuery(sql+" "+"department");
		//System.out.println(sql+" "+table);
		int rowCount = 0; 
		if(rset.next()) { 
		  rowCount=rset.getInt(1);
		}
		DataBaseUtils.closeConnection(conn1, null, rset);
		System.out.println(rowCount);
		System.out.println(DataBaseUtils.getRowCount("department"));
	 /**
	  * ??????
	  * @param connection
	  * @param statement
	  * @param rs
	  */ 
	    }
	 
}
