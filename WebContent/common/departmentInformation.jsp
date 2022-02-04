<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>部门信息查询页面</title>
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
#content{opacity:0.8;}
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
 </style>
<script type="text/javascript" src="${basePath}/js/jquery.js"></script>
<script type="text/javascript" src="${basePath}/js/jquery.easing.js"></script>
<script type="text/javascript" src="${basePath}/js/base.js"></script>
 <script>
 	
 	  function searchDepart(){
			  var departmentName = document.getElementById("departmentName").value;
			 
		        $.ajax({
		            type:"post",//请求方式
		            contentType: "application/x-www-form-urlencoded; charset=utf-8",
		            url:"${basePath}/controller/departmentController/departmentController.jsp",//请求地址
		            data:{"departmentName":departmentName},//传递给controller的json数据
		            error:function(){//如果出错了，将事件重新绑定
		                alert("查询出错！");
		            },
		            success:function(data){ //返回成功执行回调函数。
		                if(data == -1){
		                   alert('部门名称不能为空！');
		                }else if(data == -2){
		                    alert('部门不存在！');
		                }else{
		                    //成功后显示		                     
		                    
		                    location.reload();
		                }
		            }

		  });
		  }
 	 function searchDepartID(){
		  var departmentID = document.getElementById("departmentName").value;
		 
	        $.ajax({
	            type:"post",//请求方式
	            contentType: "application/x-www-form-urlencoded; charset=utf-8",
	            url:"${basePath}/controller/departmentController/departmentControllerID.jsp",//请求地址
	            data:{"departmentID":departmentID},//传递给controller的json数据
	            error:function(){//如果出错了，将事件重新绑定
	                alert("查询出错！");
	            },
	            success:function(data){ //返回成功执行回调函数。
	                if(data == -1){
	                   alert('部门名称不能为空！');
	                }else if(data == -2){
	                    alert('部门不存在！');
	                }else{
	                    //成功后显示		                     
	                    
	                    location.reload();
	                }
	            }

	  });
	  }
 	function searchSelect()
 	{
 		var selected_val = $('#loginSelect').val();
 		//alert("123");
 		if(selected_val == '0' )			
 		{
 			searchDepart();
 		}else{
 			searchDepartID();
 		}
 	}
		  </script>
</head>
<body>
<div   id="content">
<%@include file="../common/head.jsp" %>
	<div id="content">
	<div style="position:relative;" align="center">
	<input  class="mess" type="text" id="departmentName" placeholder="请输入部门名称或ID" />
	<select id="loginSelect" style="width:100px;">
  <option value ='0'>名称查询</option>
  <option value ='1'>ID查询</option>  
</select>
	 <br /><br /> <a   class="shortbluebutton" onclick="searchSelect()">查询</a>	 	
</div><br/>		
	 <table border="1" id="result" class="result" style="width: 60%;margin:auto">
<tr>
<td>部门ID</td>
<td>部门名称</td>
<td>主管ID</td>
<td>备注信息</td>
</tr>
<tr>
<td id="departmentID">${sessionScope.departmentID}</td>
<td id="departmentName">${sessionScope.departmentName} </td>
<td id="adminID">${sessionScope.adminID}  </td>
<td id="notes">${sessionScope.notes} </td>
</tr>
</table>
   </div>	
</div>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</body>
<%@include file="../common/foot.jsp" %>
</html>