<%@page pageEncoding="utf-8" import="java.util.*,service.LoginService,util.StringUtils,bean.*"  contentType="text/html;charset=utf-8"%>
<%

//获取客户端传递过来参数
String username = request.getParameter("username");
String userid = request.getParameter("userid");
//System.out.println(username);
//System.out.println(password);
//如果用户名和密码不为空
if(session.getAttribute("susername")!=null){
session.removeAttribute("sid");
session.removeAttribute("sgender");
session.removeAttribute("sbirthday");
session.removeAttribute("snation");
session.removeAttribute("sdepartmentID");
session.removeAttribute("sposition");
session.removeAttribute("stelephone");
session.removeAttribute("screateTime");
session.removeAttribute("sphoto");
session.removeAttribute("susername");
session.removeAttribute("snotes");
}
if(StringUtils.isEmpty(username) || StringUtils.isEmpty(userid)){
    out.print("-1");//错误码-1 :   用户名和密码不能为空！
}else{
    //初始化LoginService
    LoginService searchService = new LoginService();
    //接下来判断用户名是否存在
    User suser = searchService.getUser(username);
    if(suser == null){
        out.print("-2");//错误码-2 :   用户名不存在！
    }else
        //如果用户名存在，那么验证用户名和密码是否匹配
        if(!username.equals(suser.getUsername()) || !userid.equals(Integer.toString(suser.getId()))){
            out.print("-3");//错误码-3 :   用户名或密码错误！
        }else{
            //如果能到这一步，就说明用户的确存在，而且账号密码也正确。那么就把user放在session中
            out.print("1");
            session.setAttribute("suser", suser);
            session.setAttribute("susername", suser.getUsername());
            session.setAttribute("sid", suser.getId());
            session.setAttribute("sgender", suser.getGender());
            session.setAttribute("sbirthday", suser.getBirthday());
            session.setAttribute("snation", suser.getNation());
            session.setAttribute("userdepartmentID", suser.getDepartmentID());
            session.setAttribute("sposition", suser.getPosition());
            session.setAttribute("stelephone", suser.getTelephone());
            session.setAttribute("screateTime", suser.getCreateTime());
            session.setAttribute("sphoto", suser.getPhoto());
            session.setAttribute("snotes", suser.getNotes());
           
        }
}


    
%>