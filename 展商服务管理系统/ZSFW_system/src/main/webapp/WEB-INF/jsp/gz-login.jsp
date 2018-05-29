<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>参展登录</title>
<!--全局样式路径-->
<link href="statics/css/globalcss.css" rel="stylesheet" type="text/css">


<script src="statics/js/hm2.js"></script>
<script src="statics/js/jquery-1.4.2.min.js" type="text/javascript"></script>

<!--顶部菜单-->

<!--菜单结束-->

<link href="statics/css/loginStyle.css" rel="stylesheet" type="text/css">
</head>
<body>
	<form method="post" action=""
		onsubmit="javascript:return WebForm_OnSubmit();" id="form1">
		<div class="aspNetHidden">
			<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="">
			<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT"
				value=""> <input type="hidden" name="__VIEWSTATE"
				id="__VIEWSTATE"
				value="/wEPDwUKLTEwNDY4NDE1OA9kFgJmD2QWAmYPZBYCAgMPZBYGAgMPFgIeBXN0eWxlBQ1oZWlnaHQ6MzI1cHg7FgQCAQ8WAh4EVGV4dAWOATxhIGhyZWY9Jyc+PGltZyAgc3JjPSIvaW1hZ2VzL3dzc2xvZ28vYjA2NGI3MjYtYmJjNy00NmUwLWE2MDItZDc1ZWY3NmIyNGI4LnBuZyIgYm9yZGVyPSIwIiBoZWlnaHQ9IjMwMCIgd2lkdGg9Ijk2MCIgY29tcGxldGU9ImNvbXBsZXRlIiAvPjwvYT5kAgMPFgIfAAViaGVpZ2h0OjIwcHg7dmVydGljYWwtYWxpZ246bWlkZGxlO2xpbmUtaGVpZ2h0OjIwcHg7d2lkdGg6OTYwcHg7YmFja2dyb3VuZC1jb2xvcjojZTYzNzIyO1RvcDozMDBweDsWBAIDDw8WAh4HVmlzaWJsZWhkZAIFDw8WAh4LTmF2aWdhdGVVcmwFG2h0dHA6Ly93d3cuc3BvcnRzaG93LmNvbS5jbmRkAgUPZBYEAgEPFgIfAQWaATxkaXYgY2xhc3M9IkxlZnRJbWFnZURpdiI+PGltZyBzcmM9Ii93c3Mvb3JnYW5pemVyY2VudGVyL3dzc2xvZ28vMzVhMjEzZGQtZTFkYy00MTM3LWIyYzUtOGNkY2RhNzM1ODE2LmpwZyIgdGl0bGU9IiIgYWx0PSIiIGNsYXNzPSJMZWZ0SW1hZ2VTdHlsZSIgLz48L2Rpdj5kAgUPZBYCAgEPFgIfAQW2ATxkaXYgc3R5bGU9InRleHQtYWxpZ246IGNlbnRlciI+PHN0cm9uZz48c3BhbiBzdHlsZT0iZm9udC1zaXplOiAxOHB4Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOiAxOHB4Ij7kuK3lm73lm73pmYXkvZPogrLnlKjlk4HljZrop4jkvJo8YnIgLz4NCjwvc3Bhbj7lsZXllYbnmbvlvZU8L3NwYW4+PC9zdHJvbmc+PC9kaXY+ZAIHDxYCHwEF0Ag8cCBzdHlsZT0idGV4dC1hbGlnbjpsZWZ0O2ZvbnQtZmFtaWx5Oidmb250LXNpemU6MTJweDsiPg0KCTxzcGFuIHN0eWxlPSJmb250LWZhbWlseTrlvq7ova/pm4Xpu5EsICc7Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEycHg7Ij5Qb3dlcmVkIGJ5Jm5ic3A7PC9zcGFuPjxzdHJvbmc+PGEgaHJlZj0iaHR0cDovL3d3dy5zeW5haXIuY24vIiB0YXJnZXQ9Il9ibGFuayI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMnB4OyI+c3luYWlyPC9zcGFuPjwvYT48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEycHg7Ij4mbmJzcDsmbmJzcDs8L3NwYW4+PC9zdHJvbmc+PHNwYW4gc3R5bGU9ImxpbmUtaGVpZ2h0OjEuNTtmb250LXNpemU6MTJweDsiPiZjb3B5OzIwMDQtMjAxODwvc3Bhbj48L3NwYW4+IA0KPC9wPg0KPHAgc3R5bGU9InRleHQtYWxpZ246cmlnaHQ7Zm9udC1mYW1pbHk6J2ZvbnQtc2l6ZToxMnB4OyI+DQoJPHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxNXB4O2xpbmUtaGVpZ2h0OjEuNTtmb250LWZhbWlseTrlvq7ova/pm4Xpu5EsICdiYWNrZ3JvdW5kLWNvbG9yOiNGRkZGRkY7Ij48YSBocmVmPSJodHRwOi8vd3d3LnNwb3J0c2hvdy5jb20uY24vYXJjaGl2ZXIvIj48c3BhbiBzdHlsZT0ibGluZS1oZWlnaHQ6MS41O2ZvbnQtZmFtaWx5OuW+rui9r+mbhem7kSwgJ2ZvbnQtc2l6ZToxMnB4O2JhY2tncm91bmQtY29sb3I6I0ZGRkZGRjtmb250LXNpemU6MTJweDsiPmVtYWls77yaaW5mb0BzcG9ydHNob3cuY29tLmNuPC9zcGFuPjwvYT48L3NwYW4+IA0KPC9wPg0KPHAgc3R5bGU9InRleHQtYWxpZ246cmlnaHQ7Zm9udC1mYW1pbHk6J2ZvbnQtc2l6ZToxMnB4OyI+DQoJPHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OkhlbHZldGljYSwgVGFob21hLCBBcmlhbCwgJ2xpbmUtaGVpZ2h0OjIyLjVweDtiYWNrZ3JvdW5kLWNvbG9yOiNGRkZGRkY7Zm9udC1zaXplOjEycHg7Ij4mY29weTsyMDA4LTIwMTgg5Lit5Zu95Zu96ZmF5L2T6IKy55So5ZOB5Y2a6KeI5LyaIOeJiOadg+aJgOaciSjkuqxJQ1DlpIcwNTA4MzU5NuWPty0yKTwvc3Bhbj4gDQo8L3A+PGRpdiBzdHlsZT0iZGlzcGxheTpub25lOyI+54mI5pys5Y+3OjIuNy4yMDEzLjguMjY8L2Rpdj5kGAEFHl9fQ29udHJvbHNSZXF1aXJlUG9zdEJhY2tLZXlfXxYBBT9jdGwwMCRjdGwwMCRDb250ZW50UGxhY2VIb2xkZXIxX2xlZnQkQ29udGVudF9yaWdodCRJbWFnZUJ1dHRvbjFjTg/lmZaRxdxdDFopRQevsmoBJogqIHybP6m2wHXZ4w==">
		</div>

		<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


		<script src="statics/axd/WebResource.axd" type="text/javascript"></script>
		<script src="statics/axd/ScriptResource.axd" type="text/javascript"></script>
		<script src="statics/axd/ScriptResource(1).axd" type="text/javascript"></script>
		<script src="statics/axd/ScriptResource(2).axd" type="text/javascript"></script>
		<script type="text/javascript">
//<![CDATA[
function WebForm_OnSubmit() {
if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;
return true;
}
//]]>
</script>

		<div class="aspNetHidden">

			<input type="hidden" name="__VIEWSTATEGENERATOR"
				id="__VIEWSTATEGENERATOR" value="48754E71"> <input
				type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
				value="dd" />
		</div>
		<script type="text/javascript">
	//<![CDATA[
	   Sys.WebForms.PageRequestManager._initialize('ctl00$ctl00$ScriptManager1', 'form1', [], [], [], 90, 'ctl00$ctl00');
	//]]>
    </script>

		<div id="PH" style="height: 300px;">
			<center>
				<div class="mc_logoBar">
					<div class="mc_logo">
						<a href=""><img src="statics/images/zsfwlogin/black1.png"
							border="0" height="220" width="960" complete="complete"></a>
					</div>
				</div>


				<div id="zhuangtaixinxi" class="mc_state"
					style="height: 20px; vertical-align: middle; line-height: 20px; width: 960px; background-color: #e63722; Top: 300px;">
					<div style="float: left">
						<span id="headText" style="color: White; margin-left: 5px;"></span>
					</div>
					<div style="float: right; margin-right: 30px; cursor: pointer;">
						&nbsp;&nbsp;|&nbsp;&nbsp; <a id="hylnk_GoLogin" href="index.jsp"
							style="color: White;">返回首页</a>
					</div>



				</div>
			</center>
		</div>
		<div id="PC">

			<div id="content_left" class="leftStyle">
				<div class="LeftImageDiv">
					<img src="statics/images/zsfwlogin/zclogin.jpg" title="" alt=""
						class="LeftImageStyle">
				</div>
			</div>
			<div id="content_right" style="width: 770px; float: right;">
				<div class="_div_bottom">

					<div class="formdiv">
						<div class="backgroundPic">
							<div style="float: left">
								<img src="statics/images/zsfwlogin/z026.gif" style="float: left">
							</div>
							<div style="float: left">
								<div id="right_top">
									<img src="statics/images/zsfwlogin/z032.gif"
										style="width: 441px; height: 23px;">
								</div>
								<div class="titlestr">
									<div style="text-align: center">
										<strong><span style="font-size: 18px"><span
												style="font-size: 18px">展商服务管理系统<br>
											</span>参展登录</span></strong>
									</div>
								</div>
								<div class="formtable">
									<div class="formLine">
										<div>
											<span> <img src="statics/images/zsfwlogin/z039.gif"></span><span>登录手机号：<input
												name="visName" type="text" maxlength="20"
												id="ContentPlaceHolder1_left_Content_right_name"
												class="txt_input"></span>
										</div>
									</div>
									<div class="formLine">
										<div>
											<span> <img src="statics/images/zsfwlogin/z039.gif"></span><span>登录密码&nbsp;&nbsp;&nbsp;&nbsp;：<input
												name="visPwd" type="password" maxlength="20"
												id="ContentPlaceHolder1_left_Content_right_pwd"
												class="txt_input"></span>
										</div>
									</div>
									<div style="padding: 10px">
										<div class="btn-imgg">
											<input type="image"
												name="ctl00$ctl00$ContentPlaceHolder1_left$Content_right$ImageButton1"
												id="ContentPlaceHolder1_left_Content_right_ImageButton1"
												src="statics/images/zsfwlogin/z041.png"
												onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ctl00$ContentPlaceHolder1_left$Content_right$ImageButton1&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))">
											<img src="statics/images/zsfwlogin/z042.gif"
												class="btn_margin" onclick="_rsClick()" alt="重置"> <input
												id="rs" type="reset" style="display: none;">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<span
						id="ContentPlaceHolder1_left_Content_right_RequiredFieldValidator1"
						style="display: none;"></span> <span
						id="ContentPlaceHolder1_left_Content_right_RequiredFieldValidator2"
						style="display: none;"></span>
					<div id="ContentPlaceHolder1_left_Content_right_ValidationSummary1"
						style="display: none;"></div>
					<script type="text/javascript">
        function _rsClick() {
            document.getElementById("rs").click();
        }
    </script>

				</div>
			</div>

		</div>
		<div id="PF" style="height: auto;">
			<p style="text-align: left; font-family: &amp; #39; font-size: 12px;">
				<span style="font-family: 微软雅黑,&amp; #39;"><span
					style="font-size: 12px;">Powered by&nbsp;</span><strong><a
						href="" target="_blank"><span style="font-size: 12px;">lichang</span></a><span
						style="font-size: 12px;">&nbsp;&nbsp;</span></strong><span
					style="line-height: 1.5; font-size: 12px;">©2017-2018</span></span>
			</p>
			<p
				style="text-align: right; font-family: &amp; #39; font-size: 12px;">
				<span
					style="font-size: 15px; line-height: 1.5; font-family: 微软雅黑,&amp; #39; background-color: #FFFFFF;"><a
					href="http://www.sportshow.com.cn/archiver/"><span
						style="line-height: 1.5; font-family: 微软雅黑,&amp; #39; font-size: 12px; background-color: #FFFFFF; font-size: 12px;">email：1575898486@qq.com</span></a></span>
			</p>
			<p
				style="text-align: right; font-family: &amp; #39; font-size: 12px;">
				<span
					style="font-family: Helvetica, Tahoma, Arial,&amp; #39; line-height: 22.5px; background-color: #FFFFFF; font-size: 12px;">©2017-2018
					展商服务管理系统 版权所有(豫ICP备050835XXXX号)</span>
			</p>
			<div style="display: none;">版本号:2.7.2013.8.26</div>
		</div>
		<input type="hidden" id="PHId" value="PH">

		<script type="text/javascript">
//<![CDATA[
var Page_ValidationSummaries =  new Array(document.getElementById("ContentPlaceHolder1_left_Content_right_ValidationSummary1"));
var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_left_Content_right_RequiredFieldValidator1"), document.getElementById("ContentPlaceHolder1_left_Content_right_RequiredFieldValidator2"));
//]]>
</script>

		<script type="text/javascript">
//<![CDATA[
var ContentPlaceHolder1_left_Content_right_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_left_Content_right_RequiredFieldValidator1"] : document.getElementById("ContentPlaceHolder1_left_Content_right_RequiredFieldValidator1");
ContentPlaceHolder1_left_Content_right_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_left_Content_right_name";
ContentPlaceHolder1_left_Content_right_RequiredFieldValidator1.errormessage = "请输入用户名";
ContentPlaceHolder1_left_Content_right_RequiredFieldValidator1.display = "None";
ContentPlaceHolder1_left_Content_right_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_left_Content_right_RequiredFieldValidator1.initialvalue = "";
var ContentPlaceHolder1_left_Content_right_RequiredFieldValidator2 = document.all ? document.all["ContentPlaceHolder1_left_Content_right_RequiredFieldValidator2"] : document.getElementById("ContentPlaceHolder1_left_Content_right_RequiredFieldValidator2");
ContentPlaceHolder1_left_Content_right_RequiredFieldValidator2.controltovalidate = "ContentPlaceHolder1_left_Content_right_pwd";
ContentPlaceHolder1_left_Content_right_RequiredFieldValidator2.errormessage = "请输入密码";
ContentPlaceHolder1_left_Content_right_RequiredFieldValidator2.display = "None";
ContentPlaceHolder1_left_Content_right_RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_left_Content_right_RequiredFieldValidator2.initialvalue = "";
var ContentPlaceHolder1_left_Content_right_ValidationSummary1 = document.all ? document.all["ContentPlaceHolder1_left_Content_right_ValidationSummary1"] : document.getElementById("ContentPlaceHolder1_left_Content_right_ValidationSummary1");
ContentPlaceHolder1_left_Content_right_ValidationSummary1.showmessagebox = "True";
ContentPlaceHolder1_left_Content_right_ValidationSummary1.showsummary = "False";
//]]>
</script>


		<script type="text/javascript">
//<![CDATA[

var Page_ValidationActive = false;
if (typeof(ValidatorOnLoad) == "function") {
    ValidatorOnLoad();
}

function ValidatorOnSubmit() {
    if (Page_ValidationActive) {
        return ValidatorCommonOnSubmit();
    }
    else {
        return true;
    }
}
        
(function(id) {
    var e = document.getElementById(id);
    if (e) {
        e.dispose = function() {
            Array.remove(Page_ValidationSummaries, document.getElementById(id));
        }
        e = null;
    }
})('ContentPlaceHolder1_left_Content_right_ValidationSummary1');

document.getElementById('ContentPlaceHolder1_left_Content_right_RequiredFieldValidator1').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_left_Content_right_RequiredFieldValidator1'));
}

document.getElementById('ContentPlaceHolder1_left_Content_right_RequiredFieldValidator2').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_left_Content_right_RequiredFieldValidator2'));
}
//]]>
</script>
	</form>
	<script type="text/javascript">
        function _rsClick() {
            document.getElementById("rs").click();
        }
        try {
            (function setFootHeight() {
                if (document.documentElement.clientHeight > document.body.offsetHeight - 4) {
                    var _Y = document.getElementById("PC");
                    var _foot = document.getElementById("PF");
                    var ph = document.getElementById(document.getElementById("PHId").value);
                    var Hheight = 150;
                    if (ph)
                        Hheight = ph.offsetHeight;
                    var _h = document.documentElement.clientHeight - _foot.offsetHeight - Hheight - 20 + "px";
                    _Y.style.cssText = "_height:" + _h + ";min-height:" + _h;
                }
            })();
        }
        catch (e)
				{ }
    </script>

</body>
</html>