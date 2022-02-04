<%@page pageEncoding="utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,java.sql.SQLException,service.SearchService,util.DataBaseUtils,util.StringUtils,bean.*"  contentType="text/html;charset=utf-8"%>
<%

//获取客户端传递过来参数
String tableName=request.getParameter("tableName");
String clumnName = request.getParameter("clumnName");
int clumnValue=Integer.parseInt(request.getParameter("clumnValue"));
System.out.println(tableName);
System.out.println(clumnName);
System.out.println(clumnValue);
int err=0;
try{
err=DataBaseUtils.delete(tableName, clumnName, clumnValue);
out.print(err);  }
catch(SQLException e){out.print(e.toString());}	
%>