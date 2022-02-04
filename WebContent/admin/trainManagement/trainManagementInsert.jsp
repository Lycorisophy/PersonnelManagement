<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,util.DataBaseUtils,util.StringUtils,bean.*"%>
<!DOCTYPE html>
<html> 
<head>  
<meta http-equiv='Content-Type' content='text/html; charset=utf-8'/> 
<title>信息添加页面</title> 
<script>var tname="train";</script>
<%String tname="train";
 String l=null;int m=0;
Connection conn = DataBaseUtils.getConnection();
 ResultSet result= DataBaseUtils.select(conn,"select * from "+tname);
 if (result!=null){
 result.next();
 for(int h=1;h<=result.getMetaData().getColumnCount();h++)
 {request.setAttribute("ColumnName"+h,result.getMetaData().getColumnName(h));}
 request.setAttribute("countCol",String.valueOf(result.getMetaData().getColumnCount()));
 }
DataBaseUtils.closeConnection(conn, null, result);      
%>
<%@include file="../../common/taglib.jsp" %>
<script type='text/javascript' src='${basePath}/js/jquery.js'></script>            
 <script>
 function insert(){		
		var data2 = $('#cl2').val();
		var data3 = $('#cl3').val();
		var data4 = $('#cl4').val(); 
		var data5 = $('#cl5').val();
		var data6 = $('#cl6').val();
		var data7 = $('#cl7').val(); 	
		//alert(data1);
		//alert(data2);
	    $.ajax({
	        type:"post",//请求方式
	        contentType: "application/x-www-form-urlencoded; charset=utf-8",
	        url:"${basePath}/controller/trainController/trainControllerInsert.jsp",//请求地址
	        data:{"tname":tname,"data2":data2,"data3":data3,"data4":data4,"data5":data5,"data6":data6,"data7":data7},//传递给controller的json数据
	        error:function(){//如果出错了，将事件重新绑定
	            alert("添加出错！");
	        },
	        success:function(data){ //返回成功执行回调函数。
	            if(data == 1){
	           	 //成功后显示		                     
	                alert('添加成功');
	                location.reload();
	            }else if(data == -1){
	                alert('错误代码-1');
	            }else{
	           	 alert(data);
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
opacity:0.6;  
}

</style>         
</head> 
<body >
<%
int countCol=0;
int t=0;
String ColumnName=null;
countCol=Integer.parseInt((String)request.getAttribute("countCol"));
%> 
<div class='head'>
	<%@include file="../../common/head.jsp" %>
</div>
<div   id="content">
<c:choose>
 <c:when  test="${sessionScope.isAdmin == 1 && sessionScope.notAdmin == 0}">
<%
for(int h=2;h<=countCol;h++){
	ColumnName="cl"+h;
%>
<input class="mess" type="text" id='<%=ColumnName%>' placeholder="请输入<%=(String)request.getAttribute("ColumnName"+h)%>" /><br/>
<%}%>
<div  align="center">  
	<button  class="bluebutton" onclick="insert()">添加信息 </button> 
</div>
</c:when>
 </c:choose> 
</div>
</body> 
	<%@include file="../../common/foot.jsp" %>
</html> 