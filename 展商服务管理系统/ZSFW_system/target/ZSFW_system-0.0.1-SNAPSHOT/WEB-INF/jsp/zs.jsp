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

<title>展商服务专区</title>
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

<body>
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
				<li class=""><a href="index.jsp">首页</a></li>
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
				<a href=""><h12>展商通知</h12></a>
				<dl>
					<a href="">更多 &gt;</a>
				</dl>
				<ul>
					<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a
						href="http://sportshow.com.cn/zxdt/zstz/5611.html"
						title="2018体博会展商手册下载">2018体博会展商手册下载</a></li>
					<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a
						href="" title="2018体博会报名常见问题答疑">2018体博会报名常见问题答疑</a></li>
					<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a
						href="" title="【展商必读】2018体博会展商报名常见问题汇总">【展商必读】2018体博会展商报名常见问题汇总</a></li>
					<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a
						href="" title="2018体博会展区规划三大新变化及各展区参展报名联系人">2018体博会展区规划三大新变化及各展区参展报名联系人</a></li>
					<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a
						href="" title="2018体博会展位价格及优惠政策出炉:联合会会员+连续参展，最高可获5.5折!">2018体博会展位价格及优惠政策出炉:联合会会员+连续参展，最高可获5.5折!</a></li>
					<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a
						href="" title="联合会会员单位参加2017体博会优惠政策">联合会会员单位参加2017体博会优惠政策</a></li>

				</ul>
			</div>
			<div class="spacingg"></div>
			<div class="zuolianxituandui">
				<h12>联系团队</h12>
				<p>
					康复按摩器材、室外健身路径及游乐设施<br> 王蕾：010-87108881 分机 413
				</p>
				<p>&nbsp;</p>
				<p>
					商用、家用健身器材展区<br> 卞彬彬：010-87108881 分机 410
				</p>
				<p>&nbsp;</p>
				<p>
					场馆设施、营造及地坪展区<br> 郭超：010-87108881 分机 414
				</p>
				<p>&nbsp;</p>
				<p>
					运动休闲展区<br> 李峥：010-87108881 分机 408
				</p>
				<p>&nbsp;</p>
				<p>
					球类运动及搏击展区<br> 董文渊：010-87108881 分机 409
				</p>
				<p>&nbsp;</p>
				<p>
					展务服务<br> 谢琨：010-87108881 分机 402
				</p>
				<p>&nbsp;</p>
				<p>
					展务服务<br> 刘流：010-87108881 分机 403
				</p>
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
		<div class="zhanshangfuwuright" >
			<div class="spacingg"></div>
			<a href=""><h11>展位报价</h11></a>
			<div class="zhanweibaojia">
				<a href=""><img src="statics/images/indexPage/zhanweibaojia.jpg"></a>
				<div class="spacingg"></div>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为给予长期参展的老企业和会员单位更多的优惠，为展商提供更好的配套设施，现将展位价格及优惠政策调整如下...</p>
				<li><a href=""><img
						src="statics/images/indexPage/djckgd.jpg">点击查看详情</a></li>
			</div>

			<div class="zhanweijiaotong">
				<div class="zhanweiguihua">
					<a href=""><h12>展位规划</h12></a>
					<li><a href=""><img
							src="statics/images/indexPage/zhanshangfuwuguihua.jpg"></a></li>
					<dl>
						<a href=""><img src="statics/images/indexPage/djckgd.jpg">点击查看详情</a>
					</dl>
				</div>
				<div class="jiaotongzhinan">
					<a href=""><h13>交通指南</h13></a>
					<li><a href=""><img
							src="statics/images/indexPage/zhanshangfuwujiaotong.jpg"></a></li>
					<dl>
						<a href=""><img src="statics/images/indexPage/djckgd.jpg">点击查看详情</a>
					</dl>
				</div>
			</div>

			<div class="spacingg"></div>
			<div class="guanzhonglaiyuan">
				<a href=""><img
					src="statics/images/indexPage/zhanshangfuwulaiyuan.jpg"></a>
			</div>
			<div class="fenye"></div>
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
