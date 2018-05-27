<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主办方主页面</title>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}//images/icon/ex.ico" />

<link type="text/css" media="all" rel="stylesheet"
	href="${pageContext.request.contextPath}/statics/css/reset.css">
<link type="text/css" media="all" rel="stylesheet"
	href="${pageContext.request.contextPath}/statics/css/layout.css">

<script src="${pageContext.request.contextPath}/statics/js/hm.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/hm(1).js"></script>
<script src="${pageContext.request.contextPath}/statics/js/push.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/statics/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/statics/js/jcarousellite_1.0.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/statics/js/jquery.fancybox-1.3.4.pack.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/statics/js/picfocus.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/statics/js/common1.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/statics/js/daoji.js"></script>
<!--<base target="_blank">-->
<base href="." target="_blank">
<script>
	setTimeout(function() {
		document.getElementById("youce_contact_img").style.display = "none";
	}, 15000);
	//1000是多久被隐藏，单位毫秒
</script>
<script>
	setTimeout(function() {
		document.getElementById("right_contact_img").style.display = "none";
	}, 15000);
	//1000是多久被隐藏，单位毫秒
</script>
<style type="text/css">
#main {
	position: relative;
	margin: 20px auto;
	width: 1024px;
	text-align: left;
	height: 750px;
	background-color:;
}

#admin_button {
	margin-left: 20px;
	margin-top: 4px;
	background-color: #5224ab;
	float: left;
	width: 100px;
	height: 36px;
	border-radius: 5px;
}

#admin_button button {
	width: 90px;
	height: 30px;
	border-radius: 5px;
	color: #36d84f;
	font-size: 12px;
	margin-top: 3px;
	font-weight: bolder;
}
.boothshow table{float:right;margin-right:20px;}
.boothshow table tr td{text-align:center;line-height:150px;}
.paging{text-align:center;}
.paging a{margin:30px;text-decoration:none;}
.clearfix{content:"";display:block;clear:both;}
</style>
</head>
<body>
	<%@ include file="../menu.jsp"%>
	账号${account} 昵称${orgName }
	<div class="boothshow clearfix">
		<table border="1" cellspacing="0" cellpadding="0">
			<tr>
				<td width="50px" class="tdColor tdC">编号</td>
				<td width="300px" class="tdColor">展位图片</td>
				<td width="100px" class="tdColor">展位大小</td>
				<td width="100px" class="tdColor">展位风格</td>
				<td width="100px" class="tdColor">展位价格</td>
				<td width="200px" class="tdColor">操作</td>
			</tr>
			<c:forEach var="item" items="${listBooth }">
				<tr>
					<td>${item.boothCode}</td>
					<td><c:if test="${item.picture=='暂无图片'}">暂无图片</c:if> <c:if
							test="${item.picture!='暂无图片'}">
							<img width="200" height="150"
								src="${ pageContext.request.contextPath }/${item.picture}">
						</c:if></td>
					<td>${item.size}</td>
					<td><c:if test="${item.style==1}">豪华</c:if> <c:if
							test="${item.style==0}">普通</c:if></td>
					<td>${item.price }</td>
					<td><a target="_self"
						href="${ pageContext.request.contextPath }/booth/gotoEditBooth/<c:out value="${item.id }" />/<c:out value="${curPage }" />">编辑</a>
						<a target="_self"
						href="${ pageContext.request.contextPath }/booth/resetBooth/<c:out value="${item.id }" />/<c:out value="${curPage }" />">重置</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div class="paging">
		第
		<c:out value="${curPage}" />
		页/共
		<c:out value="${totalPage}" />
		页
		<c:if test="${curPage != 1 }">
			<a target="_self" href="${pageContext.request.contextPath}/booth/listBooth/1">首页</a>|
								<a target="_self"
				href="${pageContext.request.contextPath}/booth/listBooth/<c:out value="${curPage - 1 }"/>">上一页</a>|
							</c:if>
		<c:if test="${curPage != totalPage }">
			<a target="_self"
				href="${pageContext.request.contextPath}/booth/listBooth/<c:out value="${curPage + 1 }"/>">下一页</a>|
									<a target="_self"
				href="${pageContext.request.contextPath}/booth/listBooth/<c:out value="${totalPage }"/>">尾页</a>|
							</c:if>
	</div>


</body>
</html>