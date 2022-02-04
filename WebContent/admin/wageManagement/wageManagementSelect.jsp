<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,util.DataBaseUtils,util.StringUtils,bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>信息查询页面</title>
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
			  var ID = document.getElementById("userid").value;
			 //alert(ID);
		        $.ajax({
		            type:"post",//请求方式
		            contentType: "application/x-www-form-urlencoded; charset=utf-8",
		            url:"${basePath}/controller/wageController/wageController.jsp",//请求地址
		            data:{"ID":ID},//传递给controller的json数据
		            error:function(){//如果出错了，将事件重新绑定
		                alert("查询出错！");
		            },
		            success:function(data){ //返回成功执行回调函数。
		                if(data == -1){
		                   alert('ID不能为空！');
		                }else if(data == -2){
		                    alert('查无此信息！');
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
 

		  </script>
</head>
<body>
<div   id="content">
<%@include file="../../common/head.jsp" %>
	<div id="content">
	<div style="position:relative;" align="center">
	<input  class="mess" type="text" id="userid" placeholder="请输入薪金ID编号" />
	 <br /><br /><button   class="shortbluebutton" onclick="search()">查询</button>	 
	
</div><br/>	
	
<table border="1" id="resulttable" class="result" style="width: 60%;margin:auto">
<tr>
<td>ID编号</td>
<td>员工ID</td>
<td>员工姓名</td>
<td>基础工资</td>
<td>绩效工资</td>
<td>扣除工资</td>
<td>实发工资</td>
<td>发放时间</td>
<td>备注信息</td>
</tr>
<tr>
<td>${sessionScope.wageId}</td>
<td>${sessionScope.suserId} </td>
<td>${sessionScope.susername}  </td>
<td>${sessionScope.baseWage}</td>
<td>${sessionScope.performanceWage}</td>
<td>${sessionScope.cutWage}</td>
<td>${sessionScope.realWage} </td>
<td>${sessionScope.payTime} </td>
<td>${sessionScope.wnotes} </td>
</tr>
</table>
	 <center><input type="button"  class="shortbluebutton" onclick="javascript:createTable('resulttable');" value="打印工资单" /></center>
	 <script>	 function createTable(tableid){
	 		var tableToPrint = document.getElementById(tableid);//将要被打印的表格
	        var newWin= window.open("");//新打开一个空窗口
	        newWin.document.write(tableToPrint.outerHTML);//将表格添加进新的窗口
	        newWin.document.close();//在IE浏览器中使用必须添加这一句
	        newWin.focus();//在IE浏览器中使用必须添加这一句
	        newWin.print();//打印
	        newWin.close();//关闭窗口
	 	 }</script>
   </div>
</div>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</body>
<%@include file="../../common/foot.jsp" %>
</html>