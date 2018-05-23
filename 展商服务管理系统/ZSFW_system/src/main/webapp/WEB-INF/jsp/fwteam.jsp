<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<!--  <meta name=”viewport” content=”width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes” /> -->

<title>主办方展会服务</title>
<meta name="keywords" content="展商服务">
<meta name="description"
	content="中国唯一的国家级、国际化、专业化展会，亚太区规模最大、最权威的展览盛会，进入中国市场的捷径，中国向世界展示实力的重要窗口，汇集商品，展商营销资源、科技的综合性产业展示平台，企业品牌推广和渠道拓展的助推器，传播崭新文化理念的重要渠道...">
<meta name="author" content="展商服务管理">
<meta name="Copyright" content="CHINASPORTSHOW,展商协会">
<link rel="shortcut icon" href="${path}/images/icon/ex.ico" />

<link type="text/css" media="all" rel="stylesheet"
	href="${path}statics/css/reset.css">
<link type="text/css" media="all" rel="stylesheet"
	href="${path}statics/css/layout.css">

<script src="${path}statics/js/hm.js"></script>
<script src="${path}statics/js/hm(1).js"></script>
<script src="${path}statics/js/push.js"></script>
<script type="text/javascript"
	src="${path}statics/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript"
	src="${path}statics/js/jcarousellite_1.0.1.min.js"></script>
<script type="text/javascript"
	src="${path}statics/js/jquery.fancybox-1.3.4.pack.js"></script>
<script type="text/javascript" src="${path}statics/js/picfocus.js"></script>
<script type="text/javascript" src="${path}statics/js/common1.js"></script>
</head>

<body class="home ggzs-enabled">
<div class="page">
	<div class="header-wrapper">
		<div class="header">
			<div class="header-center">展商服务管理系统</div>
			<form action="" method="post">
				<li><input type="hidden" name="dopost" value="search" /> <input
					class="int-1" type="text" name="body" value="站内搜索"
					onfocus="if(this.value=='站内搜索'){this.value='';}"
					onblur="if(this.value==''){this.value='站内搜索';}" /></br></li>
			</form>
		</div>
	</div>
	<!-- header wrapper -->
	<div id="navigation" class="navigation">
		<div class="topNavigation">
			<ul class="level1">
				<li class=""><a href="index.do">首页</a></li>
				<li><a href=""><span>主办方信息</span></a>
					<ul class="level2">
						<li><a href="">主办方报名</a></li>
						<li><a href="">主办方登录</a></li>
						<li><a href="about_exhibition.do">关于展会</a></li>
						<li><a href="fwteam.do">服务团队</a></li>

					</ul></li>
				<li><a href=""><span>展商服务</span></a>
					<ul class="level2">
						<li><a href="zs-register.do">展商报名</a></li>
						<li><a href="zs-login.do">展商登陆</a></li>
						<li><a href="">展商通知</a></li>
						<li><a href="">展位报价</a></li>
						<li><a href="">展区规划</a></li>
						<li><a href="">餐饮指南</a></li>
						<li><a href="">交通指南</a></li>

					</ul></li>
				<li><a href=""><span>参展服务</span></a>
					<ul class="level2">
						<li><a href="gz-register.do">参展报名</a></li>
						<li><a href="gz-login.do">参展登录</a></li>
						<li><a href="activity.do">活动日程</a></li>
						<li><a href="">展商展示</a></li>
						<li><a href="">参观路线</a></li>
						<li><a href="">交通指南</a></li>
						<li><a href="">住宿指南</a></li>
						<li><a href="">餐饮指南</a></li>

					</ul></li>
				<li><a href=""><span>消息中心</span></a>
					<ul class="level2">
						<li><a href="">最新动态</a></li>
						<li><a href="">征求意见</a></li>
					</ul></li>
				<li><a href="/fwzn/"><span>下载专区</span></a>
					<ul class="level2">

						<li><a href="">文件下载</a></li>
						<li><a href="">海报下载</a></li>

					</ul></li>
			</ul>
		</div>
	</div>

	<!-- /#navigation -->
	<div id="main" class="main">
		<div class="zhanshangfuwuleft" >
			<div class="spacingg"></div>
			<div class="spacingg"></div>
			<div class="zuoshangbaoming">
				<ul>
					<li><a href="zs-register.do"><img
							src="statics/images/indexPage/shouzbm.png"
							style="width: 135px; height: 30px;"></a></li>
					<li><a href="zs-login.do">
					<img src="statics/images/indexPage/shougbm.png"
						style="width: 135px; height: 30px;"></a></li>
				</ul>
			</div>
			<div class="spacingg"></div>
			<div class="zuixindongtai">
				<a href=""><h12>最新动态</h12></a>
				<dl>
					<a href="">更多 &gt;</a>
				</dl>
				<ul>
				<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="关于进一步加强中国国际体育用品博览会 知识产权保护有关工作的通知">关于进一步加强中国国际体育用品博览会 知识产权保护有关工作的通知</a></li>
				<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="2018体博会对观众开放展商邀约功能">2018体博会对观众开放展商邀约功能</a></li>
				<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="http://sportshow.com.cn/zxdt/7355.html" target="_blank" title="关于体博会签约主体变更的通知">关于体博会签约主体变更的通知</a></li>
				<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="2018体博会参展企业客户邀请说明及流程">2018体博会参展企业客户邀请说明及流程</a></li>
				<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="2018体博会综合展区：汇聚510家展商，促进行业向中国智造、中国创造转型">2018体博会综合展区：汇聚510家展商，促进行业向中国智造、中国创造转型</a></li>
				<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="2018体博会三大展区筹备工作有序进行丨2018体博会倒计时系列（二）">2018体博会三大展区筹备工作有序进行丨2018体博会倒计时系列（二）</a></li>

				</ul>
			</div>
			
		
			<div class="spacingg"></div>
			<div class="zuoxiabiao">
				<ul>
					<li><a href="zs.do"><img
							src="statics/images/indexPage/shoux1.jpg"></a></li>
					<li><a href=""><img
							src="statics/images/indexPage/shoux7.jpg"></a></li>

				</ul>
			</div>
		</div>
	
		<div class="fuwutuanduiright">
				<div class="spacingg"></div>
				<h11>服务团队</h11>
				<div class="tuanduineirong">
				<ul>
				<li><span><img src="statics/images/indexPage/wangleizuo.jpg"></span><dl><p>姓名：王蕾 女士</p><p>座机：010-87108881 分机 413 手机：13811825929</p><p>邮箱：wanglei@sportshow.com.cn</p><p>QQ：3315017928</p><p>项目：康复按摩器材、室外健身路径及游乐设施</p></dl><dd></dd></li>
				
				<li><span><img src="statics/images/indexPage/bianbinbinzuo.jpg"></span><dl><p>姓名：卞彬彬</p><p>座机：010-87108881 分机 410 手机：15066553176</p><p>邮箱：bianbinbin@sportshow.com.cn</p><p>QQ：2319133635</p><p>项目：商用、家用健身器材展区</p></dl><dd></dd></li>
				
				<li><span><img src="statics/images/indexPage/liuxin.png"></span><dl><p>姓名：刘欣 女士</p><p>座机：010-87108881 分机 412 手机：13031199433</p><p>邮箱：liuxin@sportshow.com.cn</p><p>QQ：878222479</p><p>项目：康复按摩器材、室外健身路径及游乐设施</p></dl><dd></dd></li>
				
				<li><span><img src="statics/images/indexPage/wanghaibinzuo.jpg"></span><dl><p>姓名：王海滨 先生</p><p>座机：010-87108881 分机 411 手机：13371732907</p><p>邮箱：wanghaibin@sportshow.com.cn</p><p>QQ：546367832</p><p>项目：商用、家用健身器材</p></dl><dd></dd></li>
				
				<li><span><img src="statics/images/indexPage/guochaozuo.jpg"></span><dl><p>姓名：郭超 女士</p><p>座机：010-87108881 分机 414 手机：15010253023</p><p>邮箱：guochao@sportshow.com.cn</p><p>QQ：1224958292</p><p>项目：场馆设施、营造及地坪展区、境外展</p></dl><dd></dd></li>
				
				<li><span><img src="statics/images/indexPage/ningxiaoyang.jpg"></span><dl><p>姓名：宁晓阳</p><p>电话：010-87108881 分机 428</p><p>项目：大型活动联系人</p><p>联系邮箱：ningxiaoyang@sportshow.com.cn</p></dl><dd></dd></li>
				<li><span><img src="statics/images/indexPage/cuikankanzuo.jpg"></span><dl><p>姓名：崔衎衎</p><p>电话：010-87108881 分机427 手机：13683623069</p><p>QQ：1007411920</p><p>项目：展商新闻推广联系人</p></dl><dd></dd></li>
				</ul>
				</div>
		
		
		
	</div>
</div>
<!-- footer -->
		<div class="footerb">	
			<div class="organizer">
				<div class="footyou">
					<li><p>未经许可，禁止进行转载、摘编、复制以及建立镜像等任何使用。如需转载，请与我们联系，并获得授权后方能进行。否则追究法律责任。</p></li>
					<li></li>
					<li>
					<p>email：1575898486@qq.com</p>
					</li>
					
					<script type="text/javascript" charset="utf-8" src="statics/js/buttonLite.js"></script>
					<script type="text/javascript" charset="utf-8" src="statics/js/bshareC0.js"></script>
					<p></p><br/>
	                <p>©2017-2018 展商服务管理系统  版权所有(豫ICP备050835XXXX号)</p>
					</li></div>
			  </div>
		</div>			
		
		
	



</body>
</html>
