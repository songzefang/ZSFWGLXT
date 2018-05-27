<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp"%>
<div class="right">
	<div class="location">
		<strong>你现在所在的位置是:</strong> <span>用户管理页面</span>
	</div>
	<%-- <div class="search">
		<form method="post" action="tolist.do">
			<input name="method" value="query" class="input-text" type="hidden">
			<span>用户名：</span> <input name="queryname" class="input-text"
				type="text" value="${queryname }"> <span>用户角色：</span> <select
				name="queryUserRole">
				<c:if test="${roleList != null }">
					<option value="0">--请选择--</option>
					<c:forEach var="role" items="${roleList}">
						<option> <c:if test="${role.id == queryUserRole }">selected="selected"</c:if>
						   		value="${role.id}">${role.rolename}</option>
					</c:forEach>
				</c:if>
			</select> <input type="hidden" name="pageIndex" value="1" /> <input
				value="查 询" type="submit" id="searchbutton"> <a
				href="useradd.do">添加用户</a>
		</form>
	</div> --%>
	<!--用户-->
	<table class="providerTable" cellpadding="0" cellspacing="0">
		<tr class="firstTr">
			<th width="10%">展商id</th>
			<th width="10%">公司名称</th>
			<th width="10%">注册人</th>
			<th width="10%">注册手机</th>
			<th width="30%">查看信息</th>
			<th width="10%">状态</th>
			<th width="10%">操作</th>
		</tr>
		<c:forEach var="exh" items="${exhList }" varStatus="status">
			<tr>
				<td><span>${exh.id }</span></td>
				<td><span>${exh.comName }</span></td>
				<td><span>${exh.registrant }</span></td>
				<td><span>${exh.registPhone }</span></td>
				<td><span> <a href="getBasicInfo.do?id=${exh.id }">基本信息</a>
						/<a href="getOtherInfo.do?id=${exh.id }">其它信息</a> /<a
						href="getReceiveInfo.do?id=${exh.id }">收件信息</a> /<a
						href="getCertificatesInfo.do?id=${exh.id }">证书</a></span></td>
				<td><span>
					<c:if test="${exh.state == 0}">审核未通过</c:if>
					<c:if test="${exh.state == 1}">审核已通过</c:if>
				</span></td>
				<td><span><a href="updateState.do?id=${exh.id }">通过审核</a>/发短信</span></td>
			</tr>
		</c:forEach>
	</table>
	<input type="hidden" id="totalPageCount" value="$totalPageCount}" />
	<c:import url="rollpage.jsp">
		<c:param name="totalCount" value="${totalCount}" />
		<c:param name="currentPageNo" value="${currentPageNo}" />
		<c:param name="totalPageCount" value="${totalPageCount}" />
	</c:import>
</div>
</section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeUse">
	<div class="removerChid">
		<h2>提示</h2>
		<div class="removeMain">
			<p>你确定要删除该用户吗？</p>
			<a href="#" id="yes">确定</a> <a href="#" id="no">取消</a>
		</div>
	</div>
</div>

<%@include file="./common/foot.jsp"%>
<script type="text/javascript" src="statics/js/userlist.js"></script>
