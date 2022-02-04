<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,service.SearchService,util.DataBaseUtils,util.StringUtils,bean.*"%>
<%

//获取客户端传递过来参数
String report = request.getParameter("report");
String telephone = request.getParameter("telephone");
//System.out.println(username);
//System.out.println(password);
//如果用户名和密码不为空
if(StringUtils.isEmpty(report)){
    out.print("-1");//错误码-1 :   用户名和密码不能为空！
}else{
            out.print("1");
           // System.out.print("insert into report(report,telephone) values('"+report+"','"+telephone+"')");
            DataBaseUtils.insert("insert into report(report,telephone) values('"+report+"','"+telephone+"')");
        }



    
%>