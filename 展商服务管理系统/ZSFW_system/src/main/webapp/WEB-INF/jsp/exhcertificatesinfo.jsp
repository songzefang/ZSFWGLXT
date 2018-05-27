<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp"%>
<div class="right">
	<div class="location">
		<strong>你现在所在的位置是:</strong> <span>用户管理页面 >> 用户信息查看页面</span>
	</div>
	<div class="providerView">
		<p>
			<strong>营业执照：</strong><span>${exh.businessLicense }</span>
		</p>
		<p>
			<strong>商标注册证：</strong><span>${exh.trademarkRegistrationCertificate }</span>
		</p>
		<p>
			<strong>授权证书：</strong><span>${exh.authorization  }</span>
		</p>
		<p>
			<strong>专利证书：</strong>${exh.patentGertificate  }<span> </span>
		</p>
		<div class="providerAddBtn">
			<input type="button" id="back" name="back" value="返回">
		</div>
	</div>
</div>
<%@include file="./common/foot.jsp"%>
<script type="text/javascript" src="statics/js/userview.js"></script>