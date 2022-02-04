<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,service.SearchService,util.DataBaseUtils,util.StringUtils,bean.*"%>
<%

//获取客户端传递过来参数
String username = request.getParameter("username");
String password = request.getParameter("password");
String telephone = request.getParameter("telephone");
String notes = request.getParameter("notes");
System.out.print("insert into tempUser(username,password,telephone,notes) values('"+username+"','"+password+"','"+telephone+"','"+notes+"')");
int count=DataBaseUtils.getNum("user", "username='"+username+"'");
System.out.print(count);
//out.print("-1");
//System.out.println(username);
//System.out.println(password);
//如果用户名和密码不为空
if(count == 1){
    out.print("-1");//错误码-1 :   用户名和密码不能为空！
}else{ 
	
	if(StringUtils.isEmpty(username)){
	out.print("-2");}
	else{   DataBaseUtils.insert("insert into tempUser(username,password,telephone,notes) values('"+username+"','"+password+"','"+telephone+"','"+notes+"')");
		out.print("1");
 
        } 

}


    
%>