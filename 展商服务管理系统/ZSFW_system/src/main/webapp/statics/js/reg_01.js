
function _get(_Id) {
    var obj = document.getElementById(_Id);
    if (obj) {
        return obj.value;
    }
    else {
        return "";
    }
}
var flag = false;
function _testReg_01() {
    if (_isNull('txtLoginPhone', '登录手机')) { return false; }
    if (_isNull('txtLoginPwd', '登录密码')) { return false; }
    if (_isNull('txtLoginPwd2', '确认登录面')) { return false; }
    if (flag) {
        return false;
    }
    if (_get("txtLoginPwd") != _get("txtLoginPwd2")) {
        return false;
    }
    if (Judge()) {
        var _arr = new Array;
        var _value = new Array;
        
        if (document.getElementById("radio1").checked = true) {
            _arr.push("ChengWei"); _value.push("先生");
        }
        else {
            _arr.push("ChengWei"); _value.push("女士");
        }
        _arr.push("LinkName"); _value.push(_get("txt_name"));
        _arr.push("Department"); _value.push(_get("txt_Department"));
        _arr.push("JobTitle"); _value.push(_get("txt_JobTitle"));
        _arr.push("LinkMob"); _value.push(_get("txt_LinkMob"));
        _arr.push("LinkEmail"); _value.push(_get("email"));
        _arr.push("CompanyName"); _value.push(_get("companyName"));
        _arr.push("Website"); _value.push(_get("Website"));
        _arr.push("CompAddr"); _value.push(_get("companyAddress"));

        _arr.push("Postcode"); _value.push(_get("postcode"));
        var _phone = _get("phone01") + "-" + _get("phone02") + "-" + _get("phone03");
        var _fax = _get("fax01") + "-" + _get("fax02") + "-" + _get("fax03");
        if (_phone.indexOf('代', 0) > 0 || _phone.indexOf('码', 0) > 0)
            _phone = "";
        if (_fax.indexOf('代', 0) > 0 || _fax.indexOf('码', 0) > 0)
            _fax = "";
        _arr.push("LinkTel"); _value.push(_phone);
        _arr.push("LinkFax"); _value.push(_fax);
        _arr.push("RowState"); _value.push("1");
        var areat = _get("txtArea") != "" ? _get("txtArea").split(';')[0] : "";
        var cityt = _get("txtCity") != "" ? _get("txtCity").split('|')[0] : "";
        _arr.push("Area"); _value.push(areat);
        _arr.push("Sf"); _value.push(_get("txtSf"));
        _arr.push("City"); _value.push(cityt);

        _arr.push("NetUserName"); _value.push(_get("txtLoginPhone"));
        _arr.push("NetPassword"); _value.push(_get("txtLoginPwd"));

        var DF = _get("hidden_DF");
        V_Reg_01.Insert_Visit_Net(_arr, _value, DF, 'Cn', backFun);
    }
    else {
        return false;
    }

}
function backFun(backStr) {
    if (backStr == "Y") {
        document.getElementById("Img_V_next").src = "../images/newXYB.jpg";
        alert(_get("txt_name") + _get("slct_chehu") + "你的信息已经存在，不能重复登记");
    }
    else if (backStr == "N") {
        alert("提交失败！");
    }
    else {
        var backStrArr = backStr.split('&');
        window.location = "aboutactive.aspx?A=" + backStrArr[0] + "&U=" + backStrArr[2];
    }
}

function backMsg(backStr) {
    if (backStr == true) {
        viewStr = returnError(true, "", "");
        flag = false;
    }
    else {
        viewStr = returnError(false, "", "该手机号已注册，请点击右上角”观众中心“，以此手机号为用户名登录");
        flag = true;
        $("#txt_LinkMob").val("")
    }
    $("#txtLoginPhone").parents("td").nextAll("td").html(viewStr);
}

$(function () {
    $("#txtLoginPhone").blur(function () {
        var phone = $("#txtLoginPhone").val();
        var viewStr = "";
        var testBox = /^1[0-9]{10}$/;
        if (testBox != "" && phone != "") {
            if (!(testBox.test(phone))) {
                viewStr = returnError(false, "", "您输入的手机号格式不正确！");
            } else {
                V_Reg_01.select_DeVisit_Net_Exist(phone, backMsg);
                $("#txt_LinkMob").val(phone)
            }
            $(this).parents("td").nextAll("td").html(viewStr);
        }
    });
    $("#txtLoginPwd").blur(function () {

        var txtPwd = $("#txtLoginPwd").val();
        if (txtPwd.length > 5 && txtPwd.length < 25) {
            viewStr = returnError(true, "", "");
        }
        else {
            viewStr = returnError(false, "", "登录密码应该设置为6-25位的字符");
        }
        $(this).parents("td").nextAll("td").html(viewStr);
    })

    $("#txtLoginPwd2").blur(function () {

        var txtPwd2 = $("#txtLoginPwd2").val();
        var txtPwd1 = $("#txtLoginPwd").val();
        if (txtPwd2.length > 0) {
            if (txtPwd1 == txtPwd2) {
                viewStr = returnError(true, "", "");
            }
            else {
                viewStr = returnError(false, "", "登录密码与确认密码不一致");
            }
        }
        else {
            viewStr = "";
        }
        $(this).parents("td").nextAll("td").html(viewStr);
    })


})