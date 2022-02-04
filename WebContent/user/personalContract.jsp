<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人合同管理页面</title>
<%@include file="../common/taglib.jsp" %>
<link rel="stylesheet" type="text/css" href="../css/base.css" />
 <style type="text/css">
body{background:#B0E2FF;
font-size:12px;
color:#555;
font-family:Tahoma,"微软雅黑", Geneva, sans-serif;

}
h1{font-size:48px;}
#content{opacity:0.6;}
 </style>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/jquery.easing.js"></script>
<script type="text/javascript" src="../js/base.js"></script>
</head>
<body>
<div   id="content">
<%@include file="../common/head.jsp" %>
<c:choose>
 <c:when  test="${sessionScope.isAdmin == 0 || sessionScope.notAdmin == 1}">
<div id="homepage" class="s-mod w1100" style="height:710px">
	<ul>
<li  class="s-mod-item" w="800" h="600" l="100" t="0" bg="#e8443a" cbg="#d92e24">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span></span></div>
				<div class="s-mod-cur"><span></span></div>
			</div>
		</li>
		
	</ul>
</div>
 </c:when>
 </c:choose> 
</div>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</body>
<%@include file="../common/foot.jsp" %>
</html>