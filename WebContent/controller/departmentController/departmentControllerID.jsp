<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,service.SearchService,util.DataBaseUtils,util.StringUtils,bean.*"%>
<%

//获取客户端传递过来参数
String departmentID = request.getParameter("departmentID");
int ID=Integer.parseInt(departmentID);
//String departmentName="财务部";
//如果用户名和密码不为空
if(session.getAttribute("departmentID")!=null){
	session.removeAttribute("department");
	session.removeAttribute("departmentID");
	session.removeAttribute("departmentName");
	session.removeAttribute("adminID");
	session.removeAttribute("notes");
}
if(StringUtils.isEmpty(ID)){
    out.print("-1");//错误码-1 :   不能为空！
}else{
    //初始化LoginService
    SearchService searchService = new SearchService();
    //接下来判断用户名是否存在
    Department department = searchService.getDepartment(ID);
    if(department == null){
        out.print("-2");//错误码-2 :   部门不存在！
    }else{
            //如果能到这一步，就说明部门的确存在。那么就把department放在session中
            out.print("1");
            session.setAttribute("department", department);
            session.setAttribute("departmentID", department.getDepartmentID());
            session.setAttribute("departmentName", department.getDepartmentName());
            session.setAttribute("adminID", department.getAdminID());
            session.setAttribute("notes", department.getNotes());
            String sdepartmentID =String.valueOf(session.getAttribute("departmentID"));
            String sadminID = String.valueOf(session.getAttribute("adminID"));
            int count=DataBaseUtils.getNum("user", "departmentID = "+sdepartmentID);
            String sadminName=DataBaseUtils.getName("user","username","id ="+sadminID);
            session.setAttribute("count", Integer.toString(count));
            session.setAttribute("theName", sadminName);
        }
}


    
%>