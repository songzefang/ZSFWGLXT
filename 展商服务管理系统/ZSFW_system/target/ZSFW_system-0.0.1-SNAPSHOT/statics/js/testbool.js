
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

    
