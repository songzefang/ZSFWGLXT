<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp"%>
<div class="right">
	<div class="location">
		<strong>你现在所在的位置是:</strong> <span>主办方管理页面</span>
	</div>
	<div class="search">
		
	</div>
	<!--用户-->
	<table class="providerTable" cellpadding="0" cellspacing="0">
		<tr class="firstTr">
			<th width="10%">用户名</th>
			<th width="10%">主办单位</th>
			<th width="10%">手机号码</th>
			<th width="10%">联系人</th>
			<th width="10%">所在地</th>
			<th width="10%">邮箱</th>
			<th width="30%">展出登记</th>
			<th width="10%">操作</th>
		</tr>
		<c:forEach var="org" items="${orgList }" varStatus="status">
			<tr>
				<td><span>${org.account }</span></td>
				<td><span>${org.orgName }</span></td>
				<td><span>${org.mobile}</span></td>
				<td><span>${org.contact}</span></td>
				<td><span>${org.location}</span></td>
				<td><span>${org.email}</span></td>
				<td><span><a href="${pageContext.request.contextPath }/booth/boothList.do?orgId=${org.id }">展出信息</a></span></td>
				<td><span> <c:if test="${org.state == 0 }"><a href="org-updateState?id=${org.id }&state=1">通过审核</a></c:if>
					<c:if test="${org.state == 1 }"><a href="org-updateState?id=${org.id }&state=0">取消资格</a></c:if>
					/<a href="deleteOrg?id=${org.id }">删除</a>
				</span></td>
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
