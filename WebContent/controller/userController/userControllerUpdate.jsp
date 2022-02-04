<%@page pageEncoding="utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,java.sql.SQLException,service.SearchService,util.DataBaseUtils,util.StringUtils,bean.*"  contentType="text/html;charset=utf-8"%>
<%

//获取客户端传递过来参数
String id=request.getParameter("data1");
String username=request.getParameter("data2");
String password=request.getParameter("data3");
String gender=request.getParameter("data4");
String birthday=request.getParameter("data5");
String nation=request.getParameter("data6");
String departmentID=request.getParameter("data7");
String position=request.getParameter("data8");
String telephone=request.getParameter("data9");
String createTime=request.getParameter("data10");
String photo=request.getParameter("data11");
String isAdmin=request.getParameter("data12");
String notAdmin=request.getParameter("data13");
String notes=request.getParameter("data14");
String tableName=request.getParameter("tname");

int err=0;
try{
String sql="update "+tableName+" set username='"+username+"',gender='"+gender+"',password='"+password+"',nation='"+nation+"',birthday='"+birthday+"',departmentID='"+departmentID+"',position='"+position+"',isAdmin='"+isAdmin+"',notAdmin='"+notAdmin+"',telephone='"+telephone+"',photo='"+photo+"',notes='"+notes+"' where id="+id;
err=DataBaseUtils.update(sql);
//System.out.println(sql);
out.print(err);  }
catch(SQLException e){out.print(e.toString());}	
%>