<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>扩展功能页面</title>
<%@include file="../common/taglib.jsp" %>
<link rel="stylesheet" type="text/css" href="../css/base.css" />
 <script type='text/javascript' src='../js/jquery.js'></script> 
 <script type="text/javascript" src="../js/jquery.qrcode.min.js"></script>    
<script src="../js/login.js"> </script>
<link rel="stylesheet" type="text/css" href="../css/login.css" />
 <style type="text/css">
body{background:#B0E2FF;
font-size:12px;
color:#555;
font-family:Tahoma,"微软雅黑", Geneva, sans-serif;
}
h1{font-size:48px;}
#content{opacity:0.6;}

		input:focus{/*文本框获取焦点时的样式*/
border:1px solid white;
outline: none; 
background-color:rgb(150,150,150);  
opacity:0.8;  
}
     
 </style>
</head>
<body>
<%@include file="../common/head.jsp" %>
<div   id="content">
<!--setInterval实时显示时间-->
<p id="time1" style="color: blueviolet;font-size:22px;"></p>
<script>
    function mytime(){
        var a = new Date();
        var b = a.toLocaleTimeString();
        var c = a.toLocaleDateString();
        document.getElementById("time1").innerHTML ="当前时间："+ c+"&nbsp"+b;
        }
    setInterval(function() {mytime()},1000);
</script>
<h1 >二维码生成与识别</h1> <hr />
<div   id="content">
<br/><input  class="mess" type="text" id="txtContent" placeholder="输入网址" /><br/><br/>	   
</div>
<br/><div id="QRcode" align="center"></div>  
<br/><br/>
<div  align="center">
<script >  $('#QRcode').qrcode({  
    render: 'table',  
    width: 200,  
    height: 200,  
    text: 'http://baidu.com'  
});  
$(function () {
$('#URL2QR').click(function(){
  $('#QRcode').empty();
$('#QRcode').qrcode({  
    render: 'table',  
    width: 200,  
    height: 200,  
    text: document.getElementById("txtContent").value
});  
  });  
}); </script>
      <a  class="bluebutton" id="URL2QR">网址转二维码,手机扫码登陆</a><br/>  <br/>    
</div>
</div>
  <center><p style="font-size:16px;">来点音乐</p></center>
<iframe  border="0" marginwidth="0" marginheight="0" width="330" height="450" 
src="//music.163.com/outchain/player?type=1&id=35934819&auto=1&height=430"></iframe>
</body>
<%@include file="../common/foot.jsp" %>
</html>