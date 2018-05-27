<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp"%>
<div class="right">
	<div class="location">
		<strong>你现在所在的位置是:</strong> <span>用户管理页面 >> 用户信息查看页面</span>
	</div>
	<div class="providerView">
		<p>
			<strong>公司简称：</strong><span>${exh.comAbbreviation }</span>
		</p>
		<p>
			<strong>公司性质：</strong><span>${exh.comType }</span>
		</p>
		<p>
			<strong>成立日期：</strong><span>${exh.establishDate  }</span>
		</p>
		<p>
			<strong>员工数量：</strong>${exh.employeeCount  }<span> </span>
		</p>
		<p>
			<strong>注册资金：</strong><span>${exh.registeredCapital  }</span>
		</p>
		<p>
			<strong>所属行业：</strong><span>${exh.industry  }</span>
		</p>
		<p>
			<strong>产品品牌：</strong><span>${exh.productBrand  }</span>
		</p>
		<div class="providerAddBtn">
			<input type="button" id="back" name="back" value="返回">
		</div>
	</div>
</div>
</section>
<%@include file="./common/foot.jsp"%>
<script type="text/javascript" src="statics/js/userview.js"></script>