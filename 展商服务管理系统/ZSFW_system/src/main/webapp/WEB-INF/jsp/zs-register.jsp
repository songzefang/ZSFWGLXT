<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>展商报名-填写基本信息</title>
    <!--全局样式路径-->
    <link href="statics/css/globalcss.css" rel="stylesheet" type="text/css">


    <script src="statics/js/hm.js"></script>
    <script src="statics/js/jquery-1.4.2.min.js" type="text/javascript"></script>
    
    <!--顶部菜单-->
    
    <!--菜单结束-->
    
 <link href="statics/css/newPageStyle.css" rel="stylesheet" type="text/css">
    <script src="statics/js/jquery-1.4.2.min(1).js" type="text/javascript"></script>
 <script src="statics/js/TestFun1.js" type="text/javascript"></script>
 <script src="statics/js/pub.js" type="text/javascript"></script>
    <script src="statics/js/sea.js" type="text/javascript"></script>
    
    <script src="statics/js/jquery.min.js" type="text/javascript"></script>
    <script src="statics/js/fileUpload.js" type="text/javascript"></script>
    
    <script type="text/javascript">
        function getfocus(id) {
            document.getElementById(id).select();
        };
        function getNextObj(id, nid) {

            var obj = document.getElementById(id);
            if (obj.value.toString().length == obj.getAttribute("maxlength")) {

                document.getElementById(id).blur();
                var nextId = nid;
                document.getElementById(nextId).focus();
            }
        }
    </script>
    
    <script src="statics/js/WdatePicker.js" type="text/javascript"></script>
    <link href="statics/css/WdatePicker.css" rel="stylesheet" type="text/css">
    

   
    <script type="text/javascript" src="statics/js/AreaSelect2.js"></script>
</head>
<body>
      <body onresize="setFootHeight()" class="ggzs-enabled">
    <form method="post" action="http://wss.sportshow.com.cn/wss/exhibit/reg_01.aspx" id="form1">
   <div class="aspNetHidden">
		<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="">
		<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="">
		<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNDY1OTE4ODA0D2QWAmYPZBYCZg9kFgICAw9kFgYCAw8WAh4Fc3R5bGUFDWhlaWdodDozMjVweDsWBAIBDxYCHgRUZXh0BY4BPGEgaHJlZj0nJz48aW1nICBzcmM9Ii9pbWFnZXMvd3NzbG9nby9iMDY0YjcyNi1iYmM3LTQ2ZTAtYTYwMi1kNzVlZjc2YjI0YjgucG5nIiBib3JkZXI9IjAiIGhlaWdodD0iMzAwIiB3aWR0aD0iOTYwIiBjb21wbGV0ZT0iY29tcGxldGUiIC8+PC9hPmQCAw8WAh8ABWJoZWlnaHQ6MjBweDt2ZXJ0aWNhbC1hbGlnbjptaWRkbGU7bGluZS1oZWlnaHQ6MjBweDt3aWR0aDo5NjBweDtiYWNrZ3JvdW5kLWNvbG9yOiNlNjM3MjI7VG9wOjMwMHB4OxYEAgMPDxYCHgdWaXNpYmxlaGRkAgUPDxYCHgtOYXZpZ2F0ZVVybAUbaHR0cDovL3d3dy5zcG9ydHNob3cuY29tLmNuZGQCBQ9kFgICAQ8WAh8BBbkCPGRpdiBjbGFzcz0iTGVmdEltYWdlRGl2Ij48aW1nIHNyYz0iL3dzcy9vcmdhbml6ZXJjZW50ZXIvd3NzbG9nby8wODI0ODBkOS03ZTdlLTQyMGEtYjNhNS00ZWRlMzA2MzM0YjYuanBnIiB0aXRsZT0iIiBhbHQ9IiIgY2xhc3M9IkxlZnRJbWFnZVN0eWxlIiAvPjwvZGl2PjxkaXYgY2xhc3M9IkxlZnRJbWFnZURpdiI+PGltZyBzcmM9Ii9pbWFnZXMvd3NzbG9nby9hMTgxMmNkOS1jYjJiLTQwMTItYWVkNy04NTYwNmY4ODk4YzQuanBnIiB0aXRsZT0i5LqM57u056CBIiBhbHQ9IuS6jOe7tOeggSIgY2xhc3M9IkxlZnRJbWFnZVN0eWxlIiAvPjwvZGl2PmQCBw8WAh8BBdAIPHAgc3R5bGU9InRleHQtYWxpZ246bGVmdDtmb250LWZhbWlseTonZm9udC1zaXplOjEycHg7Ij4NCgk8c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk65b6u6L2v6ZuF6buRLCAnOyI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMnB4OyI+UG93ZXJlZCBieSZuYnNwOzwvc3Bhbj48c3Ryb25nPjxhIGhyZWY9Imh0dHA6Ly93d3cuc3luYWlyLmNuLyIgdGFyZ2V0PSJfYmxhbmsiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTJweDsiPnN5bmFpcjwvc3Bhbj48L2E+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMnB4OyI+Jm5ic3A7Jm5ic3A7PC9zcGFuPjwvc3Ryb25nPjxzcGFuIHN0eWxlPSJsaW5lLWhlaWdodDoxLjU7Zm9udC1zaXplOjEycHg7Ij4mY29weTsyMDA0LTIwMTg8L3NwYW4+PC9zcGFuPiANCjwvcD4NCjxwIHN0eWxlPSJ0ZXh0LWFsaWduOnJpZ2h0O2ZvbnQtZmFtaWx5Oidmb250LXNpemU6MTJweDsiPg0KCTxzcGFuIHN0eWxlPSJmb250LXNpemU6MTVweDtsaW5lLWhlaWdodDoxLjU7Zm9udC1mYW1pbHk65b6u6L2v6ZuF6buRLCAnYmFja2dyb3VuZC1jb2xvcjojRkZGRkZGOyI+PGEgaHJlZj0iaHR0cDovL3d3dy5zcG9ydHNob3cuY29tLmNuL2FyY2hpdmVyLyI+PHNwYW4gc3R5bGU9ImxpbmUtaGVpZ2h0OjEuNTtmb250LWZhbWlseTrlvq7ova/pm4Xpu5EsICdmb250LXNpemU6MTJweDtiYWNrZ3JvdW5kLWNvbG9yOiNGRkZGRkY7Zm9udC1zaXplOjEycHg7Ij5lbWFpbO+8mmluZm9Ac3BvcnRzaG93LmNvbS5jbjwvc3Bhbj48L2E+PC9zcGFuPiANCjwvcD4NCjxwIHN0eWxlPSJ0ZXh0LWFsaWduOnJpZ2h0O2ZvbnQtZmFtaWx5Oidmb250LXNpemU6MTJweDsiPg0KCTxzcGFuIHN0eWxlPSJmb250LWZhbWlseTpIZWx2ZXRpY2EsIFRhaG9tYSwgQXJpYWwsICdsaW5lLWhlaWdodDoyMi41cHg7YmFja2dyb3VuZC1jb2xvcjojRkZGRkZGO2ZvbnQtc2l6ZToxMnB4OyI+JmNvcHk7MjAwOC0yMDE4IOS4reWbveWbvemZheS9k+iCsueUqOWTgeWNmuiniOS8miDniYjmnYPmiYDmnIko5LqsSUNQ5aSHMDUwODM1OTblj7ctMik8L3NwYW4+IA0KPC9wPjxkaXYgc3R5bGU9ImRpc3BsYXk6bm9uZTsiPueJiOacrOWPtzoyLjcuMjAxMy44LjI2PC9kaXY+ZBgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WAQU4Y3RsMDAkY3RsMDAkQ29udGVudFBsYWNlSG9sZGVyMV9sZWZ0JENvbnRlbnRfcmlnaHQkQnRuR2+64VmNNo9kGSGAjA6qkxn6IwkZYHheSnThCuESXGzrMA==">
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


<script src="statics/axd/ScriptResource-zs.axd" type="text/javascript"></script>
<script src="statics/axd/ScriptResource(1)-zs.axd" type="text/javascript"></script>
<script src="statics/axd/js-zs" type="text/javascript"></script>
<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="74A7EB0B">
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAINFsWEG1YftP1QpfNxDYhaUPRx34ei1fZecfks60VjXZ2MaFiSTCx9ZOXCjLMT8QGCnXn26Qt3dvzbEVlN2nIj">
</div>
    <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$ctl00$ScriptManager1', 'form1', [], [], [], 90, 'ctl00$ctl00');
//]]>
</script>

    <div id="PH" style="height:325px;">
        <center>
            <div class="mc_logoBar">
                <div class="mc_logo">
                    <a href=""><img src="statics/images/zs-register/mc_logo.jpg" border="0" height="300" width="960" complete="complete"></a>
                </div>
            </div>
            

            <div id="zhuangtaixinxi" class="mc_state" style="height:20px;vertical-align:middle;line-height:20px;width:960px;background-color:#e63722;Top:300px;">
                <div style="float: left">
                    <span id="headText" style="color: White; margin-left: 5px;"></span></div>
                <div style="float: right; margin-right: 30px; cursor: pointer;">
                    &nbsp;&nbsp;|&nbsp;&nbsp;
                    <a href="index.jsp" id="hylnk_GoLogin"  style="color: White;">返回首页</a></div>

    
                     
            </div>
        </center>
    </div>
    <div id="PC">
        
    <div id="content_left" class="leftStyle">
        
		 <div class="LeftImageDiv">
		 <img src="statics/images/zs-register/zsregister.jpg" title="" alt="" class="LeftImageStyle">
		 </div>
		 <div class="LeftImageDiv">
		  <img src="statics/images/zs-register/erweima_.jpg" title="" alt="" class="LeftImageStyle">
		 </div>
        
        
    </div>
    <div id="content_right" style="width: 770px; float:right;">
        
    <div class="liuPic">
        <div class="img-title01">
            <div class="tfont">
                公司信息</div>
        </div>
        <div class="img-title03">
            <div class="tfont">
                联系人信息</div>
        </div>
        <div class="img-title03">
            <div class="tfont">
                预订订单</div>
        </div>
        
        <div class="img-title03">
            <div class="tfont">
                预览信息</div>
        </div>
        <div class="img-title02">
            <div class="tfont">
                完成</div>
        </div>
    </div>
    
<style type="text/css">
    .curlycontainer
    {
        border: 1px solid #b8b8b8;
        width: 766px;
        font-size: 12px;
        margin: 0 auto;
    }
    .curlycontainer .innerdiv
    {
        background: transparent url(../images/zhejiao.gif) bottom right no-repeat;
        position: relative;
        left: 2px;
        top: 2px;
        padding: 1px 4px 15px 5px;
    }
</style>
<div id="ContentPlaceHolder1_left_Content_right_zheye1_Panl_div">
	
    <div class="curlycontainer">
        <div class="innerdiv">
            <p style="text-align:center;">
	<span style="color:#E53333;font-size:32px;line-height:1.5;">展商服务管理系统</span> 
</p>
<p style="text-align:center;">
	<span style="color:#E53333;font-size:32px;"><span style="color:#E53333;">展商报名</span></span>
</p>
<p style="text-align:left;">
	<span style="color:#E53333;font-size:32px;"><span style="font-size:14px;"><strong>报名信息请认真填写</strong></span><br>
</span> 
</p>
        </div>
    </div>

</div>

    <div class="cont-Tab-div" style="margin-top: 10px;">
        <div class="cont-Tab-div2">
             <div class="title-div">
                 <div>
                   <h4 class="cont-title">基本信息</h4>
                   <span class="title-font">(带<a class="nec">*</a>为必填)</span>
                  </div>
             </div>
             <div class="divTr">
                  <div class="divTd1">
                     <span class="nec">*</span><span>公司名称：</span>
                  </div>
                  <div class="divTd2">
                       <input type="text" class="dt2_input_text" id="txtCompanyName" name="txtCompanyName" value="请输入公司全称（请与公司营业执照一致）" style="text-align:center;color:#a0b4c5;" onfocus="qFont(this)" onblur="AFont(this,&#39;请输入公司全称（请与公司营业执照一致）&#39;,&#39;请输入&#39;),isExite(this)" maxlength="50">
                       <span style="color:red;">必须与营业执照公司名称相同</span>
                  </div>
             </div>
             <div class="divTr">
              <div class="divTd1">
                <span class="nec">*</span>
                <span>英文公司名称：</span></div>
                <div class="divTd2">
                <input type="text" class="dt2_input_text" id="txtCompanyEn" name="txtCompanyEn" value="如无英文，请填写汉语拼音" style="text-align:center;color:#a0b4c5;" onfocus="qEnFont(this)" onblur="AFont(this,&#39;如无英文，请填写汉语拼音&#39;,&#39;请输入&#39;),isEnExite(this,&#39;1&#39;)" maxlength="200">
                <span style="color:red;">如无英文名称，请填写公司拼音</span>
                </div>
             </div>
             <div class="divTr">
                <div class="divTd1">
                  <span class="nec">*</span>
                  <span>公司地址：</span>
                </div>
                <div class="divTd2">
                    <select id="txtArea" name="txtArea" class="dt2_input_select" onchange="AreaAnSfSelect(&#39;txtArea&#39;,&#39;txtSf&#39;,&#39;txtCity&#39;,&#39;&#39;)">
                      <option class="option1" value="">-国家和地区-</option>
                      <option value="中国;+86">中国</option>
                      <option value="中国澳门;+853">中国澳门</option>
                      <option value="中国台湾;+886">中国台湾</option>
                      <option value="中国香港;+852">中国香港</option>
                    </select>
                    <select id="txtSf" name="txtSf" class="dt2_input_select" onchange="AreaAnSfSelect(&#39;txtArea&#39;,&#39;txtSf&#39;,&#39;txtCity&#39;,this.value,&#39;&#39;);">
                    <option class="option1" value="">-省份-</option>
                    </select>
                    <select id="txtCity" name="txtCity" class="dt2_input_select" onchange="SetCityNum(this.value);">
                    <option class="option1" value="">-城市-</option>
                    </select>
                    </div>
                    </div>
                    <div class="divTr">
                    <div class="divTd1">
                    <span class="nec">*</span>
                    <span>具体街道：</span>
                    </div>
                    <div class="divTd2">
                    <input type="text" class="dt2_input_text" id="txtAddr" name="txtAddr" value="如无具体地址，请填写无" style="text-align:center;color:#a0b4c5;" onfocus="qEnFont(this)" onblur="AFont(this,&#39;如无具体地址，请填写无&#39;,&#39;请输入&#39;)" maxlength="200">
                    </div>
                    </div>
                    <div class="divTr">
                    <div class="divTd1">
                    <span class="nec">*</span>
                    <span>公司英文地址：</span>
                    </div>
                    <div class="divTd2">
                    <input type="text" class="dt2_input_text" id="txtAddrEn" name="txtAddrEn" value="如无英文，请填写汉语拼音" style="text-align:center;color:#a0b4c5;" onfocus="qEnFont(this)" onblur="AFont(this,&#39;如无英文，请填写汉语拼音&#39;,&#39;请输入&#39;),isEnExite(this,&#39;2&#39;)" maxlength="200">
                    </div>
                    </div>
                    <div class="divTr">
                    <div class="divTd1">
                    <span class="nec">*</span>
                    <span>公司网址：</span>
                    </div>
                    <div class="divTd2">
                    <input type="text" class="dt2_input_text" id="txtCompHttp" name="txtCompHttp" value="如无公司网址，请填写无" style="text-align:center;color:#a0b4c5;" onfocus="qEnFont(this)" onblur="AFont(this,&#39;如无公司网址，请填写无&#39;,&#39;请输入&#39;)" maxlength="50">
                    </div>
                    </div>
                    <div class="divTr">
                    <div class="divTd1">
                    <span class="nec">*</span>
                    <span>邮编：</span>
                    </div>
                    <div class="divTd2">
                    <input type="text" class="dt2_input_text" id="txtPost" name="txtPost" onblur="viewError(this,&#39;_isPost&#39;,&#39;邮编&#39;)" maxlength="50">
                    </div>
                    </div>
                    <div class="divTr">
                    <div class="divTd1">
                    <span class="nec">*</span>
                    <span>公司邮箱：</span>
                    </div>
                    <div class="divTd2">
                    <input type="text" class="dt2_input_text" id="txtCompEmail" name="txtCompEmail" onblur="viewError(this,&#39;_isBox&#39;,&#39;邮箱&#39;)" maxlength="100">
                    </div>
                    </div>
                    <div class="divTr">
                    <div class="divTd1">
                    <span class="nec">*</span>
                    <span>公司电话：</span>
                    </div>
                    <div class="divTd2">
                    <input type="text" id="txtCompTelCountry" value="地区代码" onfocus="qFont(this);getfocus(this)" onkeyup="getNextObj(&#39;txtCompTelCountry&#39;,&#39;txtCompTelArea&#39;)" onblur="AFont(this,&#39;地区代码&#39;,&#39;代&#39;),viewError(this,&#39;_isPhone&#39;,&#39;电话&#39;,&#39;1&#39;)" class="p1" name="txtCompTelCountry" maxlength="50"><input type="text" value="地区区号" id="txtCompTelArea" maxlength="4" onfocus="qFont(this);getfocus(this)" onkeyup="getNextObj(&#39;txtCompTelArea&#39;,&#39;txtCompTel&#39;)" onblur="AFont(this,&#39;地区区号&#39;,&#39;号&#39;),viewError(this,&#39;_isPhone&#39;,&#39;电话&#39;,&#39;2&#39;)" class="p2" name="txtCompTelArea">
                    <input type="text" id="txtCompTel" value="电话号码" onfocus="qFont(this)" onblur="AFont(this,&#39;电话号码&#39;,&#39;号&#39;),viewError(this,&#39;_isPhone&#39;,&#39;电话&#39;,&#39;3&#39;)" class="p3" name="txtCompTel">
                    </div>
                    </div>
                   
                    
            <div class="title-div">
            <div>
            <h4 class="cont-title">其它信息</h4>
            <span class="title-font">(填写以下信息,有助于我们获得到更多贵公司的信息)</span>
            <img src="statics/images/zs-register/btn_shrink.gif" title="收起" class="title-img" id="im_1" onclick="$use(&#39;Tb_1&#39;,this,&#39;&#39;)">
            </div>
            </div>
            <div id="Tb_1" name="ZK">
            <div class="divTr">
            <div class="divTd1">
            <span class="nec">*</span>
            <span>公司简称：</span>
            </div>
            <div class="divTd2">
            <input type="text" class="dt2_input_text" id="txtEasyCompany" name="txtEasyCompany" value="如无公司简称，请填写无" style="text-align:center;color:#a0b4c5;" onfocus="qEnFont(this)" onblur="AFont(this,&#39;如无公司简称，请填写无&#39;,&#39;请输入&#39;)" maxlength="50">
            </div>
            </div>
            <div class="divTr">
            <div class="divTd1">
            <span class="nec">*</span>
            <span>公司性质：</span>
            </div>
            <div>
            <select id="sltCompXZ" name="sltCompXZ" class="dt2_input_text">
            <option class="option1" value="">-请选择-</option>
            <option value="超市">超市</option>
            <option value="代理商">代理商</option>
            <option value="服务商">服务商</option>
            <option value="教育单位">教育单位</option>
            <option value="俱乐部">俱乐部</option>
            <option value="零售商">零售商</option>
            <option value="贸易公司">贸易公司</option>
            <option value="批发商">批发商</option>
            <option value="其他">其他</option>
            <option value="商场">商场</option>
            <option value="体育组织">体育组织</option>
            <option value="医疗单位">医疗单位</option>
            <option value="运动队">运动队</option>
            <option value="制造商（无自有品牌）">制造商（无自有品牌）</option>
            <option value="制造商（有自有品牌）">制造商（有自有品牌）</option>
            <option value="专卖店">专卖店</option>
            <option value="专业协会">专业协会</option>
            </select>
            </div>
            </div>
            <div class="divTr">
            <div class="divTd1">
            <span class="nec">*</span>
            <span>成立日期：</span>
            </div>
            <div class="divTd2">
            <input type="text" class="dt2_input_text" id="txtComeDate" name="txtComeDate" onfocus="qEnFont(this);WdatePicker({lang:&#39;zh-cn&#39;})" value="与营业执照一致" style="text-align:center;color:#a0b4c5;" maxlength="50">
            </div>
            </div>
            <div class="divTr">
            <div class="divTd1">
            <span class="nec">*</span>
            <span>员工人数：</span>
            </div>
             <div class="divTd2">
			<select id="txtEmploy" name="txtEmploy" class="dt2_input_text">
				<option class="option1" value="">-请选择-</option>
				<option value="1-50">1-50</option>
				<option value="50-100">50-100</option>
				<option value="100-200">100-200</option>
				<option value="200-300">200-300</option>
				<option value="300-400">300-400</option>
				<option value="400-500">400-500</option>
				<option value="500以上">500以上</option>
			</select>
		</div>
		</div>
		<div class="divTr">
			<div class="divTd1"><span class="nec">*</span><span>注册资金（万元）：</span></div>
			<div class="divTd2"><input type="text" id="txtDreg" name="txtDreg" class="dt2_input_text" value="与营业执照一致" style="text-align:center;color:#a0b4c5;" onfocus="qEnFont(this)" onblur="AFont(this,&#39;与营业执照一致&#39;,&#39;请输入&#39;)" maxlength="50"></div>
		</div>
		<div class="divTr">
			<div class="divTd1"><span class="nec">*</span><span>所属行业：</span></div>
			<div>
				<select id="sltCompHY" name="sltCompHY" onchange="hylb(event,&#39;99,49,50,51,96,54,98,58,59,101,102,62,105,109,65,171,66,170,67,68,69,110,90,111,112,113,114,150,151,152,92,64,115,116,80,117,118,119,120,89,153,121,81,154,122,56,48,124,132,131,123,155,83,130,133,136,134,139,140,141,142,138,143,137,145,147,148,146,128,156,126,149,157,158,129,159,160,161,162,163,164,165,166,167,168,169&#39;)" class="dt2_input_text">
					<option class="option1" value="">-请选择-</option>
					<option id="47" value="10协会、赛事、机构">10协会、赛事、机构</option>
					<option id="17" value="1场馆设施、营造及地坪">1场馆设施、营造及地坪</option>
					<option id="37" value="2按摩及保健产品">2按摩及保健产品</option>
					<option id="16" value="3球类、网羽运动及武术搏击">3球类、网羽运动及武术搏击</option>
					<option id="14" value="4健身器材及用品">4健身器材及用品</option>
					<option id="38" value="5全民健身室外器材及儿少运动游乐">5全民健身室外器材及儿少运动游乐</option>
					<option id="42" value="6运动休闲">6运动休闲</option>
					<option id="44" value="7冬季运动设施及设备">7冬季运动设施及设备</option>
					<option id="45" value="8体育小镇">8体育小镇</option>
					<option id="46" value="9康复设备及服务">9康复设备及服务</option>
				</select>
			</div>
			<div class="divTr">
			<div class="divTd1"><span class="nec">*</span><span>产品品牌：</span></div>
			<div class="divTd2"><input type="text" class="dt2_input_text" id="txtProduct" name="txtProduct" value="如无注册品牌，请填写“无”" style="text-align:center;color:#a0b4c5;" onfocus="qEnFont(this)" onblur="AFont(this,&#39;如没有注册品牌，请填写“无”&#39;,&#39;请输入&#39;),isEnExite(this,&#39;3&#39;)" maxlength="200"><span style="color:red;">添加更多品牌，请在签约成功后的会刊信息中录入</span></div>
		    </div>
		     <div class="title-div">
                <div>
            <h4 class="cont-title">收件信息</h4>
            <span class="title-font-red">(“重要信息正确填写”用于展位费发票、展商证件的快递)</span>
            <img src="statics/images/zs-register/btn_shrink.gif" title="收起" id="im_3" class="title-img" onclick="$use(&#39;Tb_3&#39;,this,&#39;&#39;)">
            </div>
            </div>
            <div id="Tb_3" name="ZK">
            
            <div class="divTr">
            <div class="divTd1">
            <span class="nec">*</span>
            <span>收件公司：</span>
            </div>
            <div class="divTd2">
            <input type="text" class="dt2_input_text" id="txtPostName" name="txtPostName" maxlength="50">
            </div>
            <span onclick="copyXi()" class="addNumber">粘贴基本信息</span>
            </div>
            <div class="divTr">
            <div class="divTd1">
            <span class="nec">*</span>
            <span>收件地址：</span>
            </div>
            <div class="divTd2">
            <input type="text" class="dt2_input_text" id="txtPostAddr" name="txtPostAddr" maxlength="200">
            </div>
            </div>
            <div class="divTr" style="display: none;">
            <div class="divTd1">
            </div>
            <div class="divTd2">
            <input type="text" class="dt2_input_text" id="txtPostCode" name="txtPostCode">
            </div>
            </div>
            <div class="divTr">
            <div class="divTd1">
            <span class="nec">*</span>
            <span>收件手机：</span>
            </div>
            <div class="divTd2">
            <input type="text" class="dt2_input_text" id="txtPostTelCountry" name="txtPostTelCountry" maxlength="11">
            </div>
            </div>
            <div class="divTr">
            <div class="divTd1">
            <span class="nec">*</span>
            <span>收件人姓名：</span>
            </div>
            <div class="divTd2">
            <input type="text" class="dt2_input_text" id="txtPostFaxCountry" name="txtPostFaxCountry" maxlength="50">
            </div>
            </div>
            </div>
            <input type="hidden" id="isVip" name="isVip">
            <input type="hidden" id="btnId" value="ContentPlaceHolder1_left_Content_right_BtnGo">
            <div class="title-div">
                <div>
                    <h4 class="cont-title">  证件上传</h4>
                    <span class="title-font">(只允许上传jpg/jpeg/png/gif格式的图片，图片大小限制在300KB以内)</span>
                         <img src="statics/images/zs-register/btn_shrink.gif" title="收起" class="title-img" id="im_1" onclick="$use(&#39;Tb_pic&#39;,this,&#39;&#39;)">
                    </div>
            </div>
            <div style="height: 300px" id="Tb_pic" name="ZK">
                <div id="fileQueue">
                </div>                
                <script>
                    window.onload = function () {
                        //上传图片
                        var up = new upload();
                        up.create({
                            url: '../../Support/Uploadify2.ashx',
                            id: 'uploadify1',
                            multiple: true,
                            maxSize: 300,
                            accept: '.jpg,.jpeg,.png,.gif',
                            start: function () { },
                            success: function (res) {
                                GetSelectFileName1(res);
                            },
                            fail: function () {
                                alert('上传失败！');
                            }
                        });
                        var up2 = new upload();
                        up2.create({
                            url: '../../Support/Uploadify2.ashx',
                            id: 'uploadify2',
                            multiple: true,
                            maxSize: 300,
                            accept: '.jpg,.jpeg,.png,.gif',
                            start: function () { },
                            success: function (res) {
                                GetSelectFileName2(res);
                            },
                            fail: function () {
                                alert('上传失败！');
                            }
                        });
                        var up3 = new upload();
                        up3.create({
                            url: '../../Support/Uploadify2.ashx',
                            id: 'uploadify3',
                            multiple: true,
                            maxSize: 300,
                            accept: '.jpg,.jpeg,.png,.gif',
                            start: function () { },
                            success: function (res) {
                                GetSelectFileName3(res);
                            },
                            fail: function () {
                                alert('上传失败！');
                            }
                        });
                        var up4 = new upload();
                        up4.create({
                            url: '../../Support/Uploadify2.ashx',
                            id: 'uploadify4',
                            multiple: true,
                            maxSize: 300,
                            accept: '.jpg,.jpeg,.png,.gif',
                            start: function () { },
                            success: function (res) {
                                GetSelectFileName4(res);
                            },
                            fail: function () {
                                alert('上传失败！');
                            }
                        });
                        function GetSelectFileName1(filename) {
                            document.getElementById("imgUpload1").src = "../../images/ExCertificates/" + filename;
                            document.getElementById("hidFileName1").value = filename;
                        }
                        function GetSelectFileName2(filename) {
                            document.getElementById("imgUpload2").src = "../../images/ExCertificates/" + filename;
                            document.getElementById("hidFileName2").value = filename;
                        }
                        function GetSelectFileName3(filename) {
                            document.getElementById("imgUpload3").src = "../../images/ExCertificates/" + filename;
                            document.getElementById("hidFileName3").value = filename;
                        }
                        function GetSelectFileName4(filename) {
                            document.getElementById("imgUpload4").src = "../../images/ExCertificates/" + filename;
                            document.getElementById("hidFileName4").value = filename;
                        }
                    }
                </script>
                <table>
                    <tbody><tr>
                        <td>
                            <a class="nec">*</a>营业执照：
                        </td>
                        <td>
                            <span class="file_btn" name="uploadify1" id="uploadify1">上传</span>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            商标注册证：
                        </td>
                        <td>
                            <span class="file_btn" name="uploadify2" id="uploadify2">上传</span>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            产品授权书：
                        </td>
                        <td>
                            <span class="file_btn" name="uploadify4" id="uploadify4">上传</span>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            专利证书：
                        </td>
                        <td>
                            <span class="file_btn" name="uploadify3" id="uploadify3">上传</span>
                        </td>
                        <td>
                        </td>
                    </tr>
                </tbody></table>
                <div id="ContentPlaceHolder1_left_Content_right_divUploadPic">
                    <p>
                        <br>
                        证件预览：<img src="statics/images/zs-register/nopic.jpg" class="cerPicBorder" width="130px" height="68px" id="imgUpload1" title="营业执照" alt="营业执照">
                        <img src="statics/images/zs-register/nopic.jpg" class="cerPicBorder" width="130px" height="68px" id="imgUpload2" title="商标注册证" alt="商标注册证">
                        <img src="statics/images/zs-register/nopic.jpg" class="cerPicBorder" width="130px" height="68px" id="imgUpload4" title="产品授权书" alt="产品授权书">
                        <img src="statics/images/zs-register/nopic.jpg" class="cerPicBorder" width="130px" height="68px" id="imgUpload3" title="专利证书" alt="专利证书">
                        <a style="display: none;" href="javascript:$(&#39;#uploadify&#39;).uploadifyClearQueue()">取消上传</a>
                        <input type="hidden" id="hidFileName1" name="hidFileName1" value="">
                        <input type="hidden" id="hidFileName2" name="hidFileName2" value="">
                        <input type="hidden" id="hidFileName4" name="hidFileName4" value="">
                        <input type="hidden" id="hidFileName3" name="hidFileName3" value="">
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div style="width: 180px; margin: 10px auto;" id="read">
        <input type="checkbox" id="chkRead" name="chkRead" title="" value="">我已阅读<a target="_blank" href="zhubanyueding.do" style="color: #007bbb;">《参展特别约定》</a>
        <br>
        <br>
        <br>
        <input type="image" name="ctl00$ctl00$ContentPlaceHolder1_left$Content_right$BtnGo" id="ContentPlaceHolder1_left_Content_right_BtnGo" src="statics/images/zs-register/newXYB.jpg" onclick="return saveDalei();">
    </div>
    
    <script type="text/javascript">
//<![CDATA[
var sfArray = new Object();var cities = new Object(); sfArray['中国'] = new Array('安徽省','北京市','福建省','甘肃省','广东省','广西壮族自治区','贵州省','海南省','河北省','河南省','黑龙江省','湖北省','湖南省','吉林省','江苏省','江西省','辽宁省','内蒙古','宁夏回族自治区','青海省','山东省','山西省','陕西省','上海市','四川省','天津市','西藏自治区','新疆维吾尔自治区','云南省','浙江省','重庆市'); sfArray['中国澳门'] = new Array('澳门特别行政区'); sfArray['中国台湾'] = new Array('台湾省'); sfArray['中国香港'] = new Array('香港特别行政区');
 cities['安徽省'] = new Array('安庆|556','蚌埠|552','长丰|551','巢湖|565','滁州|550','枞阳|556','当涂|555','砀山|557','定远|550','东至|566','繁昌|553','肥东|551','肥西|551','凤台|554','凤阳|550','阜南|558','阜阳|558','固镇|552','广德|563','贵池|566','含山|565','毫州|558','合肥|551','和县|565','怀宁|556','怀远|552','淮北|561','淮南|554','黄山|559','霍邱|564','霍山|564','绩溪|563','界首|558','金寨|564','泾县|563','旌德|563','来安|550','郎溪|563','利辛|558','临泉|558','灵壁|557','六安|564','庐江|565','马鞍山|555','蒙城|558','明光|550','南陵|553','宁国|563','祁门|559','潜山|556','青阳|566','全椒|550','石台|566','寿县|564','舒城|564','泗县|557','宿松|556','宿州|557','濉溪|561','太和|558','太湖|556','天长|550','桐城|556','铜陵|562','铜陵县|562','望江|556','涡阳|558','无为|565','芜湖|553','芜湖县|553','五河|552','歙县|559','萧县|557','休宁|559','宣州|563','黟县|559','颍上|558','岳西|556'); cities['北京市'] = new Array('昌平区|10','朝阳区|10','大兴区|10','东城区|10','房山区|10','丰台区|10','海淀区|10','怀柔区|10','门头沟区|10','密云县|10','平谷区|10','石景山区|10','顺义区|10','通州区|10','西城区|10','延庆县|10'); cities['福建省'] = new Array('安溪|595','长乐|591','长泰|596','长汀|597','大田|598','德化|595','东山|596','福安|593','福鼎|593','福清|591','福州|591','古田|593','光泽|599','华安|596','惠安|595','建宁|598','建瓯|599','建阳|599','将乐|598','晋江|595','连城|597','连江|591','龙海|596','龙岩|597','罗源|591','闽候|591','闽清|591','明溪|598','南安|595','南靖|596','南平|599','宁德|593','宁化|598','平和|596','平潭|591','屏南|593','莆田|594','浦城|599','清流|598','泉州|595','三明|598','沙县|598','上杭|597','邵武|599','石狮|595','寿宁|593','顺昌|599','松溪|599','泰宁|598','同安|592','武平|597','武夷山|599','霞浦|593','厦门|592','仙游|594','永安|598','永春|595','永定|597','永泰|591','尤溪|598','云霄|596','漳平|597','漳浦|596','漳州|596','诏安|596','柘荣|593','政和|599','周宁|593'); cities['甘肃省'] = new Array('阿克塞|937','安西|937','白银|943','成县|9491','崇信|933','宕昌|9494','迭部|9418','定西|932','东乡|9404','敦煌|937','甘谷|938','甘南州|9411','皋兰|931','高台|936','古浪|935','广河|9406','合水|9445','和政|9403','红古区|931','华池|9447','华亭|993','环县|9444','徽县|9497','会宁|943','积石山|9407','嘉峪关|937','金昌|935','金川|935','金塔|937','泾川|933','景泰|943','靖远|943','静宁|933','酒泉|937','旧尼|9417','康乐|9405','康县|9492','兰州|931','礼县|9496','两当|9498','临潭|9413','临洮|9425','临夏市|930','临夏县|9401','临泽|936','灵台|933','陇西|9421','碌曲|9415','玛曲|9416','民乐|936','民勤|935','岷县|9424','宁县|9442','平凉|943','秦安|938','清水|938','庆阳|9441','山丹|936','肃北|937','天水|938','天祝|935','通渭|9423','渭源|9426','文县|9493','武都|939','武山|938','西峰|934','西和|9495','夏河|9412','萧南|936','永昌|935','永登|931','永靖|9402','榆中|931','玉门|937','张家川|938','张掖|936','漳县|9422','镇原|9443','正宁|9446','舟曲|9414','庄浪|993'); cities['广东省'] = new Array('宝安|755','博罗|752','潮安|768','潮阳|661','潮州|768','澄海|754','从化|20','大埔|753','德庆|758','电白|668','东莞|769','斗门|756','恩平|750','番禺|20','丰顺|753','封开|758','佛冈|763','佛山|757','高明|757','高要|758','高州|668','广宁|758','广州|20','海丰|660','和平|762','河源|762','鹤山|750','花县|20','化州|668','怀集|758','惠东|752','惠来|663','惠阳|752','惠州|752','江门|750','蕉岭|753','揭东|663','揭西|663','揭阳|663','开平|750','乐昌|751','雷州|759','连南|763','连平|762','连山|763','连州|763','廉江|759','龙川|762','龙门|752','陆丰|660','陆河|660','罗定|766','茂名|668','梅县|753','梅州|753','南澳|754','南海|757','南雄|751','平远|753','普宁|663','清远|763','曲江|751','饶平|768','仁化|751','乳源|751','三水|757','汕头|754','汕尾|660','韶关|751','深圳|755','始兴|751','顺德|765','四会|758','遂溪|759','台山|750','翁源|751','吴川|759','五华|753','新丰|751','新会|750','新兴|766','信宜|668','兴宁|753','徐闻|759','阳春|662','阳东|662','阳江|662','阳山|763','阳西|662','英德|763','郁南|766','云浮|766','增城|20','湛江|759','肇庆|758','中山|760','珠海|756','紫金|762'); cities['广西壮族自治区'] = new Array('巴马|778','百色|776','北海|779','北流|775','宾阳|771','博白|775','苍梧|774','岑溪|774','崇左|771','大化|778','大新|771','德保|776','东兰|778','都安|778','防城港|770','凤山|778','扶绥|771','富川|774','恭城|773','灌阳|773','贵港|775','桂林|773','桂平|775','合浦|779','合山|772','河池|778','贺县|774','横县|771','环江|778','金秀|772','靖西|776','来宾|772','乐业|776','荔浦|773','临桂|773','灵川|773','灵山|777','凌云|776','柳城|772','柳江|772','柳州|772','龙胜|773','龙州|771','隆安|771','隆林|776','陆川|775','鹿寨|772','罗城|778','马山|771','蒙山|774','那坡|776','南丹|778','南宁|771','宁明|771','平果|776','平乐|773','平南|775','凭祥|771','浦北|777','钦州|777','全州|773','容县|775','融安|772','融冰|772','三江|772','上林|771','上思|770','藤县|774','天等|771','天峨|778','田东|776','田林|776','田阳|776','梧州|774','武鸣|771','武宣|772','西林|776','象州|772','忻城|772','兴安|773','阳朔|773','宜州|778','邕宁|771','永福|773','玉林|775','昭平|774','钟山|774','资源|773'); cities['贵州省'] = new Array('安龙|859','安顺|853','毕节|857','册亨|859','岑巩|8654','长顺|8670','赤水|852','从江|8659','大方|8675','丹寨|8687','道真|852','德江|8669','都匀|854','独山|8645','凤冈|852','福泉|8641','关岭|8633','贵定|8640','贵阳|851','赫章|8672','黄平|8651','惠水|8648','剑河|8680','江口|8665','金沙|8676','锦屏|8657','开阳|851','凯里|855','雷山|8686','黎平|8658','荔波|8644','六盘水|858','六枝|8681','龙里|8649','罗甸|8647','麻江|8688','湄潭|852','纳雍|8673','盘县|8682','平坝|8631','平塘|8646','普安|859','普定|8635','黔西|8674','清镇|851','晴隆|859','仁怀|852','榕江|8650','三都|8643','三穗|8655','施秉|8652','石阡|8666','思南|8667','松桃|8662','绥阳|852','台江|8689','天柱|8656','桐梓|852','铜仁|856','万山|8663','望谟|859','威宁|8671','瓮安|8642','务川|852','息烽|851','习水|852','兴仁|859','兴义|859','修文|851','沿河|8661','印江|8668','余庆|852','玉屏|8664','贞丰|859','镇宁|8634','镇远|8653','正安|852','织金|8677','紫云|8632','遵义|852','遵义县|852'); cities['海南省'] = new Array('安定|898','白沙|890','保亭|899','昌江|890','澄迈|898','儋州|890','东方|890','海口|898','乐东|899','临高|890','陵水|899','琼海|898','琼山|898','琼中|899','三亚|899','通什|899','屯昌|898','万宁|898','文昌|898','洋浦|890'); cities['河北省'] = new Array('安国|312','安平|318','安新|312','霸州|316','柏乡|319','保定|312','泊头|317','博野|312','沧州|317','昌黎|335','成安|310','承德|314','承德县|314','赤城|313','崇礼|313','磁县|310','大厂|316','大城|316','大名|310','定兴|312','定州|312','东光|317','肥乡|310','丰南|315','丰宁|314','丰润|315','抚宁|335','阜城|318','阜平|312','高碑店|312','高阳|312','高邑|311','沽源|313','固安|316','故城|318','馆陶|310','广平|310','广宗|319','海兴|317','邯郸|310','河间|317','衡水|318','怀安|313','怀来|313','黄骅|317','潢城|312','获鹿|311','鸡泽|310','冀县|318','晋州|311','井陉|311','景县|318','巨鹿|319','康保|313','宽城|314','涞水|312','涞源|312','廊坊|316','乐亭|315','蠡县|312','临城|319','临西|319','临漳|310','灵寿|311','隆化|314','隆尧|319','卢龙|335','栾城|311','滦南|315','滦平|314','滦县|315','孟村|317','内丘|319','南宫|319','南和|319','南皮|317','铙阳|318','宁晋|319','平泉|314','平山|311','平乡|319','迁安|315','迁西|315','秦皇岛|335','青龙|335','青县|317','清河|319','清苑|312','丘县|310','曲阳|312','曲周|310','任丘|317','任县|319','容城|312','三河|316','沙河|319','尚义|313','涉县|310','深泽|311','深州|318','石家庄|311','顺平|312','肃宁|317','唐海|315','唐山|315','唐县|312','万全|313','望都|312','威县|319','围场|314','蔚县|313','魏县|310','文安|316','无极|311','吴桥|317','武安|310','武强|318','武邑|318','献县|317','香河|316','辛集|311','新河|319','新乐|311','兴隆|314','行唐|311','邢台|319','雄县|312','徐水|312','宣化|313','盐山|317','阳原|313','易县|312','永年|310','永清|316','玉田|315','元氏|311','赞皇|311','枣强|318','张北|313','张家口|313','赵县|311','正定|311','涿鹿|313','涿州|312','遵化|315'); cities['河南省'] = new Array('安阳|372','安阳县|372','宝丰|375','博爱|391','长葛|374','长垣|373','郸城|394','登封|371','邓州|377','范县|393','方城|377','封丘|373','扶沟|394','巩义|371','固始|397','光山|397','鹤壁|392','滑县|372','淮滨|397','淮阳|394','潢川|397','辉县|373','获嘉|373','济源|391','郏县|375','焦作|391','浚县|392','开封|378','开封县|378','兰考|378','林州|372','临颖|395','灵宝|398','卢氏|398','鲁山|375','鹿邑|394','栾川|379','罗山|376','洛宁|379','洛阳|379','漯河|395','孟津|379','孟县|391','泌阳|396','民权|370','内黄|372','内乡|377','南乐|393','南召|377','宁陵|370','平顶山|375','平舆|396','濮阳|393','濮阳县|393','淇县|392','杞县|378','沁阳|391','清丰|393','确山|396','汝南|396','汝阳|379','汝州|375','三门峡|398','陕县|398','商城|397','商丘|370','商丘县|370','商水|394','上蔡|396','上街|371','社旗|377','沈丘|394','渑池|398','嵩县|379','睢县|370','遂平|396','台前|393','太康|394','汤阴|372','唐河|377','通许|378','桐柏|377','宛城|377','卫辉|373','尉氏|378','温县|391','卧龙|377','武陟|391','舞钢|375','舞阳|395','西华|394','西平|396','西峡|377','息县|397','夏邑|370','襄城|375','项城|394','新安|379','新蔡|396','新密|371','新县|397','新乡|373','新野|377','新郑|371','信阳|376','信阳县|376','修武|391','许昌|374','鄢陵|374','延津|373','偃师|379','郾城|395','叶县|375','伊川|379','宜阳|379','义马|398','荥阳|371','永城|370','虞城|370','禹州|374','原阳|373','柘城|370','浙川|377','镇平|377','正阳|396','郑州|371','中牟|371','周口|394','驻马店|396'); cities['黑龙江省'] = new Array('阿城|451','安达|459','巴彦|451','拜泉|452','宝清|454','北安|456','宾县|451','勃利|453','大庆|459','德都|456','东宁|453','杜尔伯特|459','方正|451','抚远|454','富锦|454','富裕|452','甘南|452','哈尔滨|451','海林|453','海伦|458','鹤岗|454','黑河|456','呼兰|451','呼玛|457','虎林|453','桦川|454','桦南|454','鸡东|453','鸡西|453','集贤|454','加格达奇|457','佳木斯|454','嘉荫|458','克东|452','克山|452','兰西|458','林甸|459','林口|453','龙江|452','萝北|454','密山|453','明水|458','漠河|457','牡丹江|453','木兰|451','穆棱|453','讷河|452','嫩江|456','宁安|453','七台河|453','齐齐哈尔|452','青冈|458','庆安|458','饶河|454','尚志|451','双成|451','双鸭山|454','绥滨|454','绥芬河|453','绥化|458','绥棱|458','孙吴|456','塔河|457','泰来|452','汤原|454','铁力|458','通河|451','同江|454','望奎|458','五常|451','五大连池|456','逊克|456','延寿|451','伊春|458','依安|452','依兰|454','友谊|454','肇东|451','肇源|459','肇州|459'); cities['湖北省'] = new Array('安陆|712','巴东|718','保康|710','蔡甸|27','长阳|717','崇阳|715','大悟|712','大冶|714','丹江口|719','当阳|717','鄂州|711','恩施|718','房县|719','公安|716','谷城|710','广水|712','汉川|712','鹤峰|718','红安|713','洪湖|716','黄陂|27','黄冈|713','黄梅|713','黄石|714','黄州|713','嘉鱼|715','监利|716','建始|718','京山|716','荆门|727','荆沙|716','来凤|718','老河口|710','利川|718','罗田|713','麻城|713','南漳|710','蒲圻|715','蕲春|713','潜江|728','沙市|716','神农架|719','十堰|719','石首|716','松滋|716','随枣|722','随州|722','天门|728','通城|715','通山|715','温泉|715','五峰|717','武昌|27','武昌县|27','武汉|27','武穴|713','浠水|713','仙桃|728','咸丰|718','咸宁|715','襄樊|710','襄阳|710','孝感|712','新洲|27','兴山|717','宣恩|718','阳新|714','宜昌|717','宜昌县|717','宜城|710','应城|712','英山|713','远发|717','云梦|712','郧西|719','郧县|719','枣阳|710','枝城|717','枝江|717','钟祥|716','竹山|719','竹溪|719','秭归|717'); cities['湖南省'] = new Array('安化|737','安仁|735','安乡|736','保靖|743','茶陵|733','长沙|731','长沙县|731','常德|736','常宁|734','郴州|735','辰溪|745','城步|739','慈利|744','道县|746','东安|746','洞口|739','凤凰|743','古丈|743','桂东|735','桂阳|735','汉寿|736','衡东|734','衡南|734','衡山|734','衡阳|734','衡阳县|734','洪江|745','花垣|743','华容|730','怀化|745','会同|745','吉首|743','嘉禾|735','江华|746','江永|746','津市|736','靖州|745','蓝山|746','耒阳|734','冷水江|738','澧县|736','醴陵|733','涟源|738','临澧|736','临武|735','临湘|730','浏阳|731','龙山|743','隆回|739','娄底|738','泸溪|743','麻阳|745','汨罗|730','南县|737','宁乡|731','宁远|746','平江|730','祁东|734','祁阳|746','黔阳|745','汝城|735','桑植|744','韶山|732','邵东|739','邵阳|739','邵阳县|739','石门|736','双峰|738','双牌|746','绥宁|739','桃江|737','桃源|736','通道|745','望城|731','武岗|739','湘潭|732','湘潭县|732','湘乡|732','湘阴|730','新化|738','新晃|745','新宁|739','新邵|739','新田|746','溆浦|745','炎陵|733','宜章|735','益阳|737','永顺|743','永兴|735','永州|746','攸县|733','沅江|737','沅陵|745','岳阳|730','岳阳县|730','张家界|744','芷江|745','株洲|733','株洲县|733','资兴|735'); cities['吉林省'] = new Array('安图|433','白城|436','长白|439','长春|431','长岭|438','大安|436','德惠|431','东丰|437','东辽|437','敦化|433','扶余|438','抚松|439','公主岭|434','和龙|433','桦甸|432','珲春|440','辉南|448','吉林省|432','集安|435','江源|439','蛟河|432','靖宇|439','九台|431','犁树|434','辽源|437','临江|439','柳河|448','龙井|433','梅河口|448','农安|431','前郭|438','乾安|438','磬石|432','舒兰|432','双辽|434','双阳|431','四平|434','松原|438','洮南|436','通化|435','通化县|435','通榆|436','图们|433','汪清|433','延吉|433','永吉|432','榆树|431','镇赉|436'); cities['江苏省'] = new Array('宝应|514','滨海|515','常熟|520','常州|519','大丰|515','丹徒|511','丹阳|511','东海|518','东台|515','丰县|516','阜宁|515','赣榆|518','高淳|25','高邮|514','灌南|518','灌云|518','海安|513','海门|513','邗江|514','洪泽|517','淮安|517','淮阴|517','淮阴县|517','建湖|515','江都|514','江宁|25','江浦|25','江阴|510','姜堰|523','金湖|517','金坛|519','靖江|523','句容|511','昆山|520','溧水|25','溧阳|519','连云港|518','涟水|517','六合|25','南京|25','南通|513','沛县|516','邳县|516','启东|513','如东|513','如皋|513','射阳|515','沭阳|527','泗洪|527','泗阳|527','苏州|512','宿迁|527','睢宁|516','太仓|520','泰兴|523','泰州|523','通州市|513','铜山|516','无锡|510','吴江|512','吴县|512','武进|519','锡山|510','响水|515','新沂|516','兴化|523','盱眙|517','徐州|516','盐城|515','扬中|511','扬州|514','仪征|514','宜兴|510','张家港|520','镇江|511'); cities['江西省'] = new Array('安福|796','安义|791','安远|797','波阳|793','崇仁|794','崇义|797','大余|797','德安|792','德兴|793','定南|797','东乡|794','都昌|792','分宜|790','丰城|795','奉新|795','浮梁|798','抚州|794','赣县|797','赣州|797','高安|795','广昌|794','广丰|793','贵溪|701','横峰|793','湖口|792','会昌|797','吉安|796','吉安县|796','吉水|796','金溪|794','进贤|791','井岗山|796','景德镇|798','靖安|795','九江|792','九江县|792','乐安|794','乐平|798','黎川|794','莲花|799','临川|794','龙南|797','庐山|792','南昌|791','南昌县|791','南城|794','南丰|794','南康|797','宁都|797','宁冈|796','彭泽|792','萍乡|799','铅山|793','全南|797','瑞昌|792','瑞金|797','上高|795','上饶|793','上饶县|793','上犹|797','石城|797','遂川|796','泰和|796','铜鼓|795','万安|796','万年|793','万载|795','武宁|792','婺源|793','峡江|796','新干|796','新建|791','新余|790','信丰|797','兴国|797','星子|792','修水|792','寻乌|797','宜春|795','宜丰|795','宜黄|794','弋阳|793','鹰潭|701','永丰|796','永新|796','永修|792','于都|797','余干|793','余江|701','玉山|793','樟树|795','资溪|794'); cities['辽宁省'] = new Array('鞍山|412','北宁|416','北票|421','本溪|414','本溪县|414','昌图|410','长海|411','朝阳|421','朝阳县|421','大连|411','大石桥|417','大洼|427','丹东|415','灯塔|419','东港|415','法库|24','凤城|415','抚顺|413','抚顺县|413','阜新|418','阜新县|418','盖州|417','海城|412','黑山|416','葫芦岛|429','桓仁|414','建昌|429','建平|421','金县|411','锦州|416','喀喇沁左翼|421','开原|410','康平|24','宽甸|415','辽阳|419','辽阳县|419','辽中|24','凌海|416','凌源|421','盘锦|427','盘山|427','普兰店|411','清原|413','沈阳|24','绥中|429','台安|412','铁法|410','铁岭|410','铁岭县|410','瓦房店|411','西丰|410','新宾|413','新金|411','新民|24','兴城|429','岫岩|412','义县|416','营口|417','彰武|418','庄河|411'); cities['内蒙古'] = new Array('阿拉善右旗|4887','阿拉善左旗|4831','阿鲁科尔沁|476','阿马嗄旗|479','阿荣旗|470','敖汉旗|476','巴林右旗|476','巴林左旗|476','白云鄂博|472','包头|472','察哈尔右翼后旗|474','察哈尔右翼前旗|474','察哈尔右翼中旗|474','陈巴尔虎旗|470','赤峰|476','达拉特旗|477','达茂旗|472','磴口|478','东胜|477','东乌珠穆沁旗|479','多伦|479','额尔古纳右旗|470','额济纳旗|4888','鄂伦春|470','鄂托克旗|477','鄂托克前旗|477','鄂温克|470','二连浩特|479','丰镇|474','根河|470','固阳|472','海拉尔|470','杭锦后旗|478','杭棉旗|477','和林格尔|471','呼和浩特|471','化德|474','霍林郭勒|475','集宁|474','喀喇沁旗|476','开鲁|475','科尔沁左翼后旗|475','科尔沁左翼中旗|475','科右中旗|482','克什克腾旗|476','库伦旗|475','凉城|474','林西|476','临河|478','满洲里|470','莫力达瓦旗|470','奈曼旗|475','宁城|476','清水河|471','商都|474','四子王旗|474','苏尼特右旗|479','苏尼特左旗|479','太仆寺旗|479','通辽|475','突泉|482','土默特右旗|472','土默特左旗|471','托克托|471','翁牛特旗|476','乌海|473','乌拉特后镇|478','乌拉特前镇|478','乌拉特中镇|478','乌兰浩特|482','乌审|477','五原|478','武川|471','西乌珠穆沁旗|479','锡林浩特|479','镶黄旗|479','新巴尔虎右旗|470','新巴尔虎左旗|470','兴和|474','牙克石|470','伊金霍洛旗|477','扎赉特旗|482','扎兰屯|470','扎鲁特旗|475','正蓝旗|479','正镶白旗|479','准格尔旗|477','卓资|474'); cities['宁夏回族自治区'] = new Array('固原|954','海原|954','贺兰|951','惠农|952','泾源|954','灵武|953','隆德|954','彭阳|954','平罗|952','青铜峡|953','石嘴山|952','陶乐|952','同心|953','吴忠|953','西吉|954','盐池|953','银川|951','永宁|951','中宁|953','中卫|953'); cities['青海省'] = new Array('班玛|9853','称多|9835','达日|9851','大柴旦|9848','大通|971','德令哈|977','都兰|9832','甘德|9854','刚察|9847','格尔木|979','共和|974','贵德|9841','贵南|9842','海晏|970','河南省|9820','互助|972','化隆|972','湟源|972','湟中|972','尖扎|9828','乐都|972','冷湖|9849','龙羊峡|9839','玛多|9852','玛沁|975','茫崖|9840','门源|978','民和|972','囊谦|9836','祁连|9846','曲麻莱|9838','天峻|9833','同德|9844','同仁|973','乌兰|9831','西宁|971','兴海|9843','循化|972','玉树|976','杂多|9837','泽库|9828','治多|9834'); cities['山东省'] = new Array('安丘|536','滨州|543','博兴|543','苍山|539','曹县|530','昌乐|536','昌邑|536','长岛|535','长清|531','成武|530','茌平|635','单县|530','德州|534','定陶|530','东阿|635','东明|530','东平|538','东营|546','肥城|538','费县|539','高密|536','高青|533','高唐|635','冠县|635','广饶|546','海阳|535','河口|633','荷泽|530','桓台|533','惠民|543','即墨|532','济南|531','济宁|537','济阳|531','嘉祥|537','监邑|534','胶南|532','胶州|532','金乡|537','莒南|539','巨野|530','鄄城|530','垦利|546','莱芜|634','莱西|532','莱阳|535','莱州|535','乐陵|534','利津|546','梁山|537','聊城|635','临清|635','临朐|536','临沭|539','临沂|539','陵县|534','龙口|535','蒙阴|539','牟平|535','宁津|534','宁阳|538','蓬莱|535','平度|532','平邑|539','平阴|531','平原|534','栖霞|535','齐河|534','青岛|532','青州|536','庆云|534','曲阜|537','日照|633','荣城|631','乳山|631','商河|531','寿光|536','泗水|537','泰安|538','郯城|539','滕州|632','威海|631','微山|537','潍坊|536','文登|631','汶上|537','无棣|543','五莲|633','武城|534','夏津|534','莘县|635','新泰|538','烟台|535','兖州|537','阳谷|635','阳信|543','沂南|539','沂水|539','沂源|533','鱼台|537','禹城|534','郓城|530','枣庄|632','沾化|543','章丘|531','招远|535','诸城|536','淄博|533','邹城|537','邹平|543'); cities['山西省'] = new Array('安泽|357','保德|350','长治|355','长治县|355','长子|355','大宁|357','大同|352','大同县|352','代县|350','定襄|350','繁峙|350','方山|358','汾西|357','汾阳|358','浮山|357','高平|356','古交|351','古县|357','广灵|352','和顺|354','河津|359','河曲|350','洪洞|357','侯马|357','壶关|355','怀仁|349','浑源|352','霍州|357','吉县|357','稷山|359','绛县|359','交城|358','交口|358','介休|354','晋城|356','静乐|350','岢岚|350','岚县|358','离石|358','黎城|355','临汾|357','临县|358','临猗|359','灵丘|352','灵石|354','陵川|356','柳林|358','娄烦|351','潞城|355','孟县|353','宁武|350','偏关|350','平定|353','平陆|359','平顺|355','平遥|354','蒲县|357','祁县|354','沁水|356','沁县|355','沁源|355','清徐|351','曲沃|357','芮城|359','山阴|349','神池|350','石楼|358','寿阳|354','朔州|349','太谷|354','太原|351','天镇|352','屯留|355','万荣|359','文水|358','闻喜|359','五台|350','五寨|350','武乡|355','昔阳|354','隰县|357','夏县|359','乡宁|357','襄汾|357','襄垣|355','孝义|358','忻州|350','新绛|359','兴县|358','阳城|356','阳高|352','阳曲|351','阳泉|353','翼城|357','应县|349','永和|357','永济|359','右玉|349','榆次|354','榆社|354','垣曲|359','原平|350','运城|359','中阳|358','左权|354','左云|352'); cities['陕西省'] = new Array('安康|915','安塞|911','白河|915','白水|913','宝鸡|917','宝鸡县|917','彬县|910','长安|29','长武|910','城固|916','澄城|913','淳化|910','大荔|913','丹凤|914','定边|9227','凤县|917','凤翔|917','佛坪|916','扶风|917','府谷|9223','富平|913','富县|911','甘泉|911','高陵|29','韩城|913','汉阴|915','汉中|916','合阳|913','横山|9224','户县|29','华县|913','华阴|913','黄陵|911','黄龙|911','佳县|9222','泾阳|910','靖边|9228','岚皋|915','蓝田|29','礼泉|910','临潼|29','麟游|917','留坝|916','陇县|917','略阳|916','洛川|911','洛南|914','眉县|917','米脂|9225','勉县|916','南郑|916','宁强|916','宁陕|915','平利|915','蒲城|913','岐山|917','千阳|917','乾县|910','清涧|9240','三原|910','山阳|9244','商南|914','商州|914','神木|9229','石泉|915','绥德|9226','太白|917','铜川|919','潼关|913','渭南|913','吴堡|9220','吴旗|911','武功|910','西安|29','西乡|916','咸阳|910','兴平|910','旬阳|915','旬邑|910','延安|911','延长|911','延川|911','洋县|916','耀县|919','宜川|911','宜君|919','永寿|910','榆林|912','镇安|9243','镇巴|916','镇坪|915','志丹|911','周至|29','子长|911','子洲|9221','紫阳|915','柞水|9242'); cities['上海市'] = new Array('宝山区|21','长宁区|21','崇明县|21','川沙|21','奉贤|21','虹口区|21','黄浦区|21','嘉定区|21','金山|21','近郊区|21','静安区|21','卢湾区|21','闵行区|21','南汇|21','南市区|21','普陀区|21','青浦县|21','上海市|21','上海县|21','松江|21','吴松区|21','徐汇区|21','杨浦区|21','闸北区|21'); cities['四川省'] = new Array('安县|816','巴中|8279','宝兴|8430','璧山|8225','布拖|8457','苍溪|839','长宁|831','成都|28','崇州|28','达川|818','大邑|28','大竹|818','丹梭|833','德阳|838','都江堰|28','峨边|833','峨眉山|833','富顺|813','甘洛|8417','高县|831','珙县|831','古蔺|830','广安|826','广汉|838','广元|839','汉源|8463','合江|830','洪雅|833','华蓥|825','会东|8445','会理|8444','夹江|833','犍为|833','简阳|832','剑阁|839','江安|831','江油|816','金口河|833','金堂|28','金阳|8458','井研|833','筠连|831','开江|818','康定|836','阆中|817','乐山|833','乐至|832','雷波|8453','理县|8407','邻水|830','隆昌|832','芦山|8466','泸州|830','马边|833','马尔康|837','眉山|833','美姑|8459','米易|8228','绵阳|816','绵竹|838','冕宁|8447','名山|8461','木里|8440','沐川|833','内江|832','纳溪|830','南部|817','南充|817','南江|8278','南溪|831','宁南|8241','攀枝花|812','彭山|833','彭水|8298','彭州|28','蓬安|817','蓬溪|825','郫县|28','平昌|8270','平武|816','屏山|831','蒲江|28','普格|8456','青川|839','青神|833','邛崃|28','渠县|818','仁寿|833','荣县|813','三台|816','射洪|825','什邡|838','石棉|7437','双流|28','松潘|8493','遂宁|825','天全|8465','通江|8277','万源|818','旺苍|839','威远|832','温江|28','汶川|8489','武胜|825','西昌|834','西充|817','喜德|8455','新都|28','新津|28','兴文|831','秀山|8296','叙永|830','宣汉|818','雅安|835','盐边|8229','盐亭|816','盐源|8247','仪陇|817','宜宾|831','荥经|8462','营山|817','酉阳|8295','岳池|826','越西|8452','昭觉|8411','中江|838','资阳|832','资中|832','梓潼|816','自贡|813'); cities['天津市'] = new Array('宝坻|22','蓟县|22','静海|22','宁河|22','天津|22','武清|22'); cities['西藏自治区'] = new Array('阿里|8073','八宿|8056','巴青|8061','班戈|8067','比如|8062','昌都|895','措勤|8069','丁青|8059','堆龙德庆|8015','贡嘎|8049','江达|8051','拉萨|891','林芝|894','洛隆|8057','芒康|8054','那曲|896','尼玛|8081','尼木|8017','曲水|8016','仁布|8018','日喀则|892','山南|893','索县|8078','扎囊|8040'); cities['新疆维吾尔自治区'] = new Array('阿合奇|997','阿克苏|997','阿克陶|908','阿拉尔|997','阿勒泰|906','阿图什|908','阿瓦提|997','巴楚|998','拜城|997','博湖|996','博乐|909','布尔律|906','布克赛尔|990','策勒|903','察布查尔|999','昌吉|994','额敏|901','福海|906','阜康|994','富蕴|906','伽师|998','巩留|999','哈巴河|906','哈密|902','和静|996','和硕|996','和田|903','呼图壁|994','霍城|999','吉木乃|906','吉木萨尔|994','精河|909','柯坪|997','克拉玛依|990','库车|997','库尔勒|996','奎屯|992','咯什|998','轮台|996','洛浦|903','马里坤|902','玛纳斯|994','麦盖提|998','米泉|994','民丰|903','墨玉|903','木垒|994','尼勒克|999','皮山|903','奇台|994','且末|996','青河|906','若羌|996','沙湾|993','沙雅|997','莎车|998','鄯善|995','石河子|993','疏附|998','疏勒|999','塔城|901','塔什库尔干|999','特克斯|999','吐鲁番|995','托克逊|995','托里|901','尉犁|996','温泉|909','温宿|997','乌鲁木齐|991','乌恰|908','乌什|997','乌苏|992','新和|997','新源|999','焉耆|996','叶城|998','伊宁|999','伊吾|902','英吉沙|998','于田|903','裕民|901','岳普湖|998','泽普|998','昭苏|999'); cities['云南省'] = new Array('安宁|871','保山|875','宾川|872','沧源|883','昌宁|875','呈贡|871','澄江|877','楚雄|878','大关|870','大理|872','大姚|878','德钦|887','东川|881','峨山|877','洱源|872','凤庆|883','福贡|886','富民|871','富宁|876','富源|874','个旧|873','耿马|883','贡山|886','广南|876','河口|873','鹤庆|872','红河|873','华宁|877','华坪|888','会泽|874','建水|873','剑川|872','江城|879','江川|877','金平|873','晋宁|871','景东|879','景谷|879','景洪|691','开远|873','昆明|871','兰坪|886','澜沧|879','丽江|888','梁河|692','临沧|883','六库|886','龙陵|875','陇川|692','泸水|886','泸西|873','鲁甸|870','陆良|874','禄丰|878','禄劝|871','路南|871','潞西|692','绿春|873','罗平|874','麻栗坡|876','马关|876','马龙|874','蒙自|873','孟海|691','孟腊|691','孟连|879','弥渡|872','弥勒|873','墨江|879','牟定|878','南华|878','南涧|872','宁蒗|888','屏边|873','普洱|879','巧家|870','丘北|876','曲靖|874','瑞丽|692','师宗|874','施甸|875','石屏|873','双柏|878','双江|883','水富|870','思茅|879','嵩明|871','绥江|870','腾冲|875','通海|877','畹町|692','威信|870','巍山|872','维西|887','文山|876','武定|878','西畴|876','西盟|879','祥云|872','新平|877','宣威|874','寻甸|874','盐津|870','砚山|876','漾濞|872','姚安|878','宜良|871','彝良|870','易门|877','盈江|692','永德|883','永平|872','永仁|878','永善|870','永胜|888','玉溪|877','元江|877','元谋|878','元阳|873','云龙|872','云县|883','昭通|870','镇康|883','镇雄|870','镇沅|879','中甸|887'); cities['浙江省'] = new Array('安吉|572','苍南|577','长兴|572','常山|570','淳安|571','慈溪|574','岱山|580','德清|572','东阳|579','洞头|577','奉化|574','富阳|571','海宁|573','海盐|573','杭州|571','湖州|572','黄岩|576','嘉善|573','嘉兴|573','建德|571','江山|570','椒江|576','金华|579','金华县|579','缙云|578','景宁|578','开化|570','兰溪|579','乐清|577','丽水|578','临安|571','临海|576','龙泉|578','龙游|570','宁波|574','宁海|574','瓯海|577','磐安|579','平湖|573','平阳|577','浦江|579','普陀|580','青田|578','庆元|578','衢县|570','衢州|570','瑞安|577','三门|576','上虞|575','绍兴|575','绍兴县|575','嵊泗|580','嵊县|575','松阳|578','遂昌|578','台州|576','泰顺|577','天台|576','桐庐|571','桐乡|573','温岭|576','温州|577','文成|577','武义|579','仙居|576','象山|574','萧山|571','新昌|575','义乌|579','鄞县|574','永嘉|577','永康|579','余杭|571','余姚|574','玉环|576','云和|578','镇海|574','舟山|580','诸暨|575'); cities['重庆市'] = new Array('巴县|23','北碚|23','壁山|23','长寿|23','城口|23','大足|23','垫江|23','丰都|23','奉节|23','涪陵|23','合川|23','江北|23','江津|23','开县|23','梁平|23','南川|23','南桐|23','綦江|23','黔江|23','荣昌|23','石柱|23','双桥|23','铜梁|23','潼南|23','万县|23','巫山|23','巫溪|23','武隆|23','永川|23','云阳|23','忠县|23','重庆市|23'); cities['澳门特别行政区'] = new Array('大堂区|853','风顺堂区|853','花地玛堂区|853','嘉模堂区|853','路氹城|853','圣安多尼堂区|853','圣方济各堂区|853','望德堂区|853'); cities['台湾省'] = new Array('高雄市|','花莲县|','基隆市|','嘉义市|','嘉义县|','金门县|','连江县|','苗栗县|','南投县|','澎湖县|','屏东县|','台北市|','台东县|','台南市|','台中市|','桃园市|','新北市|','新竹市|','新竹县|','宜兰县|','云林县|','彰化县|'); cities['香港特别行政区'] = new Array('北区|852','大埔区|852','东区|852','观塘区|852','黄大仙区|852','九龙城区|852','葵青区|852','离岛区|852','南区|852','荃湾区|852','沙田区|852','深水埗区|852','屯门区|852','湾仔区|852','西贡区|852','油尖旺区|852','元朗区|852','中西区|852');
//]]>
</script>


    <input type="hidden" id="savedlei" name="savedlei">
    <input type="text" id="txtCompanyVal" style="display: none">
    <script type="text/javascript">PlaceN('公司名称','txtCompanyName','是  ','是  ','50');PlaceN('英文公司名称','txtCompanyEn','是  ','是  ','200');PlaceN('具体街道','txtAddr','是  ','是  ','200');PlaceN('邮编','txtPost','是  ','是  ','50');PlaceN('公司邮箱','txtCompEmail','是  ','是  ','100');PlaceN('公司地址','txtArea','是  ','是  ','50');PlaceN('公司电话','txtCompTelCountry','是  ','是  ','50');PlaceN('公司传真','txtCompFaxCountry','是  ','是  ','50');PlaceN('是否为会员企业','isv@isbool','否  ','否  ','50');PlaceN('公司简称','txtEasyCompany','是  ','是  ','50');PlaceN('公司网址','txtCompHttp','是  ','是  ','50');PlaceN('所属行业','sltCompHY','是  ','是  ','50');PlaceN('公司性质','sltCompXZ','是  ','是  ','50');PlaceN('成立日期','txtComeDate','是  ','是  ','50');PlaceN('员工人数','txtEmploy','是  ','是  ','50');PlaceN('注册资金（万元）','txtDreg','是  ','是  ','50');PlaceN('产品类别','txt_over@chkproduct','是  ','是  ','50');PlaceN('产品品牌','txtProduct','是  ','是  ','200');PlaceN('英文简称','txtEasyCompanyEn','否  ','否  ','50');PlaceN('公司英文地址','txtAddrEn','是  ','是  ','200');PlaceN('英文品牌','txtProductEn','是  ','是  ','100');PlaceN('收件公司','txtPostName','是  ','是  ','50');PlaceN('收件地址','txtPostAddr','是  ','是  ','200');PlaceN('收件邮编','txtPostCode','否  ','否  ','50');PlaceN('收件手机','txtPostTelCountry','是  ','是  ','11');PlaceN('收件人姓名','txtPostFaxCountry','是  ','是  ','50');PlaceN('微信公众号','txtWeixin','是  ','是  ','200');PlaceN('品牌来源国','sltEasyCompanyEn','是  ','是  ','200');</script><script type="text/javascript"> function Judge(){if(_isNull('txtCompanyName','公司名称')){return false;}if(_isNull('txtCompanyEn','英文公司名称')){return false;}if(_isNull('txtAddr','具体街道')){return false;}if(_isNull('txtPost','邮编')){return false;}if(_isNull('txtCompEmail','公司邮箱')){return false;}if(_isBox('txtCompEmail')){return false;}if(_phoneIsNull('txtArea','txtSf','txtCity','公司地址')){return false;}if(_phoneIsNull('txtCompTelCountry','txtCompTelArea','txtCompTel','公司电话')){return false;}if(_phoneIsNull('txtCompFaxCountry','txtCompFaxArea','txtCompFax','公司传真')){return false;}if(_isNull('txtEasyCompany','公司简称')){return false;}if(_isNull('txtCompHttp','公司网址')){return false;}if(_isNull('sltCompHY','所属行业')){return false;}if(_isNull('sltCompXZ','公司性质')){return false;}if(_isNull('txtComeDate','成立日期')){return false;}if(_isNull('txtEmploy','员工人数')){return false;}if(_isNull('txtDreg','注册资金（万元）')){return false;}if(_isNumber('txtDreg')){return false;}if(_isNull('txt_over@chkproduct','产品类别')){return false;}if(_isNull('txtProduct','产品品牌')){return false;}if(_isNull('txtAddrEn','公司英文地址')){return false;}if(_isNull('txtProductEn','英文品牌')){return false;}if(_isNull('txtPostName','收件公司')){return false;}if(_isNull('txtPostAddr','收件地址')){return false;}if(_isNull('txtPostTelCountry','收件手机')){return false;}if(_isMobile('txtPostTelCountry')){return false;}if(_isNull('txtPostFaxCountry','收件人姓名')){return false;}if(_isNull('txtWeixin','微信公众号')){return false;}if(_isNull('sltEasyCompanyEn','品牌来源国')){return false;} return true; } </script>
    <input type="hidden" id="isExitTxt">
    <script src="statics/js/page01.js" type="text/javascript"></script>
    <script src="statics/js/newScroll.js" type="text/javascript">
    </script>
    
    <input id="hidCountryFlag" type="hidden" value="">
    <script src="statics/js/showError2.js" type="text/javascript"></script>

    </div>

    </div>
    <div id="PF" style="height: auto;">
        <p style="text-align:left;font-family:&#39;font-size:12px;">
	<span style="font-family:微软雅黑, &#39;;"><span style="font-size:12px;">Powered by&nbsp;</span><strong><a href="" target="_blank"><span style="font-size:12px;">lichang</span></a><span style="font-size:12px;">&nbsp;&nbsp;</span></strong><span style="line-height:1.5;font-size:12px;">©2017-2018</span></span> 
</p>
<p style="text-align:right;font-family:&#39;font-size:12px;">
	<span style="font-size:15px;line-height:1.5;font-family:微软雅黑, &#39;background-color:#FFFFFF;"><a href="http://www.sportshow.com.cn/archiver/"><span style="line-height:1.5;font-family:微软雅黑, &#39;font-size:12px;background-color:#FFFFFF;font-size:12px;">email：1575898486@qq.com</span></a></span> 
</p>
<p style="text-align:right;font-family:&#39;font-size:12px;">
	<span style="font-family:Helvetica, Tahoma, Arial, &#39;line-height:22.5px;background-color:#FFFFFF;font-size:12px;">©2017-2018 展商服务管理系统  版权所有(豫ICP备050835XXXX号)</span> 
</p><div style="display:none;">版本号:2.7.2013.8.26</div>
    </div>
    <input type="hidden" id="PHId" value="PH">
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


<div id="_my97DP" style="position: absolute; top: -1970px; left: -1970px;"><iframe style="width: 186px; height: 198px;" src="./展商报名-填写基本信息_files/My97DatePicker.html" frameborder="0" border="0" scrolling="no"></iframe></div>
  </body>
</html>