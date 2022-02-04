<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,service.SearchService,util.DataBaseUtils,util.StringUtils,bean.*"%>
<%
session.removeAttribute("theName");
String departmentID = request.getParameter("departmentID");
String adminID = request.getParameter("adminID");
int count=DataBaseUtils.getNum("user", "departmentID = "+departmentID);
String adminName=DataBaseUtils.getName("user","username","id ="+adminID);
//Connection conn = DataBaseUtils.getConnection();
//ResultSet result= DataBaseUtils.select(conn,"select username from [user] where id=${sessionScope.adminID}");
//String adminName=result.getString(1);
//DataBaseUtils.closeConnection(conn, null, result); 
session.setAttribute("count", Integer.toString(count));
session.setAttribute("theName", adminName);
%>