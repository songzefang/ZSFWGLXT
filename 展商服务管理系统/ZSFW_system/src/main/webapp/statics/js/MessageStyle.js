var oldh;
function orderNull(Obj)
{
    if (Obj.value == "国家代码" || Obj.value == "地区区号" || Obj.value == "传真号码" || Obj.value == "电话号码" )
    {
        Obj.value = "";
        Obj.style.color = "black";
        Obj.style.textAlign = "Left";
    }
    else
    {
        Obj.style.color = "black";
        Obj.style.textAlign = "Left";
    }
}
function orderNull2(Obj,str)
{
    if (str!= Obj.defaultValue)
    {
   
        Obj.value = str;
        Obj.style.color = "black";
        Obj.style.textAlign = "Left";
    }
}
function showDefaultValue(Obj,tof)
{
    if (Obj.value == "") {
        var txt = ["国家代码", "地区区号", "电话号码", "国家代码", "地区区号", "传真号码"];
        for (var i = 1; i < 7; i++) {
            if (tof == i) {
                Obj.style.color = "#a0b4c5";
                Obj.style.textAlign = "center";
                Obj.value = txt[i-1];
            }
        }
    }
}

function _showDefaultValue(Obj, tof,_obj)
{
    if (Obj.value=="")
    {
        showDefaultValue(Obj, tof);
    }
    else
    {
        if (Obj.value)
        {

            var X = document.getElementById(_obj);
            X.value = Obj.value;
            X.style.color = "black";
            X.style.textAlign = "Left";
        }
    }
}
function hiddenTb(str,obj)
{
    var Obj = document.getElementById(str);
    if (Obj.style.display=="inline")
    {
        obj.src = "../images/btn_spread.gif";
       Obj.style.display = "none";
    }
    else
    {
        Obj.style.display = "inline";
        obj.src = "../images/btn_shrink.gif";
    }
}

$(document).ready(function () { $("input[type='text']").bind("focus", function () { $(this).css({ 'border-color': '#4cbe00 ' }) }) }
 
);
$(document).ready(function () { $("input[type='text']").bind("blur", function () { $(this).css({ 'border-color': '#a0b4c5' }) }) });

function copyXi()
{
        document.getElementById("txtPostName").value = document.getElementById("txtCompanyName").value;
        document.getElementById("txtPostAddr").value = document.getElementById("txtAddr").value;
        var tel1 =document.getElementById("txtPostTel") ;
        var tel2= document.getElementById("txtPostTelCountry");
        var tel3 = document.getElementById("txtPostTelArea");
        var fax1= document.getElementById("txtPostFaxCountry");
        var fax2=  document.getElementById("txtPostFaxArea");
        var fax3= document.getElementById("txtPostFax");
        orderNull2(tel1,document.getElementById("txtCompTel").value);
        orderNull2(tel2,document.getElementById("txtCompTelCountry").value);
        orderNull2(tel3,document.getElementById("txtCompTelArea").value);
       document.getElementById("txtPostCode").value = document.getElementById("txtPost").value;
       orderNull2(fax1,document.getElementById("txtCompFaxCountry").value);
       orderNull2(fax2,document.getElementById("txtCompFaxArea").value);
       orderNull2(fax3,document.getElementById("txtCompFax").value);
    }
    function onover(Obj)
    {

        Obj.style.backgroundColor = "#F3F3F3";
    }
    function onout(Obj)
    {
        Obj.style.backgroundColor = "#FFFFFF";
    }
    var old = null, _Z = false, _S = false, _ZM = false, _SM = false;
    function _src(str)
    {
        if (str != old)
        {
            _Z = false; _S = false, _ZM = false, _SM = false;
        }
        old = str;
    }
    function $D(str,_he)
    {
        var d = document.getElementById(str);
        _src(str);
        if (_S) return;
        if (_ZM) return;
        d.style.display="block";
        d.style.visibility="hidden";
        d.style. position="absolute";
        _he = d.scrollHeight;
        d.style.display = "none";
        d.style.visibility = "visible";
        d.style.position = "static";
        var h = d.offsetHeight;
        var zHeight = _he;
        _Z = true;
        _ZM = true;
        function dmove()
        {
            h += 10; //层展开速度
            if (h >= zHeight)
            {
                d.style.height = _he+'px';
                clearInterval(iIntervalId);
                _Z = false;
                _ZM = false;
            } else
            {
                d.style.display = 'block';
                d.style.height = h + 'px';
            }
        }
        iIntervalId = setInterval(dmove, 2);
       
    }
    function $D2(str)
    {
        var d = document.getElementById(str);
        _src(str);
        if (_Z) return;
        if (_SM) return;
        var h = d.offsetHeight;
        var maxh = 300;
        _S = true;
        _SM = true;
        function dmove()
        {
            h -= 10; //层收缩速度
            if (h <= 0)
            {
                d.style.display = 'none';
                clearInterval(iIntervalId);
                _S = false;
                _SM = false;
            } else
            {
                d.style.height = h + 'px';
            }
        }
        iIntervalId = setInterval(dmove, 2);
    }
    function $use(str, obj,_he)
    {
        if ( document.getElementById(str).style.display == "none")
        {
            $D(str,_he);
            obj.src = "../images/btn_shrink.gif";
        }
        else
        {
            $D2(str);
            obj.src = "../images/btn_spread.gif";
        }
    }

    function $use2(str, obj, _he)
    {
        if (document.getElementById(str).style.display == "none")
        {
            $D(str, _he);
            obj.src = "../../images/btn_shrink.gif";

        }
        else
        {
            $D2(str);
            obj.src = "../../images/btn_spread.gif";
        }
    }
    function OnlyNum()
    {
        if (window.event)
        {
            var realKey = String.fromCharCode(window.event.keyCode)
            var myReg = /^(-|\+)?\d+$/;
            if (myReg.test(event.srcElement.value + realKey) == false)
            {
                event.returnValue = false;
            }
        }
    }