<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,util.DataBaseUtils,util.StringUtils,bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人部门页面</title>
<script>var tname="[user]";</script>
<%String tname="[user]";
 String l=null;int m=0;
 String userID= String.valueOf(session.getAttribute("userID"));
Connection conn = DataBaseUtils.getConnection();
 ResultSet result= DataBaseUtils.select(conn,"select * from "+tname+" where id="+session.getAttribute("userID"));
// System.out.print("select * from ["+tname+"] where departmentID="+session.getAttribute("userID"));
 int rowCount=0;
 if (result!=null){
	 if(userID == "null"){
		  rowCount=0;
	 }else{
		 rowCount=1;
	 }
 int k=rowCount*result.getMetaData().getColumnCount();
 result.next();
 for(int h=1;h<=result.getMetaData().getColumnCount();h++)
 {request.setAttribute("ColumnName"+String.valueOf(h),result.getMetaData().getColumnName(h));}
 for(int j=1;j<=rowCount;j++){
	 for(int i=1;i<=result.getMetaData().getColumnCount();i++){ 		
	m=m+1;
	l=String.valueOf(m);
	request.setAttribute("result"+l,result.getString(i));
	 }
	 result.next();
	 }
 request.setAttribute("rowCount",String.valueOf(rowCount));
 request.setAttribute("countCol",String.valueOf(result.getMetaData().getColumnCount()));
 request.setAttribute("count",String.valueOf(k));
 }
DataBaseUtils.closeConnection(conn, null, result);      
%>
<%@include file="../../common/taglib.jsp" %>
<link rel="stylesheet" type="text/css" href="${basePath}/css/base.css" />
 <style type="text/css">
body{background:#B0E2FF;
font-size:12px;
color:#555;
font-family:Tahoma,"微软雅黑", Geneva, sans-serif;

}
h1{font-size:48px;}
#content{opacity:0.8;}
  table  
        {  
            border-collapse: collapse;  
            margin: 0 auto;  
            text-align: center;  
        }  
        table td, table th  
        {  
            border: 1px solid #cad9ea;  
            color: #666;  
            height: 30px;  
        }  
        table thead th  
        {  
            background-color: #CCE8EB;  
            width: 100px;  
        }  
        table tr:nth-child(odd)  
        {  
            background: #fff;  
        }  
        table tr:nth-child(even)  
        {  
            background: #F5FAFA;  
        }  
a{color:red;cursor:pointer;} 
a:link {color:blue;}
a:visited{color:blue;} 
a:active{color:blue;}
a:hover {color:blue;} 
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
  .bluebutton {  
    text-decoration:none;  
    background:#2f435e;  
    color: white;  
      
    padding: 10px 100px 10px 100px;  
    font-size:16px;  
    font-family: 微软雅黑,宋体,Arial,Helvetica,Verdana,sans-serif;  
    font-weight:bold;  
    border-radius:5px;  
      
    -webkit-transition:all linear 0.30s;  
    -moz-transition:all linear 0.30s;  
    transition:all linear 0.30s;  
    background:#0077E6; 
	margin-top:32px; height:40px	
    }  
 </style>
<script type="text/javascript" src="${basePath}/js/jquery.js"></script>
<script type="text/javascript" src="${basePath}/js/jquery.easing.js"></script>
<script type="text/javascript" src="${basePath}/js/base.js"></script>
<script>
function updateRow(obj,countCol){
	document.getElementById("update1").innerHTML =obj.id;
	for(var i=2;i<=countCol;i++){
	document.getElementById("update"+i).innerHTML ="";
	}	
	document.getElementById("updatearea").style.display="block";
}
function update(count){	
	var data1 = document.getElementById("update1").innerHTML;
	var data2 = $('#update2').val();
	var data3 = $('#update3').val();
	var data4 = $('#update4').val();
	var data5 = $('#update5').val();
	var data6 = $('#update6').val();
	var data7 = $('#update7').val();
	var data8 = $('#update8').val();
	var data9 = $('#update9').val();
	var data10 = $('#update10').val();
	var data11 = $('#update11').val();
	var data12 = $('#update12').val();
	var data13 = $('#update13').val();
	var data14 = $('#update14').val();
	//alert(data1);
	//alert(data2);
    $.ajax({
        type:"post",//请求方式
        contentType: "application/x-www-form-urlencoded; charset=utf-8",
        url:"${basePath}/controller/userController/userControllerUpdate.jsp",//请求地址
        data:{"tname":tname,"data1":data1,"data2":data2,"data3":data3,"data4":data4,"data5":data5,"data6":data6,"data7":data7,"data8":data8,"data9":data9,"data10":data10,"data11":data11,"data12":data12,"data13":data13,"data14":data14},//传递给controller的json数据
        error:function(){//如果出错了，将事件重新绑定
            alert("出错！");
        },
        success:function(data){ //返回成功执行回调函数。
            if(data == 1){
           	 //成功后显示		                     
                alert('修改成功');
                location.reload();
            }else if(data == -1){
                alert('错误代码-1');
            }else{
           	 alert(data);
            }
        }	

});}
    </script>
</head>
<%
int countCol=0;int rowC=0;
if ((String)request.getAttribute("rowCount")!= null){
rowC= Integer.parseInt((String)request.getAttribute("rowCount"));
countCol=Integer.parseInt((String)request.getAttribute("countCol"));
}
int t=0;
int pageNum=(rowC/10)+1;
int maxRow=0;
String ColumnName=null;
String tbid=null;
%>
<body>
<div   id="content">
<%@include file="../../common/head.jsp" %>
<c:choose>
 <c:when  test="${sessionScope.isAdmin == 0 || sessionScope.notAdmin == 1}">
<% 
//System.out.println(pageNum);
for(int p=1;p<=pageNum;p++){
tbid="tpage"+(String.valueOf(p));
//System.out.println(tbid);
%>
<div id='<%=tbid%>'><table class="table" border="1" >
<tr>
<%
for(int h=1;h<=countCol;h++){
	ColumnName="clumn"+String.valueOf(h);
%>
<td id='<%=ColumnName%>'><%=(String)request.getAttribute("ColumnName"+String.valueOf(h))%></td>
<%}%> 
</tr>
<%
for(int j=1;j<=10;j++){
maxRow++;
if(maxRow>rowC){break;}%>
<tr>
<%for(int i=1;i<=countCol;i++){
	t=t+1;%>
    <td><%=(String)request.getAttribute("result"+String.valueOf(t))%></td>
     <%}%>  
     <th><a id='<%=(String)request.getAttribute("result1")%>' class="delete"  onclick="updateRow(this,<%=countCol%>)">修改</a></th>  
</tr>
<%}%>
</table></div>
<%}%>
	<br /><div id="updatearea"  style="display:none;">
		<table class="table" border="1" >
		<tr>
		<%
		for(int h=1;h<=countCol;h++){
		ColumnName="clumn"+String.valueOf(h);
		%>
		<td><%=(String)request.getAttribute("ColumnName"+String.valueOf(h))%></td>
		<%}%>
		</tr>
		<tr>
		<td id="update1"></td>
		<%
		for(int h=2;h<=countCol;h++){
		ColumnName="clumn"+String.valueOf(h);
		%>
		<td><input  id='<%="update"+h%>'></input></td>
		<%}%>
		</tr>
		</table>
		<center><button class="bluebutton" onclick="update(<%=countCol %>)">提交修改</button>	</center>
		</div>	
 </c:when>
 </c:choose> 
</div>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</body>
<%@include file="../../common/foot.jsp" %>
</html>