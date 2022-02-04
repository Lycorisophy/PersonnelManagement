<%@page pageEncoding="utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,util.DataBaseUtils,util.StringUtils,bean.*"  contentType="text/html;charset=utf-8"%>
<%
 String l=null;int m=0;
Connection conn = DataBaseUtils.getConnection();
 ResultSet result= DataBaseUtils.select(conn,"select * from [department]");
 int rowCount=DataBaseUtils.getRowCount("department");
 int k=rowCount*result.getMetaData().getColumnCount();
 result.next();
 for(int j=1;j<=rowCount;j++){
	 for(int i=1;i<=result.getMetaData().getColumnCount();i++){ 		
	m=m+1;
	l=String.valueOf(m);
	request.setAttribute("result"+l,result.getString(i));
	 }
	 result.next();
	 }
 request.setAttribute("count",String.valueOf(k));
DataBaseUtils.closeConnection(conn, null, result);      
%>

