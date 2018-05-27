<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主办方注册页面</title>


<script src="${path}statics/js/hm.js"></script>
<script src="${path}statics/js/hm(1).js"></script>
<script src="${path}statics/js/push.js"></script>
<script type="text/javascript" src="${path}statics/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="${path}statics/js/jcarousellite_1.0.1.min.js"></script>
<script type="text/javascript" src="${path}statics/js/jquery.fancybox-1.3.4.pack.js"></script>
<script type="text/javascript" src="${path}statics/js/picfocus.js"></script>
<script type="text/javascript" src="${path}statics/js/common1.js"></script>
<script type="text/javascript" src="${path}statics/js/daoji.js"></script>
</head>
<body>
	<form style="text-align:center" action="${pageContext.request.contextPath }/organiser/register">
		account:<input type="text" name="account"/><br/>
		orgName:<input type="text" name="orgName"/><br/>
		orgpwd<input type="password" name="orgPwd"/><br/>
		mobile:<input type="text" name="mobile"/><br/>
		contact<input type="text" name="contact"/><br/>
		location:<input type="text" name="location"/><br/>
		email<input type="text" name="email"/><br/>
		theme<input type="text" name="theme"/><br/>
		venueName<input type="text" name="venueName"/><br/>
		venueAddress<input type="text" name="venueAddress"/><br/>
		boothCount<input type="text" name="boothCount"/><br/>
		<input type="submit" value="注册">
	</form>
	
	
</body>
</html>