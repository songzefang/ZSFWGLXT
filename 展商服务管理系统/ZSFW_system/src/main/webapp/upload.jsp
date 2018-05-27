<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文件上传示例</title>
</head>
<body>
	<h1>单个文件的上传</h1>
	<form action="${pageContext.request.contextPath}/upload/uploadFile" method="POST" enctype="multipart/form-data">
		<input type="file" name="uploadFile" />
		<h2><input type="submit" value="单个文件的上传" /></h2>
	</form>
	
	<h2>显示刚才的那个文件</h2>
	<c:if test="${uploadFilePath != null }">
		<img src="${pageContext.request.contextPath}/${uploadFilePath}" width="200" height="200"/>
	</c:if>
	
	<hr>
	<h1>多个文件的上传</h1>
	<form action="upload/uploadFileBatch" method="POST" enctype="multipart/form-data">
		<input type="file" name="uploadFileBatch" />
		<input type="file" name="uploadFileBatch" />
		<input type="file" name="uploadFileBatch" />
		
		<h2><input type="submit" value="多个文件的上传" /></h2>
	</form>
	
	<h2>显示刚才的那个文件</h2>
	<c:if test="${uploadMap != null }">
		<c:forEach items = "${uploadMap }" var="item">
			<a href="${pageContext.request.contextPath}/upload/${item.value}">${item.key}</a>
			<img src="${pageContext.request.contextPath}/upload/${item.value}" width="200" height="200"/>
			<br><br>
		</c:forEach>
	</c:if>
	
	
	
</body>
</html>