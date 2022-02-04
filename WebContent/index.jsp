<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>企业人事管理系统主页</title>
<%@include file="common/taglib.jsp" %>
<link rel="stylesheet" type="text/css" href="${basePath}/css/base.css" />
 <style type="text/css">
body{background:#B0E2FF;
font-size:18px;
color: black;
font-family:Tahoma,"微软雅黑", Geneva, sans-serif;
}
h1{font-size:48px;}
#content{opacity:0.8;}
span{color: white;}

</style>
<script type="text/javascript" src="${basePath}/js/jquery.js"></script>
<script type="text/javascript" src="${basePath}/js/jquery.easing.js"></script>
<script type="text/javascript" src="${basePath}/js/base.js"></script>
</head>
<body>
<div   id="content">
<%@include file="common/head.jsp" %>
<div id="homepage" class="s-mod w1100" style="height:710px">
	<ul>
	<c:choose>
 <c:when  test="${sessionScope.isAdmin == 1 && sessionScope.notAdmin == 0}">
		<li  class="s-mod-item" w="266" h="127" l="100" t="0" bg="#e8443a" cbg="#d92e24">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>员工管理模块</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/admin/userManagement/userManagement.jsp','_self')">实现对员工的添加、修改、删除、查询功能</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="266" h="266" l="378" t="0" bg="#aa5096" cbg="#922a7b">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>招聘管理模块</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/admin/employeeManagement/employeeManagement.jsp','_self')">人员任用讲求的是人岗匹配，适岗适人。找到合适的人却放到了不合适的岗位与没有找到合适的人一样会令招聘工作失去意义。招聘合适的人才并把人才配置到合适的地方才能算是完成了一次有效的招聘。</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="127" h="266" l="656" t="0" bg="#FFD302" cbg="#EAC203">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>薪金管理模块</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/admin/wageManagement/wageManagement.jsp','_self')">添加、修改、删除、查询员工工资信息并打印</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="127" h="266" l="795" t="0" bg="#0C6DB2" cbg="#09578E">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>部门管理模块</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/admin/departmentManagement/departmentManagement.jsp','_self')">添加、修改、删除、查询部门信息</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="266" h="127" l="100" t="139" bg="#9B4C13" cbg="#8F4108">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>绩效管理模块</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/admin/performanceManagement/performanceManagement.jsp','_self')">实现对员工绩效的管理，绩效即员工一段时间内的表现，通过绩效表现决定绩效工资</span></div>
			</div>
		</li>
  
		
		<li class="s-mod-item" w="127" h="266" l="100" t="278" bg="#33ac5b" cbg="#209747">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>培训管理模块</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/admin/trainManagement/trainManagement.jsp','_self')">管理员工的培训情况</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="266" h="127" l="239" t="278" bg="#bf7030" cbg="#ae6021">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>新闻资讯</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/news.jsp')">不限层级添加新闻资讯类别，可自主管理公司简介、公司新闻、产品新闻、行业知识等。在后台进行增、删、查、改等一系列操作。</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="127" h="405" l="517" t="278" bg="#914ae2" cbg="#7d33d0">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>在线咨询</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('http://baidu.com')">实现网站前台页面提交咨询内容及联系方式，后台查询咨询内容及咨询人情况，并进行在线咨询的回复，前台页面自动显示。</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="266" h="266" l="656" t="278" bg="#e42ec4" cbg="#cf19af">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>职工信息查询页面</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/common/userInformation.jsp','_self')">职工信息查询</span></div>
			</div>
		</li>
		
		<li class="s-mod-item" w="127" h="127" l="239" t="417" bg="#20c8a6" cbg="#13af90">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>部门信息查询页面</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/common/departmentInformation.jsp','_self')">部门信息查询</span></div>
			</div>
		</li>
		
		<li class="s-mod-item" w="266" h="127" l="100" t="556" bg="#d8493a" cbg="#ba3122">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>扩展功能</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/common/extensions.jsp','_self')">扩展功能</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="127" h="266" l="378" t="417" bg="#c44a8c" cbg="#b72b77">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>联系我们</span></div>
				<div class="s-mod-cur"><span  onclick="alert('联系电话:15216839375')">联系我们</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="266" h="127" l="656" t="556" bg="#8e48f7" cbg="#7026df">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>用户有哪些建议</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/admin/reportManagement/reportManagement.jsp','_self')">看看用户的意见</span></div>
			</div>
		</li>

		  </c:when>
        
        <c:when test="${empty sessionScope.username}">
		 <li  class="s-mod-item" w="266" h="127" l="100" t="0" bg="#D4D4D4" cbg="#D4D4D4">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>员工管理模块</span></div>
				<div class="s-mod-cur"><span>实现对员工的添加、修改、删除、查询功能</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="266" h="266" l="378" t="0" bg="#D4D4D4" cbg="#D4D4D4">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>招聘管理模块</span></div>
				<div class="s-mod-cur"><span>人员任用讲求的是人岗匹配，适岗适人。找到合适的人却放到了不合适的岗位与没有找到合适的人一样会令招聘工作失去意义。招聘合适的人才并把人才配置到合适的地方才能算是完成了一次有效的招聘。</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="127" h="266" l="656" t="0" bg="#D4D4D4" cbg="#D4D4D4">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>薪金管理模块</span></div>
				<div class="s-mod-cur"><span>添加、修改、删除、查询员工工资信息并打印</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="127" h="266" l="795" t="0" bg="#D4D4D4" cbg="#D4D4D4">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>部门管理模块</span></div>
				<div class="s-mod-cur"><span>实现对部门的添加、修改、删除、查询功能</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="266" h="127" l="100" t="139" bg="#D4D4D4" cbg="#D4D4D4">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>绩效管理模块</span></div>
				<div class="s-mod-cur"><span>绩效即员工一段时间内的表现，通过绩效表现决定绩效工资</span></div>
			</div>
		</li>
  
		
		<li class="s-mod-item" w="127" h="266" l="100" t="278" bg="#D4D4D4" cbg="#D4D4D4">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>培训管理模块</span></div>
				<div class="s-mod-cur"><span>添加、修改、删除、查询员工培训信息并打印</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="266" h="127" l="239" t="278" bg="#bf7030" cbg="#ae6021">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>新闻资讯</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/news.jsp')">不限层级添加新闻资讯类别，可自主管理公司简介、公司新闻、产品新闻、行业知识等。在后台进行增、删、查、改等一系列操作。</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="127" h="405" l="517" t="278" bg="#914ae2" cbg="#7d33d0">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>在线咨询</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('http://baidu.com')">24小时不在线咨询</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="266" h="266" l="656" t="278" bg="#e42ec4" cbg="#cf19af">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>职工信息查询页面</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/common/userInformation.jsp','_self')">职工信息查询</span></div>
			</div>
		</li>
		
		<li class="s-mod-item" w="127" h="127" l="239" t="417" bg="#20c8a6" cbg="#13af90">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>部门信息查询页面</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/common/departmentInformation.jsp','_self')">查询部门信息</span></div>
			</div>
		</li>
		
		<li class="s-mod-item" w="266" h="127" l="100" t="556" bg="#d8493a" cbg="#ba3122">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>扩展功能</span></div>
				<div class="s-mod-cur"><span onclick="javascript:window.open('${basePath}/common/extensions.jsp','_self')">扩展功能</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="127" h="266" l="378" t="417" bg="#c44a8c" cbg="#b72b77">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>联系我们</span></div>
				<div class="s-mod-cur"><span  onclick="alert('联系电话:15216839375')">打电话给我们</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="266" h="127" l="656" t="556" bg="#8e48f7" cbg="#7026df">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>建议反馈</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/common/sendReport.jsp','_self')">给点意见</span></div>
			</div>
		</li>
           </c:when>
           <c:otherwise>
           	<li  class="s-mod-item" w="266" h="127" l="100" t="0" bg="#e8443a" cbg="#d92e24">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>个人信息管理模块</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/user/personalInformation.jsp','_self')">个人信息管理</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="266" h="266" l="378" t="0" bg="#D4D4D4" cbg="#922a7b">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>招聘管理模块</span></div>
				<div class="s-mod-cur"><span >人员任用讲求的是人岗匹配，适岗适人。找到合适的人却放到了不合适的岗位与没有找到合适的人一样会令招聘工作失去意义。招聘合适的人才并把人才配置到合适的地方才能算是完成了一次有效的招聘。</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="127" h="266" l="656" t="0" bg="#FFD302" cbg="#EAC203">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>个人薪金管理模块</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/user/personalWage.jsp','_self')">个人薪金管理</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="127" h="266" l="795" t="0" bg="#0C6DB2" cbg="#09578E">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>个人部门模块</span></div>
				<div class="s-mod-cur"><span onclick="javascript:window.open('${basePath}/user/personalDepartment.jsp','_self')">个人部门信息</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="266" h="127" l="100" t="139" bg="#9B4C13" cbg="#8F4108">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>个人绩效管理模块</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/user/personalPerformance.jsp','_self')">个人绩效管理</span></div>
			</div>
		</li>
  
		
		<li class="s-mod-item" w="127" h="266" l="100" t="278" bg="#33ac5b" cbg="#209747">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>个人培训管理模块</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/user/personalTrain.jsp','_self')">个人培训信息</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="266" h="127" l="239" t="278" bg="#bf7030" cbg="#ae6021">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>新闻资讯</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/news.jsp')">看天下大事</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="127" h="405" l="517" t="278" bg="#914ae2" cbg="#7d33d0">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>在线咨询</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('http://baidu.com')">在线联系我们</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="266" h="266" l="656" t="278" bg="#e42ec4" cbg="#cf19af">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>职工信息查询页面</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/common/userInformation.jsp','_self')">职工信息查询</span></div>
			</div>
		</li>
		
		<li class="s-mod-item" w="127" h="127" l="239" t="417" bg="#20c8a6" cbg="#13af90">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>部门信息查询页面</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/common/departmentInformation.jsp','_self')">部门信息查询</span></div>
			</div>
		</li>
		
		<li class="s-mod-item" w="266" h="127" l="100" t="556" bg="#d8493a" cbg="#ba3122">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>扩展功能</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/common/extensions.jsp','_self')">扩展功能</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="127" h="266" l="378" t="417" bg="#c44a8c" cbg="#b72b77">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>联系我们</span></div>
				<div class="s-mod-cur"><span  onclick="alert('联系电话:15216839375')">为我们打call</span></div>
			</div>
		</li>
		<li class="s-mod-item" w="266" h="127" l="656" t="556" bg="#8e48f7" cbg="#7026df">
			<div class="s-mod-wrap">
				<div class="s-mod-def"><span>建议反馈</span></div>
				<div class="s-mod-cur"><span  onclick="javascript:window.open('${basePath}/common/sendReport.jsp','_self')">给点意见吧</span></div>
			</div>
		</li>
       </c:otherwise>   
       </c:choose> 	
	</ul>	 
</div>
</div>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</body>
<%@include file="common/foot.jsp" %>
</html>