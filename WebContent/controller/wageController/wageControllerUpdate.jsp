<%@page pageEncoding="utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,java.sql.SQLException,service.SearchService,util.DataBaseUtils,util.StringUtils,bean.*"  contentType="text/html;charset=utf-8"%>
<%

//获取客户端传递过来参数
String id=request.getParameter("data1");
String userID=request.getParameter("data2");
String createTime=request.getParameter("data3");
String baseWage=request.getParameter("data4");
String performanceWage=request.getParameter("data5");
String cutWage=request.getParameter("data6");
String payTime=request.getParameter("data7");
String notes=request.getParameter("data8");
String tableName=request.getParameter("tname");
int err=0;
try{
String sql="update "+tableName+" set userID='"+userID+"',baseWage='"+baseWage+"',payTime='"+payTime+"',cutWage='"+cutWage+"' ,performanceWage='"+performanceWage+"' ,notes='"+notes+"' where id="+id;
err=DataBaseUtils.update(sql);
//System.out.println(sql);
out.print(err);  }
catch(SQLException e){out.print(e.toString());}	
%>