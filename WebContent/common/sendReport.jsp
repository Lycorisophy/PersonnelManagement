<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>建议反馈页面</title>
<%@include file="../common/taglib.jsp" %>
<link rel="stylesheet" type="text/css" href="../css/base.css" />
<link rel="stylesheet" type="text/css" href="../css/login.css" />
 <style type="text/css">
body{background:#B0E2FF;
font-size:12px;
color:#555;
font-family:Tahoma,"微软雅黑", Geneva, sans-serif;

}
h1{font-size:48px;}
#content{opacity:0.6;}
 </style>
<script type="text/javascript" src="${basePath}/js/jquery.js"></script>
<script type="text/javascript" src="${basePath}/js/jquery.easing.js"></script>
<script type="text/javascript" src="${basePath}/js/base.js"></script>
<script>
function report()
{var report = $('#report').val();
var telephone = $('#telephone').val();
$.ajax({
    type:"post",//请求方式
    contentType: "application/x-www-form-urlencoded; charset=utf-8",
    url:"${basePath}/controller/reportController/getReport.jsp",//请求地址
    data:{"report":report,"telephone":telephone},//传递给controller的json数据
    error:function(){//如果出错了，将事件重新绑定
        alert("登陆出错！");
    },
    success:function(data){ //返回成功执行回调函数。
        if(data == -1){
            alert('不能为空！');
        }else{
            //登录成功后返回首页
        	 alert("提交成功!");
        	 document.getElementById("report").value = "";
        	 document.getElementById("telephone").value = "";
        }
    }

});}
</script>
</head>
<body>

<%@include file="../common/head.jsp" %>
<div align="center">
<br/><textarea rows="10" cols="50" type="text" id="report"  placeholder="写下您的意见" ></textarea><br/>
<br/><textarea  cols="50" type="text" id="telephone" placeholder="留下您的联系方式" ></textarea><br/>
<br/><button  class="bluebutton" onclick="report()">提交</button><br/> 
</div>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</body>
<%@include file="../common/foot.jsp" %>
</html>