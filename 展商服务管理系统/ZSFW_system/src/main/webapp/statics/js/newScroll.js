var old = null, _Z = false, _S = false, _ZM = false, _SM = false;
function _src(str)
{
    if (str != old)
    {
        _Z = false; _S = false, _ZM = false, _SM = false;
    }
    old = str;
}
function $D(str)
{
    var d = document.getElementById(str);
    _src(str);
    if (_S) return;
    if (_ZM) return;
    d.style.display = "block";
    d.style.visibility = "hidden";
    d.style.position = "absolute";
    var _he = d.scrollHeight;
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
            d.style.height = _he + 'px';
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
function $use(str, obj, id)
{
    if (!obj)
    {
        obj = document.getElementById(id);
    }
    if (document.getElementById(str).style.display == "none")
    {
        $D(str);
        obj.src = "statics/images/zs-register/btn_shrink.gif";
    }
    else
    {
        $D2(str);
        obj.src = "statics/images/zs-register/btn_spread.gif";
    }
}

function $use2(str, obj, id)
{

    if (!obj)
    {
        obj = document.getElementById(id);
    }
    if (document.getElementById(str).style.display == "none")
    {
        $D(str);
        obj.src = "../../images/btn_shrink.gif";

    }
    else
    {
        $D2(str);
        obj.src = "../../images/btn_spread.gif";
    }
}