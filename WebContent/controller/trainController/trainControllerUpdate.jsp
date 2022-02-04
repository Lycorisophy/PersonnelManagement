<%@page pageEncoding="utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,java.sql.SQLException,service.SearchService,util.DataBaseUtils,util.StringUtils,bean.*"  contentType="text/html;charset=utf-8"%>
<%

//获取客户端传递过来参数
String id=request.getParameter("data1");
String userID=request.getParameter("data2");
String startTime=request.getParameter("data3");
String endTime=request.getParameter("data4");
String train=request.getParameter("data5");
String createTime=request.getParameter("data6");
String notes=request.getParameter("data7");
String tableName=request.getParameter("tname");
int err=0;
try{
String sql="update "+tableName+" set userID='"+userID+"',startTime='"+startTime+"',endTime='"+endTime+"' ,train='"+train+"' ,notes='"+notes+"' where id="+id;
err=DataBaseUtils.update(sql);
//System.out.println(sql);
out.print(err);  }
catch(SQLException e){out.print(e.toString());}	
%>