<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript">
	$("#form").click(function(){
		var val=$("#yzm").val().trim();
		
		return false;
	});
</script>
</head>
<body>
	<form id="form" action="${pageContext.request.contextPath}/register" method="post">
		username<input type="text" name="username"/>
		password<input type="text" name="password"/>
		<input type="submit" value="submit"/>
	</form>
	验证码
	<img id="num" src="${pageContext.request.contextPath }/yzm" onclick="this.src='${pageContext.request.contextPath }/yzm?'+new Date();"/>
	
	<a href="javascript:;" onclick="document.getElementById('num').src = '${pageContext.request.contextPath }/yzm?'+(new Date()).getTime()">换一张</a>
	<br/>
	<input type="text" id="yzm">
</body>
</html>