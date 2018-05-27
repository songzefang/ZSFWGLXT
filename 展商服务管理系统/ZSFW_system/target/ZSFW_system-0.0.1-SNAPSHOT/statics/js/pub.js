function qFont(obj)
{
    var objV = obj.value;
    if (objV.indexOf('号') != -1 || objV.indexOf('码') != -1 || objV.indexOf('请输入') != -1)
    {
        obj.value = "";
        obj.style.cssText = "color:black;text-align:left;";
    }
}

function AFont(obj, str, str1)
{
    var objV = obj.value;
    if (objV.indexOf(str1) != -1 || obj.value == "")
    {
        obj.value = str;
        obj.style.cssText = "color:#a0b4c5;text-align:center;";
    }
}

function btnOver(obj)
{
    obj.style.backgroundColor = "#0D82BE";
}
function btnOut(obj)
{
    obj.style.backgroundColor = "#2491E9";
}

function showdef(arr, arr1)
{
    for (var i = 0; i < arr.length; i++)
    {
        var a = document.getElementById(arr[i]);
        if (a.value.indexOf(arr1[i]) == -1)
            a.style.cssText = "text-align:left;color:black;";
    }
}

   function phoneStr(str1,str2,str3)
    {
        if (str1.indexOf('码') > 0 || str2.indexOf('号') > 0 || str3.indexOf('号') > 0)
            return "";
        else
            return str1 + "-" + str2 + "-" + str3;
    }