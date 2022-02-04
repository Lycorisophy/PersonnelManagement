<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>职工信息查询页面</title>
<%@include file="../common/taglib.jsp" %>
<link rel="stylesheet" type="text/css" href="${basePath}/css/base.css" />
<link rel="stylesheet" type="text/css" href="${basePath}/css/common.css" />
 <style type="text/css">
body{background:#B0E2FF;
font-size:12px;
color:#555;
font-family:Tahoma,"微软雅黑", Geneva, sans-serif;
}
h1{font-size:48px;}
#content{opacity:0.9;}
.page{            
text-align: center;            
margin-top: 50px;        
}
.page a,.page span{            
text-decoration: none;            
border:1px solid #f9d52b;            
padding: 5px 7px;            
color: #767675;            
cursor: pointer;        
}
.page a:hover,.page span:hover{            
color: red;  
}
   table, th, td
  {
  border: 1px solid blue;
   text-align:left;
   font-size:18px;
  }
 th
  {
  background-color:green;
  color:white;
  }
td{color:blue;}
 </style>
<script type="text/javascript" src="${basePath}/js/jquery.js"></script>
<script type="text/javascript" src="${basePath}/js/jquery.easing.js"></script>
<script type="text/javascript" src="${basePath}/js/base.js"></script>
 <script>
 	
 	  function searchUser(){
 		 var username = $('#username').val();
	        var userid = $('#userid').val();
	        $.ajax({
	            type:"post",//请求方式
	            contentType: "application/x-www-form-urlencoded; charset=utf-8",
	            url:"${basePath}/controller/userController/userController.jsp",//请求地址
	            data:{"username":username,"userid":userid},//传递给controller的json数据
	            error:function(){//如果出错了，将事件重新绑定
	                alert("查询出错！");
	            },
	            success:function(data){ //返回成功执行回调函数。
	                if(data == -1){
	                    alert('用户名和ID不能为空！');
	                }else if(data == -2){
	                    alert('用户名不存在！');
	                }else if(data == -3){
	                    alert('用户名或ID错误！');
	                }else{
	                   
	                	 location.reload(); 
	                }
	            }

	  });
		  }
 	
		  </script>
</head>
<body>
<div   id="content">
<%@include file="../common/head.jsp" %>

	<div id="content">
	<div align="center" style="position:relative;">
	<br /><input  class="mess" type="text" id="username" placeholder="请输入职工姓名" /><br />
	<br /><input  class="mess" type="text" id="userid" placeholder="请输入职工ID" /><br />
	 <button   class="shortbluebutton" onclick="searchUser()">查询</button>	 
	
</div><br/>	
	
	 <table border="1" id="result" class="result" style="width: 60%;margin:auto">
<tr>
<td>ID</td>
<td>姓名</td>
<td>性别</td>
<td>出生日期</td>
<td>国家</td>
<td>部门ID</td>
<td>职位</td>
<td>电话号码</td>
<td>创建日期</td>
<td>照片</td>
<td>备注信息</td>
</tr>
<tr>
<td>${sessionScope.sid}</td>
<td>${sessionScope.susername} </td>
<td>${sessionScope.sgender}  </td>
<td>${sessionScope.sbirthday} </td>
<td>${sessionScope.snation} </td>
<td>${sessionScope.userdepartmentID} </td>
<td>${sessionScope.sposition} </td>
<td>${sessionScope.stelephone} </td>
<td>${sessionScope.screateTime} </td>
<td><img href="${sessionScope.sphoto}"></img> </td>
<td>${sessionScope.snotes} </td>
</tr>
</table>
   </div>
	
 
</div>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</body>
<%@include file="../common/foot.jsp" %>
</html>