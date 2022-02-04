<%@page pageEncoding="utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,java.sql.SQLException,service.SearchService,util.DataBaseUtils,util.StringUtils,bean.*"  contentType="text/html;charset=utf-8"%>
<%

//获取客户端传递过来参数
String id=request.getParameter("data1");
String name=request.getParameter("data2");
String gender=request.getParameter("data3");
String birthday=request.getParameter("data4");
String nation=request.getParameter("data5");
String faction=request.getParameter("data6");
String idNumber=request.getParameter("data7");
String experience=request.getParameter("data8");
String majoy=request.getParameter("data9");
String wannaPosition=request.getParameter("data10");
String telephone=request.getParameter("data11");
String photo=request.getParameter("data12");
String notes=request.getParameter("data13");
String isUser=request.getParameter("data14");
String tableName=request.getParameter("tname");

int err=0;
try{
String sql="update "+tableName+" set name='"+name+"',gender='"+gender+"',birthday='"+birthday+"',nation='"+nation+"',faction='"+faction+"',idNumber='"+idNumber+"',experience='"+experience+"',majoy='"+majoy+"',wannaPosition='"+wannaPosition+"',telephone='"+telephone+"',photo='"+photo+"',notes='"+notes+"',isUser='"+isUser+"' where id="+id;
err=DataBaseUtils.update(sql);
//System.out.println(sql);
out.print(err);  }
catch(SQLException e){out.print(e.toString());}	
%>