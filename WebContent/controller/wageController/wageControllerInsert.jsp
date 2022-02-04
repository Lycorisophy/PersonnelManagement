<%@page pageEncoding="utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,java.sql.SQLException,service.SearchService,util.DataBaseUtils,util.StringUtils,bean.*"  contentType="text/html;charset=utf-8"%>
<%

//获取客户端传递过来参数
String tableName=request.getParameter("tname");
String data2=request.getParameter("data2");
String data3=request.getParameter("data3");
String data4=request.getParameter("data4");
String data5=request.getParameter("data5");
String data6=request.getParameter("data6");
String data7=request.getParameter("data7");
String data8=request.getParameter("data8");
int err=0;
try{
String sql="([userID],[baseWage],[performanceWage],[cutWage],[payTime],[notes]) values('"+data2+"','"+data4+"','"+data5+"','"+data6+"','"+data7+"','"+data8+"')";
err=DataBaseUtils.insert(sql,tableName);
//System.out.println(sql);
out.print(err);  }
catch(SQLException e){out.print(e.toString());}	
%>