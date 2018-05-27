<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>展位编辑页面</title>

</head>
<body>
	<c:if test="${picture==null }">
		<form id="form"
			action="${pageContext.request.contextPath}/upload/uploadFile"
			method="POST" enctype="multipart/form-data">
	</c:if>
	<c:if test="${picture!=null }">
		<form id="form"
			action="${pageContext.request.contextPath}/booth/editBooth"
			method="POST" enctype="multipart/form-data">
	</c:if>
	<c:if test="${picture==null }">
		<input id="file" type="file" name="uploadFile" />
		picture:<input type="text" name="" value="${booth.picture }"/>
		size:<input type="text" name="" value="${booth.size }"/>
		style:<input type="text" name="" value="${booth.style }" />
		price:<input type="text" name="" value="${booth.price }" />
	</c:if>
	<c:if test="${picture!=null }">
		picture:<input type="text" name="picture" value="${picture }"/>
		size:<input type="text" name="size" value="${booth.size }"/>
		style:<input type="text" name="style" value="${booth.style }" />
		price:<input type="text" name="price" value="${booth.price }" />
	</c:if>
		<input type="submit" value="change">
	</form>

	<h2>显示刚才的那个文件</h2>
	<c:if test="${picture != null }">
		<img src="${pageContext.request.contextPath}/${picture}"
			width="100" height="100" />
	</c:if>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/statics/js/jquery-1.7.1.min.js"></script>
	<script type="text/javascript">
		$("#file").change(function() {
			$("#form").submit();
		});
	</script>
</body>
</html>