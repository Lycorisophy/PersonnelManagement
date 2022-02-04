<%@page pageEncoding="utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,java.sql.SQLException,service.SearchService,util.DataBaseUtils,util.StringUtils,bean.*"  contentType="text/html;charset=utf-8"%>
<%

//获取客户端传递过来参数
int count= Integer.parseInt(request.getParameter("clumnValue"));
int countcut=count-1;
String tableName=request.getParameter("tableName");
String sql1="select top ("+count+") username from "+tableName+" where id not in (select top ("+countcut+") id from tempUser)";
String sql2="select top ("+count+") password from " +tableName+ " where id not in (select top ("+countcut+") id from tempUser)";
String sql3="select top ("+count+") telephone from " +tableName+ " where id not in (select top ("+countcut+") id from tempUser)";
int err=0;
try{
String username=DataBaseUtils.select(sql1);
String password=DataBaseUtils.select(sql2);
String telephone=DataBaseUtils.select(sql3);
String sql="insert into [user](username,password,telephone) values('"+username+"','"+password+"','"+telephone+"')";	
err=DataBaseUtils.update(sql);
//out.print(sql);
out.print(err);  
}
catch(SQLException e){out.print(e.toString());}	
%>