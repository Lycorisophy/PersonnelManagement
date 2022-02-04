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
 	
 	 function RegnLim(){ 
 		var demoInput = document.getElementById("password").value;
 		var demoInput2 = document.getElementById("password2").value;
 	if(demoInput.length <= 0) { //  
 	    alert("请输入密码！"); //
 	}else if(demoInput != demoInput2 ) { //  
 	    alert("两次密码不同!"); //
 	    demoInput2.value = "";//
 	}else { //
 	   register(); 
 	} 
 	}  // 注册并登陆
 	 function register(){
 		 var username = document.getElementById("username").value;
	        var password = document.getElementById("password").value;
	        var telephone =document.getElementById("telephone").value;
	        var notes= document.getElementById("notes").value;
 	$.ajax({
 	    type:"post",//请求方式
 	    contentType: "application/x-www-form-urlencoded; charset=utf-8",
 	    url:"${basePath}/controller/registerController.jsp",//请求地址
 	    data:{"username":username,"password":password,"telephone":telephone,"notes":notes},//传递给controller的json数据
 	    error:function(){//如果出错了，将事件重新绑定
 	        alert("登陆出错！");
 	    },
 	    success:function(data){ //返回成功执行回调函数。
 	        if(data == -1){
 	            alert("用户名已存在！请选择一个新的用户名！");
 	        }else if(data == -2){ 
 	        alert("用户名不能为空");
 	        }else{
 	            //登录成功后返回首页
 	        	 alert("提交成功!请等待管理员审核!");
 	        	 document.getElementById("password").value = "";
 	        	 document.getElementById("password2").value = "";	        
 	        }
 	    }

 	});}
</script>
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<style type="text/css">   
input:focus{/*文本框获取焦点时的样式*/
border:1px solid white;
outline: none; 
background-color:rgb(150,150,150);  
opacity:0.6;  
}

</style>         
</head> 
<body > 
<div class='head'>
	<%@include file="common/head.jsp" %>
</div>
<div   id="content">
	<input  class="mess" type="text" id="username" placeholder="请输入用户名" /><br/><br/>
	<input type="password"  class="pswdmess" id="password" placeholder="请输入密码"/>
	<img  id="showpswd" src="images/open.png" alt="密码可见" height="36" width="36" onclick="hideShowPsw()"><br/><br/>
	<input type="password"  class="mess" id="password2" placeholder="确认密码"/><br/><br/>	
	<input  class="mess" type="text" id="telephone" placeholder="请输入联系方式" /><br/><br/>
	<input  class="mess" type="text" id="notes" placeholder="请输入留言" />
</div>
<div  align="center">  
	<button  class="bluebutton" onclick="RegnLim()">注  册 </button> 
</div>
</body> 
	<%@include file="common/foot.jsp" %>
</html> 