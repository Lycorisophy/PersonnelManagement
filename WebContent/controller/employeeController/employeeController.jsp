<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,service.SearchService,util.DataBaseUtils,util.StringUtils,bean.*"%>
<%

//获取客户端传递过来参数
String employeeName = request.getParameter("employeeName");
if(session.getAttribute("employeeName")!=null){
	session.removeAttribute("employee");
	session.removeAttribute("employeeId");
	session.removeAttribute("name");
	session.removeAttribute("gender");
	session.removeAttribute("nation");
	session.removeAttribute("faction");
	session.removeAttribute("idNumber");
	session.removeAttribute("experience");
	session.removeAttribute("majoy");
	session.removeAttribute("wannaPositon");
	session.removeAttribute("telephone");
	session.removeAttribute("photo");
	session.removeAttribute("notes");
}
if(StringUtils.isEmpty(employeeName)){
    out.print("-1");//错误码-1 :   不能为空！
}else{
    //初始化LoginService
    SearchService searchService = new SearchService();
    //接下来判断用户名是否存在
    Employee employee = searchService.getEmployee(employeeName);
    if(employee == null){
        out.print("-2");//错误码-2 :   部门不存在！
    }else{
            //如果能到这一步，就说明部门的确存在。那么就把department放在session中
            out.print("1");
            session.setAttribute("employee", employee);
            session.setAttribute("employeeId", employee.getId());
            session.setAttribute("employeeName", employee.getName());
            session.setAttribute("gender", employee.getGender());
            session.setAttribute("nation", employee.getNation());          
            session.setAttribute("faction", employee.getFaction());   
            session.setAttribute("idNumber", employee.getIdNumber());   
            session.setAttribute("experience", employee.getExperience());   
            session.setAttribute("majoy", employee.getMajoy());   
            session.setAttribute("wannaPositon", employee.getWannaPosition());   
            session.setAttribute("telephone", employee.getTelephone());   
            session.setAttribute("photo", employee.getPhoto());   
            session.setAttribute("notes", employee.getNotes());   
        }
}


    
%>