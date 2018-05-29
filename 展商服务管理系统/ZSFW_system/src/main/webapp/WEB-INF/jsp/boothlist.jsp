<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp"%>
<div class="right">
	<div class="location">
		<strong>你现在所在的位置是:</strong> <span>展位管理页面</span>
	</div>
	<div class="search">
		
	</div>
	<!--用户-->
	<table class="providerTable" cellpadding="0" cellspacing="0">
		<tr class="firstTr">
			<th width="10%">布展单位</th>
			<th width="10%">展位编号</th>
			<th width="20%">展位图片</th>
			<th width="10%">展位大小</th>
			<th width="10%">展位风格</th>
			<th width="10%">展位报价</th>
			<th width="10%">展出状态</th>
			<th width="10%">操作</th>
		</tr>
		<c:forEach var="booth" items="${boothList }" varStatus="status">
			<tr>
				<td><span>${booth.orgName }</span></td>
				<td><span>${booth.boothCode }</span></td>
				<td><span>${booth.picture}</span></td>
				<td><span>${booth.size}</span></td>
				<td><span>${booth.style}</span></td>
				<td><span>${booth.price}</span></td>
				<td><span>${booth.state}</span></td>
				<td><span>操作</span></td>
				<td><span> 
					<c:if test="${booth.state == 0 }"><a href="booth-updateState?id=${booth.id }&state=1">通过审核</a></c:if>
					<c:if test="${booth.state == 1 }"><a href="booth-updateState?id=${booth.id }&state=0">取消审核</a></c:if>
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
