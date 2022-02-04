<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>绩效管理页面</title>
<%@include file="../../common/taglib.jsp" %>
<link rel="stylesheet" type="text/css" href="${basePath}/css/base.css" />
 <style type="text/css">
body{background:#B0E2FF;
background-image: url(images/grove_of_the_pilgrim_hollow_by_darkki1-dad08g4.jpg);
font-size:18px;
color:#555;
font-family:Tahoma,"微软雅黑", Geneva, sans-serif;
}
h1{font-size:48px;}
#content{opacity:0.8;}
 </style>
<script type="text/javascript" src="${basePath}/js/jquery.js"></script>
<script type="text/javascript" src="${basePath}/js/jquery.easing.js"></script>
<script type="text/javascript" src="${basePath}/js/base.js"></script>
</head>
<body>
<div   id="content">
<%@include file="../../common/head.jsp" %>
<div id="homepage" class="s-mod w1100" style="height:710px">
	<ul>
	<c:choose>
 <c:when  test="${sessionScope.isAdmin == 1 && sessionScope.notAdmin == 0}">
		<li  class="s-mod-item" w="450" h="350" l="50" t="0" bg="#aa5096" cbg="#922a7b">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>添加绩效信息</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/admin/performanceManagement/performanceManagementInsert.jsp','_self')">添加绩效信息功能</span></div>
			</div>
		</li>
		<li  class="s-mod-item" w="450" h="350" l="550" t="0" bg="#FFD302" cbg="#EAC203">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>删除绩效信息</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/admin/performanceManagement/performanceManagementDelete.jsp','_self')">删除绩效信息</span></div>
			</div>
		</li>
		<li  class="s-mod-item" w="450" h="350" l="50" t="400" bg="#0C6DB2" cbg="#09578E">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>更改绩效信息</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/admin/performanceManagement/performanceManagementUpdate.jsp','_self')">更改绩效信息</span></div>
			</div>
		</li>
		<li  class="s-mod-item" w="450" h="350" l="550" t="400" bg="#33ac5b" cbg="#209747">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>查询绩效信息</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/admin/performanceManagement/performanceManagementSelect.jsp','_self')">查询绩效信息</span></div>
			</div>
		</li>
	
		  </c:when>
       </c:choose> 	
	</ul>
	 
</div>
</div>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
<a class="btn-org" href="${basePath}/text/performance" download="员工绩效说明"
target="_blank"><em>↓</em><span style="color:white;" class="txt">下载说明文档</span></a>
</body>
<%@include file="../../common/foot.jsp" %>
</html>