﻿var testBox = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
var testPost = /^[0-9]{6}$/;
var testPost2 = /^[0-9]{0,9}$/;
var testMobile = /^[1][34578]\d{9}$/;
var testMobile2 = /^[0-9]{0,15}$/;
function returnError(bol,str,str2)
{
    if (bol)
        return "<div style='float:left; position:relative;top:8px;'><img src='statics/images/gz-register/validatorValid.png'/></div><div style='float:left;height:14px;line-height:14px;position:relative;top:8px;'><label style='color:black;'>" + str2 + "</label></div>";
else
    return "<div style='float:left;position:relative;top:8px;'><img src='statics/images/gz-register/validatorError.png'/></div><div style='float:left;height:14px;line-height:14px;margin-left:2px;position:relative;top:8px;'><label style='color:red;'>" + str + str2 + "</label></div>";
}
function viewError(obj, fun,str,_number)
{
    var func = "", f = false;
    if (fun == "_isBox")
        func = testBox;
    else if (fun == "_isPost") {
        if ($get("hidCountryFlag").value == "") {
            func = testPost;
        }
        else {
            func = testPost2;
        }
    }
    else if (fun == "_isMob") {
        if ($get("hidCountryFlag").value == "") {
            func = testMobile;
        }
        else {
            func = testMobile2;
        }
    }
    else if (fun == "_isPhone")
    {
        var po1, po2, po3;
        if (_number == "1")
        {
            po1 = $(obj); po2 = po1.next(); po3 = po2.next();
        }
        else if (_number == "2")
        {
            po2 = $(obj); po1 = po2.prev(); po3 = po2.next();
        }
        else
        {
            po3 = $(obj); po2 = po3.prev(); po1 = po2.prev();
        }
        if (po1 && po2 && po3) f = true, viewStr = "";
        var strP = po1.val() + po2.val() + po3.val();


        var strTemp1 = strP.substring(1, strP.length);
         
        if (f&&(strP.indexOf('码') > 0 || strP.indexOf('号') > 0))
            viewStr = returnError(false, str, "填写完整！");

        else if (isNaN(strTemp1))
          viewStr= returnError(false, str, "格式不正确！");
        else
         viewStr= returnError(true, str, "正确");
        $(obj).parents(".divTd2").nextAll().empty();
        $(obj).parents(".divTd2").after(viewStr);
        return;

    }
    var viewStr = "";
   if (func != ""&&obj.value!="")
    {
        if (func.test(obj.value))
            viewStr = returnError(true,str,"正确");
        else
            viewStr = returnError(false, str, "格式不正确！");
    }
    $(obj).parents(".divTd2").nextAll().empty();
    $(obj).parents(".divTd2").after(viewStr);
}