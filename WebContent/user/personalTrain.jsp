<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" import="java.util.*,java.sql.Connection,java.sql.ResultSet,util.DataBaseUtils,util.StringUtils,bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人部门页面</title>
<script>var tname="train";</script>
<%String tname="train";
 String l=null;int m=0;
 String userID= String.valueOf(session.getAttribute("userID"));
Connection conn = DataBaseUtils.getConnection();
 ResultSet result= DataBaseUtils.select(conn,"select * from ["+tname+"] where userID="+userID);
System.out.print("select * from ["+tname+"] where userID="+userID);
 int rowCount=0;
 if (result!=null){
	 if(userID == "null"){
		  rowCount=0;
	 }else{
		 rowCount=DataBaseUtils.getNum(tname," userID = "+userID);
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
  .shortbluebutton{  
	text-decoration:none;  
    background:#2f435e;  
    color: black;  
      
    padding: 10px 50px 10px 50px;  
    font-size:16px;  
    font-family: 微软雅黑,宋体,Arial,Helvetica,Verdana,sans-serif;  
    font-weight:bold;  
    border-radius:5px;  
      
    -webkit-transition:all linear 0.30s;  
    -moz-transition:all linear 0.30s;  
    transition:all linear 0.30s;  
    background:#0077E6; 
	margin-top:32px; 
	height:40px;	
    }  
 </style>
<script type="text/javascript" src="${basePath}/js/jquery.js"></script>
<script type="text/javascript" src="${basePath}/js/jquery.easing.js"></script>
<script type="text/javascript" src="${basePath}/js/base.js"></script>
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
<div id='<%=tbid%>'><table class="table" border="1" id="resulttable">
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
</tr>
<%}%>
</table></div>
<%}%>
<center><input type="button"  class="shortbluebutton" onclick="javascript:createTable('resulttable');" value="打印个人培训信息" /></center>
	 <script>	 function createTable(tableid){
	 		var tableToPrint = document.getElementById(tableid);//将要被打印的表格
	        var newWin= window.open("");//新打开一个空窗口
	        newWin.document.write(tableToPrint.outerHTML);//将表格添加进新的窗口
	        newWin.document.close();//在IE浏览器中使用必须添加这一句
	        newWin.focus();//在IE浏览器中使用必须添加这一句
	        newWin.print();//打印
	        newWin.close();//关闭窗口
	 	 }</script>
 </c:when>
 </c:choose> 
</div>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</body>
<%@include file="../../common/foot.jsp" %>
</html>