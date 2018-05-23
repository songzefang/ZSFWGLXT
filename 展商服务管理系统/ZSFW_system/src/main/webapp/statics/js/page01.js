

function isVIP(str) {
    $("#isVip").val(str);
}
function showSelect(id, str) {
    $("#" + id).val(str);
}
function addSelect(id, str) {
    var slt = document.getElementById(id);
    var objOption = new Option(str, str);
    slt.options.add(objOption);
    $(slt).val(str);
}
function ShowTypeDiv(oEvent) {
    var _event;
    if (window.event) {
        _event = window.event;
    }
    else {
        _event = oEvent;
    }
    var _element = _event.srcElement ? _event.srcElement : _event.target;

    if (_element.checked) {
        document.getElementById(_element.getAttribute("id") + "_Div").style.display = "";
    }
    else {
        document.getElementById(_element.getAttribute("id") + "_Div").style.display = "none";
    }

}

function SelectShowTypeDiv(oEvent) {
    var _event;
    if (window.event) {
        _event = window.event;
    }
    else {
        _event = oEvent;
    }
    var options = _event.srcElement ? _event.srcElement : _event.target;
    for (var i = 0; i < options.length; i++) {
        var option = options[i];
        if (option.value == "") {

        } else {
            var item2 = $("#txt_over1 input[name='" + option.id + "']");
            for (var j = 0; j < item2.length; j++) {
                item2[j].checked = false;
            }

            if (option.selected) {
                document.getElementById(option.getAttribute("id") + "_Div").style.display = "";
            }
            else {
                document.getElementById(option.getAttribute("id") + "_Div").style.display = "none";
            }
        }
    }
}
function saveDalei() {

    MessageWebService.isExisit($("#txtCompanyName").val().trim(), caFun);
    if ($("#isExitTxt").val() == "1") {
        return false;
    }
    var companyName = $("#txtCompanyName").val().trim();
    if (companyName == "请输入公司全称（请与公司营业执照一致）") {
        alert("请输入公司名称");
        return false;
    }    
    if (!Judge()) {
        return false;
    }
    var options = $("#txt_over option");
    var items = $("#txt_over1 input[name='chkproduct']");

    var dalei = "", xiaolei = "";
    for (var i = 0; i < options.length; i++) {
        var option = options[i];
        if (option.selected) {
            dalei = "*" + option.value;
            var item2 = $("#txt_over1 input[name='" + option.id + "']");
            for (var j = 0; j < item2.length; j++) {
                if (item2[j].checked) {
                    xiaolei += "*" + item2[j].value;
                }
            }
        }


    }

    xiaolei = xiaolei.substring(1);
    dalei = dalei.substring(1);
    if (xiaolei != "" && dalei != "") {
        document.getElementById("savedlei").value = dalei + "$" + xiaolei;
    }
    else {
        alert('请选择产品类别');
        return false;
    }
    var cer1 = document.getElementById("hidFileName1").value;
    if (cer1 == "") {
        alert('请上传营业执照/组织机构代码证');
        return false;
    }   

    var readItems = $("#read input[name='chkRead']");
    if (!readItems[0].checked) {
        alert('请阅读并勾选参展特别约定');
        return false;
    }

    return true;
}
var comName = "";

function isExite(obj) {
    comName = $(obj).val().trim();
    if (comName != "请输入公司全称" && comName != "") {

        MessageWebService.isExisit(comName, caFun);
    }

    $("#txtCompanyVal").val(comName);

    if (comName == "请输入公司全称") {
        $("#txtCompanyVal").val("");
    }

}
//2016-07-05
function isEnExite(obj, value) {
    comName = $(obj).val().trim();
    if (comName != "如无英文，请填写汉语拼音" && comName != "") {
        if (value == 1) {
            $("#txtCompanyEn").val(comName);
        } if (value == 2) {
            $("#txtAddrEn").val(comName);
        }
    }
    if (comName == "如无英文，请填写汉语拼音") {
        if (value == 1) {
            $("#txtCompanyEn").val("如无英文，请填写汉语拼音");
        } if (value == 2) {
            $("#txtAddrEn").val("如无英文，请填写汉语拼音");
        }
    }
    if (comName == "如没有注册品牌，请填写“无”") {
        if (value == 1) {
            $("#txtProduct").val("如没有注册品牌，请填写“无”");
        }
    }
    

}
function qEnFont(obj) {
    var objV = obj.value;
    if (objV.indexOf('如无英文') != -1) {
        obj.value = "";
        obj.style.cssText = "color:black;text-align:left;";
    }
    if (objV.indexOf('如没有注册品牌') != -1) {
        obj.value = "";
        obj.style.cssText = "color:black;text-align:left;";
    }
    if (objV.indexOf('如无') != -1) {
        obj.value = "";
        obj.style.cssText = "color:black;text-align:left;";
    }
    if (objV.indexOf('与营业执照一致') != -1) {
        obj.value = "";
        obj.style.cssText = "color:black;text-align:left;";
    }
}

function caFun(str) {
    if (str == "存在") {
        $("#isExitTxt").val("1");
        alert("贵公司的信息已经存在，请等待主办的审核");

    }
    else {
        $("#isExitTxt").val("0");
    }
}

function copyXi() {
    orderNull2(document.getElementById("txtPostName"), document.getElementById("txtCompanyName").value, '请输入');
    document.getElementById("txtPostAddr").value = document.getElementById("txtSf").value + document.getElementById("txtCity").value.split('|')[0] + document.getElementById("txtAddr").value;
    //原收件人座机的三个框改为收件手机一个框
    var tel1 = document.getElementById("txtPostTel");
    //var tel2 = document.getElementById("txtPostTelCountry");
    //var tel3 = document.getElementById("txtPostTelArea");
    //原传真的三个框改为收件人一个框
    var fax1 = document.getElementById("txtPostFaxCountry");
    //var fax2 = document.getElementById("txtPostFaxArea");
    //var fax3 = document.getElementById("txtPostFax");
    //orderNull2(tel1, document.getElementById("txtCompTel").value,'号');
    //orderNull2(tel2, document.getElementById("txtCompTelCountry").value,'代');
    //orderNull2(tel3, document.getElementById("txtCompTelArea").value,'号');
    document.getElementById("txtPostCode").value = document.getElementById("txtPost").value;
    //orderNull2(fax1, document.getElementById("txtCompFaxCountry").value,'代');
    //orderNull2(fax2, document.getElementById("txtCompFaxArea").value,'号');
    //orderNull2(fax3, document.getElementById("txtCompFax").value,'号');
}

function orderNull2(obj, strVal, str) {
    if (strVal.indexOf(str) == -1) {
        obj.style.cssText = "color:black;text-align:left;";
        obj.value = strVal;
    }
}

function hylb(event, hystr) {

    var _event;
    if (window.event) {
        _event = window.event;
    }
    else {
        _event = event;
    }
    var lb = "";
    var options = _event.srcElement ? _event.srcElement : _event.target;
    //var option = $(event).find("value=" + options).id;
    //var id =$("#sltCompHY option:selected").attr("id");
    var hyids = new Array();
    hyids = hystr.split(",");
    document.getElementById("txt_over").options.length = 1;
    $("#txt_over option[class='option1']").attr("selected", "true");
    for (var a = 0; a < hyids.length; a++) {       
        document.getElementById("sltDaLei_" + hyids[a] + "_Div").style.display = "none";
    }
    for (var i = 0; i < options.length; i++) {
        var option = options[i];
        if (option.selected) {
            $.post("../../Support/HyPdkind.ashx", { id: option.id }, function (data) {
                if (data != "") {
                    var t1 = data.split('###');
                    for (var i = 0; i < t1.length; i++) {
                        var t2 = t1[i].split('##');
                        $('#txt_over').append('<option id="sltDaLei_' + t2[0] + '" value="' + t2[1] + '|' + t2[2] + '">' + t2[1] + '</option>');
                    }
                }
            });
        }
    }
}
