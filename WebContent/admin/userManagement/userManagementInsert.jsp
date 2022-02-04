<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,util.DataBaseUtils,util.StringUtils,bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加用户页面</title>
<!-- @author 宋杨
  -- @ne 15216839375
  -- @notes tname对应表名称
 -->
<script>var tname="tempuser";
var tname2="employee";</script>
<%String tname="tempuser";
String tname2="employee";
 String l=null;String l2=null;int m=0;int m2=0;
Connection conn = DataBaseUtils.getConnection();
 ResultSet result= DataBaseUtils.select(conn,"select * from ["+tname+"]");
 ResultSet result2= DataBaseUtils.select(conn,"select * from ["+tname2+"] where isUser='0'");
 if (result!=null && result2!=null){
 int rowCount=DataBaseUtils.getRowCount(tname);
 int rowCount2=DataBaseUtils.getRowCountCon(tname2,"where isUser='0'");
 int k=rowCount*result.getMetaData().getColumnCount();
 int k2=rowCount2*result2.getMetaData().getColumnCount();
 result.next();
 result2.next();
 for(int h=1;h<=result.getMetaData().getColumnCount();h++)
 {request.setAttribute("ColumnName"+String.valueOf(h),result.getMetaData().getColumnName(h));}
 for(int h2=1;h2<=result2.getMetaData().getColumnCount();h2++)
 {request.setAttribute("ColumnNameTwo"+String.valueOf(h2),result2.getMetaData().getColumnName(h2));}
 for(int j=1;j<=rowCount;j++){
	 for(int i=1;i<=result.getMetaData().getColumnCount();i++){ 		
	m=m+1;
	l=String.valueOf(m);
	request.setAttribute("result"+l,result.getString(i));
	 }
	 result.next();
	 }
 for(int j2=1;j2<=rowCount2;j2++){
	 for(int i2=1;i2<=result2.getMetaData().getColumnCount();i2++){ 		
	m2=m2+1;
	l2=String.valueOf(m2);
	request.setAttribute("resultTwo"+l2,result2.getString(i2));
	 }
	 result2.next();
	 }
 request.setAttribute("rowCount",String.valueOf(rowCount));
 request.setAttribute("countCol",String.valueOf(result.getMetaData().getColumnCount()));
 request.setAttribute("count",String.valueOf(k));
 request.setAttribute("rowCount2",String.valueOf(rowCount2));
 request.setAttribute("countCol2",String.valueOf(result2.getMetaData().getColumnCount()));
 request.setAttribute("count2",String.valueOf(k2));
 }
DataBaseUtils.closeConnection(conn, null, result);    
DataBaseUtils.closeConnection(conn, null, result2); 
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
 </style>
<script type="text/javascript" src="${basePath}/js/jquery.js"></script>
<script type="text/javascript" src="${basePath}/js/jquery.easing.js"></script>
<script type="text/javascript" src="${basePath}/js/base.js"></script>
<script>
function insertRow(obj){
	var tableName=tname;
	var clumnValue=obj.id;
	//alert(clumnValue);
	var cof=window.confirm("确认添加吗?");
	if(cof==true){
	　　  $.ajax({
	         type:"post",//请求方式
	         contentType: "application/x-www-form-urlencoded; charset=utf-8",
	         url:"${basePath}/controller/userController/userControllerInsert.jsp",//请求地址
	         data:{"tableName":tableName,"clumnValue":clumnValue},//传递给controller的json数据
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
}}
function insertRow2(obj){
	var tableName=tname2;
	var clumnValue=obj.id;
	alert(clumnValue);
	var cof=window.confirm("确认添加吗?");
	if(cof==true){
	　　  $.ajax({
	         type:"post",//请求方式
	         contentType: "application/x-www-form-urlencoded; charset=utf-8",
	         url:"${basePath}/controller/userController/userControllerInsert2.jsp",//请求地址
	         data:{"tableName":tableName,"clumnValue":clumnValue},//传递给controller的json数据
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
}}
window.curruntPage = 1;
window.maxPage = 1;
window.curruntPage2 = 1;
window.maxPage2 = 1;
function chagepage(obj){
	if(obj>=8){obj=8;}
	else if(obj<=1){obj=1;}
	window.curruntPage=obj;
	var pageid="tpage"+obj;
	var page;
	for(var i=1;i<=8;i++)
		{
		document.getElementById(pageid).style.display="block";
		page="tpage"+i.toString();
		if(page != pageid){document.getElementById(page).style.display="none";}
		}
		}
function setMaxPage(maxPage2)
{
window.maxPage = maxPage;
chagepage(1);
window.maxPage2 = maxPage2;
chagepage2(1);
}
function chagepage2(obj){
	if(obj>=8){obj=8;}
	else if(obj<=1){obj=1;}
	window.curruntPage2=obj;
	var pageid="tpageTwo"+obj;
	var page;
	for(var i=1;i<=8;i++)
		{
		document.getElementById(pageid).style.display="block";
		page="tpageTwo"+i.toString();
		if(page != pageid){document.getElementById(page).style.display="none";}
		}
		}
function setMaxPage2(maxPage2)
{
window.maxPage2 = maxPage2;
chagepage2(1);
}
</script>
</head>
<%
int countCol=0;int rowC=0;int countCol2=0;int rowC2=0;
if ((String)request.getAttribute("rowCount")!= null && (String)request.getAttribute("rowCount2")!= null){
rowC= Integer.parseInt((String)request.getAttribute("rowCount"));
countCol=Integer.parseInt((String)request.getAttribute("countCol"));
rowC2= Integer.parseInt((String)request.getAttribute("rowCount2"));
countCol2=Integer.parseInt((String)request.getAttribute("countCol2"));
}
int t=0;int t2=0;
int pageNum=(rowC/10)+1;
int maxRow=0;
int pageNum2=(rowC2/10)+1;
int maxRow2=0;
String ColumnName=null;
String tbid=null;
String ColumnNameTwo=null;
String tbidTwo=null;
%>
<body onload='setMaxPage(<%=pageNum%>)'>
<div   id="content">
<%@include file="../../common/head.jsp" %>
<c:choose>
 <c:when  test="${sessionScope.isAdmin == 1 && sessionScope.notAdmin == 0}">
<% 
//System.out.println(pageNum);
for(int p=1;p<=pageNum;p++){
tbid="tpage"+(String.valueOf(p));

//System.out.println(tbid);
%>
<center><p style="font-size:28px;color:black;">注册请求</p></center>
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
    <td id='<%="result"+String.valueOf(t)%>'><%=(String)request.getAttribute("result"+String.valueOf(t))%></td>
     <%}%>
     <th><a id='<%=j%>' class="delete"  onclick="insertRow(this)">添加</a></th>
</tr>
<%}%>
</table></div>
<%}%>
		<div class="page">
		<a  onclick="chagepage(1)">首页</a>
		<a  onclick="chagepage(window.curruntPage-1)">❮</a>
		<%for(int g=1;g<=pageNum;g++){%>
		<a  onclick="chagepage(<%=g%>)"><%=g%></a>
		<%}%>
		<a  onclick="chagepage(window.curruntPage+1)">❯</a>
		<a  onclick="chagepage(<%=pageNum%>)">尾页</a>
		</div> 
		<% 
//System.out.println(pageNum);
for(int p2=1;p2<=pageNum2;p2++){
tbidTwo="tpageTwo"+(String.valueOf(p2));
//System.out.println(tbid);
%>
<br /><center><p style="font-size:28px;color:black;">应聘人员</p></center>
<div id='<%=tbidTwo%>'><table class="table" border="1" >
<tr>
<%
for(int h2=1;h2<=countCol2;h2++){
	ColumnNameTwo="clumnTwo"+String.valueOf(h2);
%>
<td id='<%=ColumnNameTwo%>'><%=(String)request.getAttribute("ColumnNameTwo"+String.valueOf(h2))%></td>
<%}%>
</tr>
<%
for(int j2=1;j2<=10;j2++){
maxRow2++;
if(maxRow2>rowC2){break;}%>
<tr>
<%for(int i2=1;i2<=countCol2;i2++){
	t2=t2+1;%>
    <td id='<%="resultTwo"+String.valueOf(t2)%>'><%=(String)request.getAttribute("resultTwo"+String.valueOf(t2))%></td>
     <%}%>
     <th><a id='<%=(String)request.getAttribute("resultTwo"+String.valueOf(countCol2*(j2-1)+1))%>' class="delete"  onclick="insertRow2(this)">添加</a></th>
</tr>
<%}%>
</table></div>
<%}%>
		<div class="page">
		<a  onclick="chagepage2(1)">首页</a>
		<a  onclick="chagepage2(window.curruntPage2-1)">❮</a>
		<%for(int g2=1;g2<=pageNum2;g2++){%>
		<a  onclick="chagepage2(<%=g2%>)"><%=g2%></a>
		<%}%>
		<a  onclick="chagepage2(window.curruntPage2+1)">❯</a>
		<a  onclick="chagepage2(<%=pageNum2%>)">尾页</a>
		</div> 
		<br /><center><a href="${basePath}/register.jsp" style="font-size:22px;color:black;">想再添加新员工？<br />帮您跳转到注册页面</a></center>		
 </c:when>
 </c:choose> 
</div>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</body>
<%@include file="../../common/foot.jsp" %>
</html>