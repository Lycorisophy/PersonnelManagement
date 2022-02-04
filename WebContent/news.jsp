<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html> 
  <head>  
   <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/> 
        <title>新闻</title> 
         <%@include file="common/taglib.jsp" %>
        <script type='text/javascript' src='${basePath}/js/jquery.js'></script>            
    	<script src="js/login.js"> </script> 
  
    <style type="text/css">
    .head{
	margin-left:0;
	margin-right:0;
	height:72px;  
	line-height:72px;
	font-size:18px;
	background:#06F;
	cursor: pointer ;
	}
	.logo{
	color:#000;
	font-size:24px;}
.line{
	font-size:24px;
	}
.line:hover{
	padding: 16px;
	background:#0CF;
	}
    body {  
    margin: 0;  
    padding: 0;  
    font-family:"Microsoft YaHei", "微软雅黑", "consolas";  
    
}  
*{margin:0;padding:0;-webkit-text-size-adjust:none;}
img{border:none;}
li{list-style:none;}
a {  
    text-decoration: none;  
    color:#555;
    text-decoration:none; 
}  
 a:hover{color:#c00;text-decoration:underline;}
.clearfix {   
  *zoom: 1;   
}  
.clearfix:before, .clearfix:after {   
  display: table;   
  line-height: 0;   
  content: "";  
}  
.clearfix:after {   
  clear: both;  
}   
  
.navbar {  
    background: url(../images/index/header_shadow.png) no-repeat left top;  
    background-size: 100% 54px;  
}  
.content {  
    width: 1000px;  
    margin: 0 auto;
    margin-top:80px;
	margin-bottom:80px; 
	opacity:0.8;
}  
.navbar .navbar-content a {  
    color: #FFF;  
    line-height: 54px;  
    display: inline-block;  
    width: 100px;  
    text-align: center;  
}  
.navbar .navbar-content a:hover {  
    color: #CCC;  
}  
  
.index-bg {  
    width: 100%;  
    height: 500px;  
  
    position: absolute;  
    top: -50px;  
    z-index: -10;  
}  
  
.news-list {  
    margin: 50px 0;  
    background-color: #FFF;  
    border-radius: 5px;  
    border: 1px solid #DDD;  
    padding: 30px 20px;  
  
    min-height: 1300px;  
}  
.news-list:hover {  
    box-shadow: 0 0 5px 3px #CCC;  
}  
  
.about .about-des {  
    border-left: 5px solid #CCC;  
    margin-top: 15px;  
}  
  
.about .about-des p {  
    padding-left: 10px;  
    line-height: 28px;  
    text-indent: 2em;  
}  
  
.news-list-left {  
    float: left;  
    width: 729px;  
    margin-bottom: 50px;  
}  
  
.news-list-right {  
    float: right;  
    width: 229px;  
}  
  
.news-list-item {  
    padding: 20px 30px;  
}  
  
.author-time {  
    font-size: 14px;  
}  
.news-des {  
    padding-bottom: 20px;  
    border-bottom: 2px solid #CCC;  
}  
.news-title {  
    font-size: 23px;  
}  
.news-title i {  
    display: inline-block;  
    width: 47px;  
    height: 43px;  
    margin-right: 10px;  
    background: url('../images/index/news-icon.png') left center no-repeat;  
    vertical-align: middle;  
}  
.news-title a {  
    color: green;  
}  
.news-title a:hover {  
    text-decoration: underline;  
}  
.news-content-des {  
    line-height: 28px;  
}  
  


</style>
  </head>  
  <body>  
  <%@include file="common/head.jsp" %> 
    <div class="content">  
      <h1>新闻浏览</h1>  
      <h4></h4>  
  
      <div class="news-list">  
        <div class="news-list-left">  
          <div class="news-list-item">  
            <div class="author-time">  
              <span>宋杨</span> 发表于 <span>2018-01-01 00:00:01</span>  
            </div>  
            <div class="news-des">  
              <h3 class="news-title"><i></i><a href="#">新年好</a></h3>  
              <div class="news-content-des">  
                【你好，2018】新的一年，我们不忘初心，砥砺前行！
              </div>  
            </div>  
          </div>  
  
          <div class="news-list-item">  
            <div class="author-time">  
              <span>宋杨</span> 发表于 <span>2018-05-01 18:00:00</span>  
            </div>  
            <div class="news-des">  
              <h3 class="news-title"><i></i><a href="#">劳动节快乐</a></h3>  
              <div class="news-content-des">  
             国际劳动节又称“五一国际劳动节”、“国际示威游行日”（International Workers' Day或者May Day），是世界上80多个国家的全国性节日。定在每年的五月一日。它是全世界劳动人民共同拥有的节日。
1889年7月，由恩格斯领导的第二国际在巴黎举行代表大会。会议通过决议，规定1890年5月1日国际劳动者举行游行，并决定把5月1日这一天定为国际劳动节。中央人民政府政务院于1949年12月作出决定，将5月1日确定为劳动节。1989年后，国务院基本上每5年表彰一次全国劳动模范和先进工作者，每次表彰3000人左右。
              </div>  
            </div>  
          </div>  
  
          <div class="news-list-item">  
            <div class="author-time">  
              <span>宋杨</span> 发表于 <span>2018-06-01 12:00:00</span>  
            </div>  
            <div class="news-des">  
              <h3 class="news-title"><i></i><a href="#">高考祝福</a></h3>  
              <div class="news-content-des">  
               高考在即，紧张难免;适量放松，方位上策;书本暂放，好好休息;临阵磨枪，效果甚微;心态良好，至关重要;平常心待，万事皆宜，愿你高考，取得佳绩!
              </div>  
            </div>  
          </div>  
  
          <div class="news-list-item">  
            <div class="author-time">  
              <span>宋杨</span> 发表于 <span>2018-06-12 18:00:00</span>  
            </div>  
            <div class="news-des">  
              <h3 class="news-title"><i></i><a href="#">毕业感言</a></h3>  
              <div class="news-content-des">  
           毕业，就像一个大大的句号，从此，我们告别了一段纯真的青春，一段年少轻狂的岁月，一个充满幻想的时代……
毕业前的这些日子，时间过的好像流沙，看起来漫长，却无时无刻不在逝去；想挽留，一伸手，有限的时光却在指间悄然溜走，毕业答辩，散伙席筵，举手话别，各奔东西……
一切似乎都预想的到，一切又走的太过无奈。每一天，我们都会有意无意地再逛逛校园，看一看它今天的样子，想一想四年前它如何迎来稚气未脱的我们。走了四年，似乎又走回到了起点。突然觉得，四年的同窗、身边的朋友，比想象中要和善、可爱得多！星光下的夜晚，每一个都温柔如风。图书馆的门还开着么，考研时历战过几个月的那间自习室，不知还有多少人再那里继续追寻着自己的梦想，一直对那段埋头苦读的日子心存感激，不论结果如何，它让我收获了很多……
              </div>  
            </div>  
          </div>  
        </div>  
        <div class="news-list-right">  
          <div class="about">  
            <h4>关于我们</h4>  
            <div class="about-des">  
              <p>毕业设计-企业人事管理系统</p>
              <p>作者：宋杨</p>    
            </div>  
          </div>  
        </div>    
      </div>  
    </div>  
  </body> 
<div class="copyright" style="font-size:12px;color:white" align="left">   
 	<br/>@author:宋杨
 	<br/>phone:15216839375
  	<br/>e-mail:s2295938761@163.com
  	<br/>本站所有素材均来自网络，仅供学习。如果侵犯了您的权益，请联系我，我会立即删除侵权内容
</div>
</html>  