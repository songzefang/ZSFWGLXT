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

<title>展商服务管理系统</title>
<meta name="keywords" content="展商服务">
<meta name="description"
	content="中国唯一的国家级、国际化、专业化展会，亚太区规模最大、最权威的展览盛会，进入中国市场的捷径，中国向世界展示实力的重要窗口，汇集商品，展商营销资源、科技的综合性产业展示平台，企业品牌推广和渠道拓展的助推器，传播崭新文化理念的重要渠道...">
<meta name="author" content="展商服务管理">
<meta name="Copyright" content="CHINASPORTSHOW,展商协会">
<link rel="shortcut icon" href="${path}/images/icon/ex.ico" />

<link type="text/css" media="all" rel="stylesheet" href="${path}statics/css/reset.css">
<link type="text/css" media="all" rel="stylesheet" href="${path}statics/css/layout.css">

<script src="${path}statics/js/hm.js"></script>
<script src="${path}statics/js/hm(1).js"></script>
<script src="${path}statics/js/push.js"></script>
<script type="text/javascript" src="${path}statics/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="${path}statics/js/jcarousellite_1.0.1.min.js"></script>
<script type="text/javascript" src="${path}statics/js/jquery.fancybox-1.3.4.pack.js"></script>
<script type="text/javascript" src="${path}statics/js/picfocus.js"></script>
<script type="text/javascript" src="${path}statics/js/common1.js"></script>
<script type="text/javascript" src="${path}statics/js/daoji.js"></script>
 <!--<base target="_blank">-->
  <base href="." target="_blank">
	<script>
	setTimeout(function(){document.getElementById("youce_contact_img").style.display="none";},15000);
	//1000是多久被隐藏，单位毫秒
	</script>
	<script>
	setTimeout(function(){document.getElementById("right_contact_img").style.display="none";},15000);
	//1000是多久被隐藏，单位毫秒
	</script>
<style type="text/css">
    #main {
    		position: relative;
    		margin: 20px auto;
    		width: 1024px;
    		text-align: left;
    		height: 750px;
    		background-color: ;
    	}
    	#admin_button{
    	  margin-left:20px;
    	  margin-top:4px;
    	  background-color: #5224ab;
    	  float: left;
    	  width: 100px;
    	  height: 36px;
    	  border-radius: 5px;
    	}
    	#admin_button button{
    	   width:90px;
    	   height:30px;
    	   border-radius: 5px;
    	   color: #36d84f;
    	   font-size:12px;
    	   margin-top: 3px;
    	   font-weight:bolder;
    	}
</style>

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
	    <div id="admin_button">
	      <a href="login.htm">
	         <button name="admin" value="管理员入口">管理员入口</button>
	      </a>  
	    </div>
		<div class="topNavigation">
			<ul class="level1">
				<li class=""><a href="index.do">首页</a></li>
				<li><a href=""><span>主办方信息</span></a>
					<ul class="level2">
						<li><a href="${path}/register">主办方报名</a></li>
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
						<li><a href="">活动日程</a></li>
						<li><a href="">展商展示</a></li>
						<li><a href="">参观路线</a></li>
						<li><a href="">交通指南</a></li>
						<li><a href="">住宿指南</a></li>
						<li><a href="">餐饮指南</a></li>

					</ul></li>
				<li><a href=""><span>公告中心</span></a>
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

	<div id="main" class="main">
	
		<div class="spacingg"></div>
			<div class="news">
			<div class="countDown">
			<span id="daoji">17</span>
		      天 <span id="daojishi">23</span>
		       时 <span id="daojifen">28</span>
		       分 <br> 2018国际展览会倒计时</div>
			<div class="spacingg"></div>
			<div class="shouzuofudong">
			<div class="baomingrukou">
			<a href="zs-register.do"><img src="statics/images/indexPage/shouzbm.png" style="width:135px" alt="参展商报名"></a>
			<a href="gz-register.do"><img src="statics/images/indexPage/shougbm.png" style="width:135px;height:30px;position: absolute;left: 125px;" alt="观众报名"></a>
			</div>
			
			<div class="box-wrapper">
				<a href=""><h2>最新动态</h2></a>
				<ul>
				<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="关于进一步加强中国国际体育用品博览会 知识产权保护有关工作的通知">关于进一步加强中国国际体育用品博览会 知识产权保护有关工作的通知</a></li>
<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="2018体博会对观众开放展商邀约功能">2018体博会对观众开放展商邀约功能</a></li>
<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="http://sportshow.com.cn/zxdt/7355.html" target="_blank" title="关于体博会签约主体变更的通知">关于体博会签约主体变更的通知</a></li>
<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="2018体博会参展企业客户邀请说明及流程">2018体博会参展企业客户邀请说明及流程</a></li>
<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="2018体博会综合展区：汇聚510家展商，促进行业向中国智造、中国创造转型">2018体博会综合展区：汇聚510家展商，促进行业向中国智造、中国创造转型</a></li>
<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="2018体博会三大展区筹备工作有序进行丨2018体博会倒计时系列（二）">2018体博会三大展区筹备工作有序进行丨2018体博会倒计时系列（二）</a></li>
<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="2018体博会进入倒计时，亮点活动带您前瞻">2018体博会进入倒计时，亮点活动带您前瞻</a></li>
<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="2018中国体育产业峰会深度系列报道三丨青少论坛深度报道">2018中国体育产业峰会深度系列报道三丨青少论坛深度报道</a></li>
<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="2018中国体育产业峰会深度系列报道三丨这场由中美高层参与的交流会，或许将昭示体育产业全球化的“顶头风”在何处">2018中国体育产业峰会深度系列报道三丨这场由中美高层参与的交流会，或许将昭示体育产业全球化的“顶头风”在何处</a></li>
<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="“海燕飞翔”训练器 为推动全民健身助力">“海燕飞翔”训练器 为推动全民健身助力</a></li>
<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="2018体博会展品推介——伟士羽毛球拍 王者系列King08">2018体博会展品推介——伟士羽毛球拍 王者系列King08</a></li>
<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="2018体博会展品推介——宜准动态光学心率智能健身手环C1">2018体博会展品推介——宜准动态光学心率智能健身手环C1</a></li>
<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="2018体博会展品推介——怡爽冷感运动毛巾">2018体博会展品推介——怡爽冷感运动毛巾</a></li>
<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="2018体博会展商推介—浙江江山多娇实业有限公司">2018体博会展商推介—浙江江山多娇实业有限公司</a></li>
<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="快来占据京东体博会活动专题页，京东商城额外推广资源来了!">快来占据京东体博会活动专题页，京东商城额外推广资源来了!</a></li>
<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="2018体博会展商手册下载">2018体博会展商手册下载</a></li>
<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="工匠精神打造质量优势 定州体育产业期待京津冀一体化激活">工匠精神打造质量优势 定州体育产业期待京津冀一体化激活</a></li>
<li><img src="statics/images/indexPage/sanjiaohui.jpg"><a href="" target="_blank" title="2018体博会场馆展区再创历史新高 2018场馆论坛再度聚焦行业爆款话题">2018体博会场馆展区再创历史新高 2018场馆论坛再度聚焦行业爆款话题</a></li>

				</ul>
				<div class="more-link"><a href="http://www.sportshow.com.cn/zxdt/">更多 ›</a></div>
				
			</div>
					<div class="erweima">
		<a href=""><img src="statics/images/indexPage/sousuoan.png"></a>
		</div>
			</div>
			
		</div>
		
		<div class="shouyouceng">
		<div class="general_banner clearfix">
			<div class="homescrollImg_Focus" style="visibility: visible; overflow: hidden; position: relative; z-index: 2; left: 0px; width: 700px;">
				<ul style="margin: 0px; padding: 0px; position: relative; list-style-type: none; z-index: 1; width: 7000px; left: -5600px;"><li style="overflow: hidden; float: left; width: 700px; height: 420px;"><a href="">
				    <img src="statics/images/indexPage/t017d95792039618c6a.jpg" alt=""></a></li>
					<li style="overflow: hidden; float: left; width: 700px; height: 420px;"><a href=""><img src="statics/images/indexPage/t017d95792039618c6a.jpg" alt=""></a></li>
					<li style="overflow: hidden; float: left; width: 700px; height: 420px;"><a href=""><img src="statics/images/indexPage/t01337a256d0619197a.jpg" alt=""></a></li>
					<li style="overflow: hidden; float: left; width: 700px; height: 420px;"><a href=""><img src="statics/images/indexPage/t011fb8b7a1843918a2.jpg" alt=""></a></li>
					<li style="overflow: hidden; float: left; width: 700px; height: 420px;"><a href=""><img src="statics/images/indexPage/t01fb5482b485748964.jpg" alt=""></a></li>
					<li style="overflow: hidden; float: left; width: 700px; height: 420px;"><a href=""><img src="statics/images/indexPage/t01c092821d374aa71b.jpg" alt=""></a></li>
					<li style="overflow: hidden; float: left; width: 700px; height: 420px;"><a href=""><img src="statics/images/indexPage/t018f964808e3db28b4.jpg" alt=""></a></li>
					
				  </ul>
				<a href="index.jsp/" class="previous">上一页</a>
				<a href="index.jsp/" class="next">下一页</a>
			</div>
		</div>
		
		
		<div class="spacing"></div>
		<div class="erweimada">
			<div class="organizationlogo clearfix">
				<ul class="medium">
					<li><a href="zs.do" target="_blank"><img src="statics/images/indexPage/shoux1.jpg" alt="展商专区"></a></li>
					<li><a href="" target="_blank"><img src="statics/images/indexPage/shoux2.jpg" alt="观众专区"></a></li>
					<li><a href="" target="_blank"><img src="statics/images/indexPage/shoux3.jpg" alt="新闻媒体"></a></li>
					<li><a href="" target="_blank"><img src="statics/images/indexPage/shoux4.jpg" alt="展品展示"></a></li>
					<li><a href="" target="_blank"><img src="statics/images/indexPage/shoux5-1.jpg" alt="高峰论坛"></a></li>
					<li><a href="" target="_blank"><img src="statics/images/indexPage/shoux6.jpg" alt="展商新闻"></a></li>
					<li><a href="" target="_blank"><img src="statics/images/indexPage/shoux7.jpg" alt="活动日程"></a></li>
					<li><a href="http://csgf.org.cn/" target="_blank"><img src="statics/images/indexPage/shoux8.jpg" alt="行业协会"></a></li>
				</ul>
			</div>
		</div>
		<div class="spacing"></div>
		
		<div class="hangyemeiti">
			<h2>合作媒体(排名顺序不分先后)</h2>
			<div class="hangyemeitibiao">
				<ul>
					<li><img src="statics/images/indexPage/hangye4.jpg" alt="合作媒体"></li>
					<li><img src="statics/images/indexPage/hangye15.jpg" alt="合作媒体"></li>
					<li><img src="statics/images/indexPage/hulian3.jpg" alt="合作媒体"></li>
					<li><img src="statics/images/indexPage/hulian2.png" alt="合作媒体"></li>
					<li><img src="statics/images/indexPage/hulian1.png" alt="合作媒体"></li>
					<li><img src="statics/images/indexPage/hangye3.jpg" alt="合作媒体"></li>
					<li><img src="statics/images/indexPage/hangye1.jpg" alt="合作媒体"></li>
					<li>
					  <a href="http://www.chnzbx.com/">
					   <img src="statics/images/indexPage/hangye2.jpg" alt="合作媒体">
					  </a>
				    </li>
					<li><img src="statics/images/indexPage/hangye11.jpg" alt="合作媒体"></li>
					<li>
					 <a href="http://www.imb2b.com/">
					    <img src="statics/images/indexPage/hangye1219-1.jpg" alt="合作媒体">
					 </a>
				    </li>
					
						
				</ul>
			</div>
		</div>
		<div class="spacing"></div>
		</div>
	</div>
	<!-- /#main -->
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
