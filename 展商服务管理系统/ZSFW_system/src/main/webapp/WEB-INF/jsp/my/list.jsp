<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.pageDiv{text-align:center;}
	#current{margin:30px;}
	.pageDiv a{cursor:pointer;text-decoration:none;}
</style>
</head>
<body>
	<c:if test="${userList!=null}">
		<c:forEach items="${userList }" var="item">
			<p> 
				username:<c:out value="${ item.username }"></c:out>
				password:<c:out value="${ item.password }"></c:out>
			</p>
		</c:forEach>
	</c:if>
	<div class="pageDiv">
		<a id="first" href="${pageContext.request.contextPath }/listUser/1">首页</a>
		<a id="previous" href="${pageContext.request.contextPath }/listUser/${currentPage-1}">上一页</a>
		<a id="current">第${currentPage } 页</a>
		<a id="next" href="${pageContext.request.contextPath }/listUser/${currentPage+1}">下一页</a>
		<a id="first" href="${pageContext.request.contextPath }/listUser/${countPage}">尾页</a>
	</div>
	<script src="${pageContext.request.contextPath }/statics/js/jquery-1.4.2.min.js"></script>
	<script>
		console.log(1);
		$.ajax({
			type:"GET",
			url:"${pageContext.request.contextPath }/listJsonUser/1",
			dataType : "json",
			success:function(data){
				console.log(data);
			}
		});
	</script>
</body>
</html>