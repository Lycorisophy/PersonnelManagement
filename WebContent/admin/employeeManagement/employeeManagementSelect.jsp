<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,util.DataBaseUtils,util.StringUtils,bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>招聘信息查询页面</title>
<%@include file="../../common/taglib.jsp" %>
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
  td{color:blue;}
 </style>
<script type="text/javascript" src="${basePath}/js/jquery.js"></script>
<script type="text/javascript" src="${basePath}/js/jquery.easing.js"></script>
<script type="text/javascript" src="${basePath}/js/base.js"></script>
 <script>
 	
 	  function search(){
			  var employeeName = document.getElementById("employeeName").value;
			 
		        $.ajax({
		            type:"post",//请求方式
		            contentType: "application/x-www-form-urlencoded; charset=utf-8",
		            url:"${basePath}/controller/employeeController/employeeController.jsp",//请求地址
		            data:{"employeeName":employeeName},//传递给controller的json数据
		            error:function(){//如果出错了，将事件重新绑定
		                alert("查询出错！");
		            },
		            success:function(data){ //返回成功执行回调函数。
		                if(data == -1){
		                   alert('名称不能为空！');
		                }else if(data == -2){
		                    alert('查无此人！');
		                }else{
		                    //成功后显示		                     		                  
		                	location.reload();	 
		                	//departmentSelect();
		                }
		            }

		  });
		  }
 	
 	 function searchID(){
		  var employeeId = document.getElementById("employeeName").value;
		 
	        $.ajax({
	            type:"post",//请求方式
	            contentType: "application/x-www-form-urlencoded; charset=utf-8",
	            url:"${basePath}/controller/employeeController/employeeControllerID.jsp",//请求地址
	            data:{"employeeId":employeeId},//传递给controller的json数据
	            error:function(){//如果出错了，将事件重新绑定
	                alert("查询出错！");
	            },
	            success:function(data){ //返回成功执行回调函数。
	                if(data == -1){
	                   alert('ID不能为空！');
	                }else if(data == -2){
	                    alert('查无此人！');
	                }else{
	                    //成功后显示		                     
	                   location.reload();
	                	 //departmentSelect();
	                	
	                }
	            }

	  });
	  }
 function departmentSelect(){

 		 var departmentID="<%=session.getAttribute("departmentID")%>"; 
 		var adminID="<%=session.getAttribute("adminID")%>"; 
 		 $.ajax({
	            type:"post",//请求方式
	            contentType: "application/x-www-form-urlencoded; charset=utf-8",
	            url:"${basePath}/controller/departmentController/departmentControllerSelect.jsp",//请求地址
	            data:{"departmentID":departmentID,"adminID":adminID},//传递给controller的json数据
	            error:function(){//如果出错了，将事件重新绑定
	                alert("查询出错！");
	            },
	            success:function(){
	            	location.reload();	 	            
	            	}
 		  });
 }
 	 
 	function searchSelect()
 	{
 		var selected_val = $('#loginSelect').val();
 		//alert("123");
 		if(selected_val == '0' )			
 		{
 			search();
 		}else{
 			searchID();
 		}
 	}
		  </script>
</head>
<body>
<div   id="content">
<%@include file="../../common/head.jsp" %>
	<div id="content">
	<div style="position:relative;" align="center">
	<input  class="mess" type="text" id="employeeName" placeholder="请输入查询人员姓名或ID" />
	<select id="loginSelect" style="width:100px;">
  <option value ='0'>姓名查询</option>
  <option value ='1'>ID查询</option>  
</select>
	 <br /><br /><a   class="shortbluebutton" onclick="searchSelect()">查询</a>	 
	
</div><br/>	
	
	 <table border="1" id="result" class="result" style="width: 60%;margin:auto">
<tr>
<td>ID</td>
<td>姓名</td>
<td>性别</td>
<td>国籍</td>
<td>民族</td>
<td>身份证号码</td>
</tr>
<tr>
<td>${sessionScope.employeeId}</td>
<td>${sessionScope.employeeName} </td>
<td>${sessionScope.gender}  </td>
<td>${sessionScope.nation}</td>
<td>${sessionScope.faction}</td>
<td>${sessionScope.idNumber} </td>
</tr>
<tr>
<td>工作经验</td>
<td>专业</td>
<td>期望职位</td>
<td>联系电话</td>
<td>照片</td>
<td>备注信息</td>
</tr>
<tr>
<td>${sessionScope.experience}</td>
<td>${sessionScope.majoy} </td>
<td>${sessionScope.wannaPositon}  </td>
<td>${sessionScope.telephone}</td>
<td><a href="${basePath}/<%=session.getAttribute("photo")%>">点击查看</a></td>
<td>${sessionScope.notes} </td>
</tr>
</table>
   </div>
</div>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</body>
<%@include file="../../common/foot.jsp" %>
</html>