<%@page pageEncoding="utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,java.sql.SQLException,service.SearchService,util.DataBaseUtils,util.StringUtils,bean.*"  contentType="text/html;charset=utf-8"%>
<%

//获取客户端传递过来参数
int id= Integer.parseInt(request.getParameter("clumnValue"));
String tableName=request.getParameter("tableName");
int err=0;
try{
String sql="update "+tableName+" set isUser='1' where id="+id;	
err=DataBaseUtils.update(sql);
//out.print(sql);
out.print(err);  
}
catch(SQLException e){out.print(e.toString());}	
%>