<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp"%>
<div class="right">
	<div class="location">
		<strong>你现在所在的位置是:</strong> <span>参展管理页面</span>
	</div>
	<%-- <div class="search">
		<form method="post" action="tolist.do">
			<input name="method" value="query" class="input-text" type="hidden">
			<span>用户名：</span> <input name="queryname" class="input-text"
				type="text" value="${queryname }"> <span>用户角色：</span> <select
				name="queryUserRole">
				<c:if test="${roleList != null }">
					<option> value="0">--请选择--</option>
					<c:forEach var="role" items="${roleList}">
						<option>
							<c:if test="${role.id == queryUserRole }">selected="selected"</c:if>
						   		value="${role.id}">${role.rolename}
						   	</option>
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
			<th width="15%">手机号</th>
			<th width="10%">姓名</th>
			<th width="10%">性别</th>
			<th width="10%">公司名称</th>
			<th width="10%">职务</th>
			<th width="20%">地址</th>
			<th width="10%">邮箱</th>
			<th width="10%">操作</th>
		</tr>
		<c:forEach var="vis" items="${visList }" varStatus="status">
			<tr>
				<td><span>${vis.visPhone }</span></td>
				<td><span>${vis.visName }</span></td>
				<td><span> ${vis.visSex } </span></td>
				<td><span>${vis.company}</span></td>
				<td><span>${vis.job}</span></td>
				<td><span>${vis.location}</span></td>
				<td><span>${vis.email}</span></td>
				<td><span>禁止登陆</span></td>
				<td><span></span></td>
			</tr>
		</c:forEach>
	</table>
	<input type="hidden" id="totalPageCount" value="${totalPageCount}" />
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
