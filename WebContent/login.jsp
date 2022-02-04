<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html> 
<head> 
   
        <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/> 
        <title>登陆页面</title> 
         <%@include file="common/taglib.jsp" %>
        <script type='text/javascript' src='${basePath}/js/jquery.js'></script>            
    	<script src="js/login.js"> </script> 
 <script>
 	 
 function check(){
			  	var username = $('#username').val();
		        var password = $('#password').val();
		        $.ajax({
		            type:"post",//请求方式
		            contentType: "application/x-www-form-urlencoded; charset=utf-8",
		            url:"${basePath}/controller/loginController.jsp",//请求地址
		            data:{"username":username,"password":password},//传递给controller的json数据
		            error:function(){//如果出错了，将事件重新绑定
		                alert("登陆出错！");
		            },
		            success:function(data){ //返回成功执行回调函数。
		                if(data == -1){
		                    alert('用户名和密码不能为空！');
		                }else if(data == -2){
		                    alert('用户名不存在！');
		                }else if(data == -3){
		                    alert('用户名或密码错误！');
		                }else{
		                    //登录成功后返回首页
		                    window.location.href = "${basePath}"; 
		                }
		            }

		  });
		  }
function checkID(){
		  	var userID =  $('#username').val();
	        var password = $('#password').val();
	        $.ajax({
	            type:"post",//请求方式
	            contentType: "application/x-www-form-urlencoded; charset=utf-8",
	            url:"${basePath}/controller/loginControllerID.jsp",//请求地址
	            data:{"userID":userID,"password":password},//传递给controller的json数据
	            error:function(){//如果出错了，将事件重新绑定
	                alert("登陆出错！");
	            },
	            success:function(data){ //返回成功执行回调函数。
	                if(data == -1){
	                    alert('ID和密码不能为空！');
	                }else if(data == -2){
	                    alert('ID不存在！');
	                }else if(data == -3){
	                    alert('ID或密码错误！');
	                }else{
	                    //登录成功后返回首页
	                    window.location.href = "${basePath}"; 
	                }
	            }

	  });
	  }
 	 
		</script>
        <link rel="stylesheet" type="text/css" href="${basePath}/css/login.css" />
        <link rel="stylesheet" type="text/css" href="${basePath}/css/base.css" />
        <link rel="stylesheet" type="text/css" href="${basePath}/css/common.css" />
        <style type="text/css">
input:focus{/*文本框获取焦点时的样式*/
border:1px solid white;
outline: none; 
background-color:rgb(150,150,150);  
opacity:0.8;  
}
#loginSelect{
position: absolute; 
margin-left:-100px;
margin-right:auto;
top:10px;
}
</style>     
</head> 
<body onload='createCode()'> 
<%@include file="common/head.jsp" %>
<div   id="content">
<div style="position:relative;">
	<input  class="mess" type="text" id="username" placeholder="请输入用户名或ID" />
	<select id="loginSelect" style="width:100px;">
  	<option value ='0'>用户名登陆</option>
  	<option value ='1'>ID登陆</option>  
</select>
</div><br/>	
	<input type="password"  class="pswdmess" id="password" placeholder="请输入密码"/>
  	<img   id="showpswd" src="images/open.png" alt="密码可见" height="36" width="36" onclick="hideShowPsw()"><br/><br/>
	<input  class="yzmmess" type="text" id="input" placeholder="输入6位验证码" />
    <input  type="button" id="code" onclick="createCode()" style="width:100px"  title='点击更换验证码' /><br/> <br/>    
</div>
<div  align="center">
      <a  class="bluebutton" onclick="login()">登 录</a><br/><br/>          
      <a  class="bluebutton" onclick="register()">注 册</a><br/><br/>
  
    </div>
    
</body>
<%@include file="common/foot.jsp" %>
</html> 