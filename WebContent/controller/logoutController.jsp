<%@page pageEncoding="utf-8" import="java.util.*,service.LoginService,util.StringUtils,bean.*"  contentType="text/html;charset=utf-8"%>
<%  
    //注销
    session.removeAttribute("username");
	session.removeAttribute("isAdmin");
	session.removeAttribute("notAdmin");
	session.removeAttribute("DepartmentID");
    session.invalidate();
    String path = request.getContextPath();
    //获取端口
    int port = request.getServerPort();
    String basePath  = null;
    if(port==80){
        basePath = request.getScheme()+"://"+request.getServerName()+path;
    }else{
        basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
    }
    response.sendRedirect(basePath + "/index.jsp");
%>