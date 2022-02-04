<%@page pageEncoding="utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,java.sql.SQLException,service.SearchService,util.DataBaseUtils,util.StringUtils,bean.*"  contentType="text/html;charset=utf-8"%>
<%

//获取客户端传递过来参数
String departmentID=request.getParameter("data1");
String departmentName=request.getParameter("data2");
String adminID=request.getParameter("data3");
String notes=request.getParameter("data4");
String tableName=request.getParameter("tname");
int err=0;
try{
String sql="update "+tableName+" set departmentName='"+departmentName+"',adminID='"+adminID+"',notes='"+notes+"' where departmentID="+departmentID;
err=DataBaseUtils.update(sql);
//System.out.println(sql);
out.print(err);  }
catch(SQLException e){out.print(e.toString());}	
%>