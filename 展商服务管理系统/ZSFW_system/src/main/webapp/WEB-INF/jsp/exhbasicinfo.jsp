<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp"%>
<div class="right">
	<div class="location">
		<strong>你现在所在的位置是:</strong> <span>用户管理页面 >> 用户信息查看页面</span>
	</div>
	<div class="providerView">
		<p>
			<strong>公司名称：</strong><span>${exh.comName }</span>
		</p>
		<p>
			<strong>公司地址：</strong><span>${exh.comAddress }</span>
		</p>
		<p>
			<strong>具体街道：</strong><span>${exh.street  }</span>
		</p>
		<p>
			<strong>公司英文名称：</strong>${exh.comEnglishName  }<span> </span>
		</p>
		<p>
			<strong>公司英文地址：</strong><span>${exh.comEnlishAddress  }</span>
		</p>
		<p>
			<strong>网址：</strong><span>${exh.website  }</span>
		</p>
		<p>
			<strong>邮政编码：</strong><span>${exh.postCode  }</span>
		</p>
		<p>
			<strong>邮箱：</strong><span>${exh.email  }</span>
		</p>
		<p>
			<strong>公司电话：</strong><span>${user.comPhone}</span>
		</p>
		<div class="providerAddBtn">
			<input type="button" id="back" name="back" value="返回">
		</div>
	</div>
</div>
</section>
<%@include file="./common/foot.jsp"%>
<script type="text/javascript" src="statics/js/userview.js"></script>