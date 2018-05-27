var testfu = /^[A-Za-z0-9\u4e00-\u9fa5]*$/;
var testIsNumber = /^[0-9]*$/;
var testBox = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
var testPost = /^[0-9]{6}$/;
//var testMobile = /^(?:13\d|15[89])-?\d{5}(\d{3}|\*{3})$/;
var testMobile = /^[1][34578]\d{9}$/;

function _getObj(_id)
{
    var obj;
    if (_id)
    {
        obj = document.getElementById(_id.toString());
        if (obj && obj.nodeType == 1 && obj.type == "hidden")
        {
            obj = document.getElementById(obj.value);
        }
        return obj;
    }
}

function _getObjByName(_id) {
    var obj; 
    if (_id) {
        obj = document.getElementsByName(_id.toString());
        return obj[0];
    }
}

function _get(_id)
{
    var _Id = _getObj(_id);
    if (_Id) { return _Id.value; }
}
function _focus(_id)
{
    try
    {
        scrollDiv(_id);
        var _Id = _getObj(_id);
        if (_Id) { _Id.focus(); }
       
    }
    catch (e)
    {

    }
}

function scrollDiv(Sid)
{
    try
    {
        if (document.activeElement)
        {
            if (document.activeElement.id != Sid)
            {

                var id = $("#" + Sid).parents("[name='ZK']").attr("id");
                if (document.getElementById(id) && document.getElementById(id).style.display == "none")
                {
                    var imId = id.substring(id.length - 1);
                    $use(id, null, "im_" + imId);
                }
            }
        }
    }
    catch (e)
    {

    }
}
function _isNull(_id, _str) {
    var ischkorrad = false;
    if (_id && _id.toString().indexOf('@') > 0) {
        ischkorrad = true;
        _id = _id.toString().substring(_id.toString().indexOf('@') + 1);
    }
    var obj = _getObj(_id);
    if (ischkorrad) {
        obj = _getObjByName(_id);
    } 

    if (!obj) return false;
    if (obj.tagName == "SELECT")
    {
        if (obj.value.indexOf('选') > 0 || obj.value == "")
        {
            alert("请选择" + _str);
            scrollDiv(_id);
            return true;
        }
    }
    else if (obj.tagName == "INPUT")
    {
        var _type = obj.type;
        if (_type == "text")
        {
            var s = _get(_id).replace(/(^\s*)/g, "");
            if (s == "" || s.indexOf('如无') != -1)
            {
                alert("请输入" + _str);
                _focus(_id);
                return true;
            }            
        }
        else if (_type == "radio" || _type == "checkbox") { 
            var isbol = true;
            var _name = document.getElementsByName(_id);
            for (var i = 0; i < _name.length; i++)
            {
                if (_name[i].checked)
                {
                    isbol = false;
                }
            }
            if (isbol)
            {
                alert("请选择" + _str);
                scrollDiv(_id);
                return true;
            }
        }
    }
    else if (obj.tagName == "TEXTAREA")
    {
        var s = _get(_id).replace(/(^\s*)/g, "");
        if (s == "")
        {
            alert("请输入" + _str);
            _focus(_id);
            return true;
        }
    }
    return false;
}
function _isNumber(_id)
{
    if (!testIsNumber.test(_get(_id)))
    {
        alert("只能输入数字");
        _focus(_id);
        return true;
    }
    else
        return false;
}
function _isBox(_id)
{
    var box = _get(_id);
    if (!testBox.test(box) && box != "")
    {
        alert("邮箱格式不正确");
        _focus(_id);
        return true;
    }
    return false;
}
function _isPost(_id)
{
    var post = _get(_id);
    if ((_isNumber(_id) || !testPost.test(post)) && post != "")
    {
        alert("邮编格式不正确");
        _focus(_id);
        return true;
    }
    return false;
}

function _isMobile(_id) {
    if (!testMobile.test(_get(_id))) {
        alert("手机格式不正确");
        _focus(_id);
        return true;
    }
    else
        return false;
}
function _sfocus(_p01, _p02, _p03, str01, str02)
{
    var po1 = _get(_p01), po2 = _get(_p02), po3 = _get(_p03);
    if (po1.indexOf(str01) > 0 || po1.indexOf(str02) > 0 || po1 == "")
        _focus(_p01);
    else if (po2.indexOf(str01) > 0 || po2.indexOf(str02) > 0 || po2 == "")
        _focus(_p02);
    else if (po3.indexOf(str01) > 0 || po3.indexOf(str02) > 0 || po3 == "")
        _focus(_p03);

}
function _phoneIsNull(_p01, _p02, _p03, _str)
{
    var isobj = _getObj(_p01);
    if (!isobj) return false;
    var po1 = _get(_p01), po2 = _get(_p02), po3 = _get(_p03), f = false;
    if (po1 && po2 && po3) f = true;
    var str = _get(_p01) + _get(_p02) + _get(_p03);
    var istagName = false;
    if (isobj.nodeType == 1)
    {
        if (isobj.tagName == "INPUT")
            istagName = true;
        else
            istagName = false;
    }
    if (istagName)
    {
        if ((str.indexOf('码') > 0 || str.indexOf('号') > 0) && f)
        {
            alert("请将" + _str + "填写完整");
            _sfocus(_p01, _p02, _p03, '码', '号');
            return true;
        }
    }
    else
    {
        if (str.indexOf('选') > 0 || !f)
        {
            alert("请选择" + _str);
            _sfocus(_p01, _p02, _p03, '选', '选');
            return true;
        }
    }
    return false;
}
function preFun(obj, _colN, _isrequire)
{
    var pre = $(obj.parentNode).prev();
    var ti = "";
    if (_isrequire.indexOf('是') != -1)
    {
        ti = "<span class='nec'>*</span>";
    }
    if (_colN != "")
    {
        ti += "<span>" + _colN + "：</span>";
    }
    pre.empty();
    pre.append(ti);
}

function PlaceN(_colN, _id, _isShow, _isrequire, _MaxLength) {
    Preview_PlaceN(_colN, _id, _isShow, _isrequire, _MaxLength);
    if (_id && _id.toString().indexOf('@') > 0)
        _id = _id.toString().substring(0, _id.toString().indexOf('@'));
    var obj = _getObj(_id);
    if (obj && _colN.toString() != "")
    {
        if (_isShow.indexOf('否') != -1 && obj)
        {
            obj.parentNode.parentNode.style.display = "none";
            return;
        }
        preFun(obj, _colN, _isrequire); //打印说明文字和*号
    }
    if (obj && obj.tagName == "INPUT" && obj.getAttribute("type") == "text" && _MaxLength.toString() != "" && _MaxLength.toString() != null) {
        //限制字数
        obj.setAttribute("maxLength", _MaxLength.toString());
    }
    else if (obj && obj.tagName == "TEXTAREA" && _MaxLength.toString() != "" && _MaxLength.toString() != null) {

        $(obj).bind("keydown", { max: _MaxLength }, function (e) {
            return $(this).val().length < e.data.max || e.keyCode == 8;
        });

        $(obj).bind("change", { max: _MaxLength }, function (e) {
            if ($(this).val().length > e.data.max) {
                alert("字数超出了最大字数，超出的部分已经被截");
                $(this).val($(this).val().substring(0, e.data.max));
            }
        });
    }
    
}
//Preview界面修改操作
function Preview_PlaceN(_colN, _id, _isShow, _isrequire, _MaxLength) {
    _id = "Pre" + _id;
    if (_id && _id.toString().indexOf('@') > 0)
        _id = _id.toString().substring(0, _id.toString().indexOf('@'));
    var obj = _getObj(_id);
    if (obj && _colN.toString() != "") {
        if (_isShow.indexOf('否') != -1 && obj) {
            obj.parentNode.parentNode.style.display = "none";
            return;
        }
        preFun(obj, _colN, _isrequire); //打印说明文字和*号
    }
    if (obj && obj.tagName == "INPUT" && obj.getAttribute("type") == "text" && _MaxLength.toString() != "" && _MaxLength.toString() != null) {
        //限制字数
        obj.setAttribute("maxLength", _MaxLength.toString());
    }
    else if (obj && obj.tagName == "TEXTAREA" && _MaxLength.toString() != "" && _MaxLength.toString() != null) {

        $(obj).bind("keydown", { max: _MaxLength }, function (e) {
            return $(this).val().length < e.data.max || e.keyCode == 8;
        });

        $(obj).bind("change", { max: _MaxLength }, function (e) {
            if ($(this).val().length > e.data.max) {
                alert("字数超出了最大字数，超出的部分已经被截");
                $(this).val($(this).val().substring(0, e.data.max));
            }
        });
    }
}




