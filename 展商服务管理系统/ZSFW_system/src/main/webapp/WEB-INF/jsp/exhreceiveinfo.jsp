<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp"%>
<div class="right">
	<div class="location">
		<strong>你现在所在的位置是:</strong> <span>用户管理页面 >> 用户信息查看页面</span>
	</div>
	<div class="providerView">
		<p>
			<strong>收件公司：</strong><span>${exh.receiveCompany }</span>
		</p>
		<p>
			<strong>收件地址：</strong><span>${exh.receiveAddress }</span>
		</p>
		<p>
			<strong>收件人：</strong><span>${exh.recipient  }</span>
		</p>
		<p>
			<strong>收件手机：</strong>${exh.receivePhone  }<span> </span>
		</p>
		<div class="providerAddBtn">
			<input type="button" id="back" name="back" value="返回">
		</div>
	</div>
</div>
<%@include file="./common/foot.jsp"%>
<script type="text/javascript" src="statics/js/userview.js"></script>