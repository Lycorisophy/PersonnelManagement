<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>招聘信息查询页面</title>
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
#content{opacity:0.6;}
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
	<div style="position:relative;">
	<input  class="mess" type="text" id="emName" placeholder="请输入应聘人员姓名或ID" />
	<select id="loginSelect" style="width:100px;">
  <option value ='0'>姓名查询</option>
  <option value ='1'>ID查询</option>  
</select>
	 <a   class="shortbluebutton" onclick="searchSelect()">查询</a>	 
	
</div><br/>	
	
	 <table border="1" id="result" class="result" style="width: 60%;margin:auto">
<tr>
<td>ID</td>
<td>姓名</td>
<td>性别</td>
<td>出生日期</td>
<td>国家</td>
<td>民族</td>
<td>身份证号码</td>
<td>工作经验</td>
<td>擅长专业</td>
<td>应聘职位</td>
<td>电话号码</td>
<td>照片</td>
<td>备注信息</td>
</tr>
<tr>
<td>${sessionScope.id}</td>
<td>${sessionScope.name} </td>
<td>${sessionScope.gender}  </td>
<td>${sessionScope.birthday} </td>
<td>${sessionScope.nation} </td>
<td>${sessionScope.faction} </td>
<td>${sessionScope.idNumber} </td>
<td>${sessionScope.experience} </td>
<td>${sessionScope.majoy} </td>
<td>${sessionScope.wannaPosition} </td>
<td>${sessionScope.telephone} </td>
<td><img href="${sessionScope.photo}"></img> </td>
<td>${sessionScope.notes} </td>
</tr>
</table>
   </div>
	<div class="page">
		<span>❮</span>
		<a>1</a>
		<a>2</a>
		<a>3</a>
		<a>4</a>
		<a>5</a>
		<a>6</a>
		<a>7</a>
		<a>8</a>		
		<span>❯</span>
	</div>

</div>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</body>
<%@include file="../common/foot.jsp" %>
</html>