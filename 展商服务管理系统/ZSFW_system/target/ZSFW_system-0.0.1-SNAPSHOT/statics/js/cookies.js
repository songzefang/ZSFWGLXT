//创建Cookie对象
//因为是作为类名或者命名空间的作用，所以和Math对象类似，这里使用Cookie来表示该对象：
var Cookie=new Object();
//实现设置Cookie的方法
//方法为：setCookie(name,value,option);其中name是要设置cookie的名称；value是设置cookie的值；option包括了其他选项，是一个对象作为参数。其实现如下：
Cookie.setCookie = function (name, value, option)
{
    //用于存储赋值给document.cookie的cookie格式字符串
    var str = name + "=" + escape(value);

    if (option)
    {
        //如果设置了过期时间
        if (option.expireDays)
        {
            var date = new Date();
            var ms = option.expireDays * 24 * 3600 * 1000;
            date.setTime(date.getTime() + ms);
            str += "; expires=" + date.toGMTString();
        }
        if (option.path) str += "; path=" + path;   //设置访问路径
        if (option.domain) str += "; domain" + domain; //设置访问主机
        if (option.secure) str += "; true";    //设置安全性
    }
    document.cookie = str;
}
//实现取Cookie值的方法
 //方法为：getCookie(name);其中name是指定cookie的名称，从而根据名称返回相应的值。实现如下：
Cookie.getCookie = function (name) {
    var cookieArray = document.cookie.split("; "); //得到分割的cookie名值对
    var cookie = new Object();
    for (var i = 0; i < cookieArray.length; i++) {
        var arr = cookieArray[i].split("=");    //将名和值分开
        if (arr[0] == name) return unescape(arr[1]); //如果是指定的cookie，则返回它的值
    }
    return "";
}

//实现删除Cookie的方法
//方法为：deleteCookie(name);其中name是指定cookie的名称，从而根据这个名称删除相应的cookie。在实现中，删除cookie是通过调用setCookie来完成的，将option的expireDays属性指定为负数即可：
Cookie.deleteCookie=function(name){
     this.setCookie(name,"",{expireDays:-1}); //将过期时间设置为过去来删除一个cookie
 }

//通过这种形式，可以让Cookie的功能更加清晰，它作为一个全局对象，大大方便了对Cookie的操作，例如：
//Cookie.setCookie("user","jack");
//alert(Cookie.getCookie("user"));
//Cookie.deleteCookie("user");
//alert(Cookie.getCookie("user"));