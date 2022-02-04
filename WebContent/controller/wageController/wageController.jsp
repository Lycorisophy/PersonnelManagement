<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,service.SearchService,util.DataBaseUtils,util.StringUtils,bean.*"%>
<%

//获取客户端传递过来参数
String Id = request.getParameter("ID");
System.out.print(Id);
int ID=Integer.parseInt(Id);
if(session.getAttribute("wageId")!=null){
	session.removeAttribute("wageId");
	session.removeAttribute("susername");
	session.removeAttribute("suserId");
	session.removeAttribute("baseWage");
	session.removeAttribute("performanceWage");
	session.removeAttribute("cutWage");
	session.removeAttribute("realWage");
	session.removeAttribute("payTime");
	session.removeAttribute("wnotes");	
}
if(StringUtils.isEmpty(ID)){
    out.print("-1");//错误码-1 :   不能为空！
}else{
    //初始化LoginService
    SearchService searchService = new SearchService();
    //接下来判断用户名是否存在
    Wage wage = searchService.getWage(ID);
    if(wage == null){
        out.print("-2");//错误码-2 :   部门不存在！
    }else{
            //如果能到这一步，就说明部门的确存在。那么就把department放在session中
            out.print("1");
          
            session.setAttribute("wage",wage);
            session.setAttribute("wageId",wage.getId());
            session.setAttribute("suserId",wage.getUserID()); 
            session.setAttribute("baseWage",String.valueOf(wage.getBaseWage()));
            session.setAttribute("performanceWage",String.valueOf(wage.getPerformanceWage()));
            session.setAttribute("cutWage",String.valueOf(wage.getCutWage()));          
            session.setAttribute("payTime",wage.getPayTime());
            session.setAttribute("wnotes",wage.getNotes());
            /* System.out.println(session.getAttribute("suserId"));
            System.out.println(session.getAttribute("endTime"));
            System.out.println(session.getAttribute("pnotes"));
            System.out.println(session.getAttribute("startTime")); */
            String suserID = String.valueOf(session.getAttribute("suserId"));
            String susername=DataBaseUtils.getName("user","username","id ="+suserID);
        session.setAttribute("susername", susername);
           int realWage=wage.getBaseWage()+wage.getPerformanceWage()-wage.getCutWage();
            session.setAttribute("realWage",String.valueOf(realWage));   
        }
}


    
%>