<%@page pageEncoding="utf-8"  contentType="text/html;charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<style type="text/css">
body{background-image:url(${basePath}/images/timg.jpg);}
.copyright {  
    clear: both;  
    text-align: center;  
    color: gray;  
  
    border-top: 2px solid #CCC;  
    margin-top: 50px;  
    padding: 20px 0;  
}  
td{color:black;}
  input::-webkit-input-placeholder, textarea::-webkit-input-placeholder {   
 /* WebKit browsers */   
color: blue;   
}   
input:-moz-placeholder, textarea:-moz-placeholder {   
/* Mozilla Firefox 4 to 18 */   
color:   blue;   
}   
input::-moz-placeholder, textarea::-moz-placeholder {   
 /* Mozilla Firefox 19+ */   
color:   blue;   
}   
input:-ms-input-placeholder, textarea:-ms-input-placeholder {   
 /* Internet Explorer 10+ */   
color:   blue;   
}
</style>
<div class='head'>
  <div>
    <p style="float:left"><span class="logo">企业人事管理系统</span>
    <span>&nbsp;&nbsp;&nbsp;</span>
    <span><a class="line" style="color:#FFF" href="${basePath}/index.jsp">&nbsp;首&nbsp;&nbsp;页&nbsp;</a></span>
     <span>&nbsp;&nbsp;&nbsp;</span>
    <span><a class="line" style="color:#FFF" href="https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=0&rsv_idx=1&tn=baidu&wd=%E4%BC%81%E4%B8%9A%E4%BA%BA%E4%BA%8B%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F">关于我们</a></span>
     <span>&nbsp;&nbsp;&nbsp;</span>
    <span><a class="line" style="color:#FFF" href="${basePath}/index.jsp">联系我们</a></span>
     <span>&nbsp;&nbsp;&nbsp;</span>
    <span><a class="line" style="color:#FFF" href="${basePath}/index.jsp">加入我们</a></span>
  
</div>
<div style="float:right">
 <c:choose>
 <c:when  test="${empty sessionScope.username}">
    <span ><a style="color:#FFF" href="${basePath}/login.jsp">登陆</a></span>
      <span  style="color:#FFF"> | </span>
      <span ><a style="color:#FFF" href="${basePath}/register.jsp">注册</a></span>
      <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
       </c:when>
        <c:otherwise>
            <span><a style="color:#FFF">欢迎您，${sessionScope.username}</a></span>  
            <span style="color:#FFF"> | </span>
            <span><a style="color:#FFF" href="${basePath}/controller/logoutController.jsp">登出</a></span>
            <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>  
        </c:otherwise>
       </c:choose> 
  </div>
</div>
<br />
