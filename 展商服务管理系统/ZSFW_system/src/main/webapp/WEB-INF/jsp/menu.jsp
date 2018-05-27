<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
						<li><a href="${pageContext.request.contextPath}/organiser/goRegister">主办方报名</a></li>
						<li><a href="${pageContext.request.contextPath}/organiser/goLogin">主办方登录</a></li>
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
	