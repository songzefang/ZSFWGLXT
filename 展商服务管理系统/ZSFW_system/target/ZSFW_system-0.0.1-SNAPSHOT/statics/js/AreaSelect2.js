function csh(obj)
{
    if (obj.value != obj.defaultValue)
    {
        obj.style.color = "black";
        obj.style.textAlign = "Left";
    }
}
function AreaAnSfSelect(areaSl, sfSl, citySl, values, isEnglish) {
    var pv, sv, cv;
    var i, j, m, n;
    pv = $get(areaSl).value;
    sv = $get(sfSl).value;
    $get(sfSl).options.length = 0;
    if ($get(citySl))
    {
        cv = $get(citySl).value;
        $get(citySl).options.length = 0;
    }

    if (pv != "")
    {
        if (isEnglish == "true")
        {
            $get(sfSl).options.add(new Option("- Please Select-", ""));
        }
        else
        {
            $get(sfSl).options.add(new Option("请选择省份", ""));
        }
        var str = pv.split(';')[0];
        if (sfArray[str] != null && sfArray[str] != undefined)
        {

            for (i = 0; i < sfArray[str].length; i++)
            {
                $get(sfSl).options.add(new Option(sfArray[str][i], sfArray[str][i]))
                if (sfArray[str][i] == values)
                {
                    $get(sfSl).selectedIndex = i + 1;
                }
            }
        }
    }

    if ($get(citySl))
    {
        if (isEnglish == "true")
        {
            $get(citySl).options.add(new Option("- Please Select-", ""));
        }
        else
        {
            $get(citySl).options.add(new Option("请选择城市", ""));
        }
        if (sv != "" && cities[sv] != null && cities[sv] != undefined)
        {
            for (j = 0; j < cities[sv].length; j++)
            {
                $get(citySl).options.add(new Option(cities[sv][j].split('|')[0], cities[sv][j]))
            }
        }
    }
    if (pv.split(';')[1] != undefined && pv.split(';')[1] != "")
    {
        if ($get("txtCompTelCountry"))
        {
            var tTel = $get("txtCompTelCountry");
            tTel.value = pv.split(';')[1];
            csh(tTel);
        }

        if ($get("txtCompFaxCountry"))
        {
            var tFax = $get("txtCompFaxCountry");
            tFax.value = pv.split(';')[1];
            csh(tFax);
        }
        /* if ($get("txtPostTelCountry"))
        {
        $get("txtPostTelCountry").value = pv.split(';')[1];
        }
        if($get("txtPostFaxCountry"))
        {
        $get("txtPostFaxCountry").value = pv.split(';')[1];
        }*/
    }
}

function SetCityNum(cityvalue)
{
    if (cityvalue != undefined && cityvalue != "")
    {
        if ($get("txtCompTelArea"))
        {
            var tAre = $get("txtCompTelArea");
            tAre.value = cityvalue.split('|')[1];
            csh(tAre);
        }
        if ($get("txtCompFaxArea"))
        {
            var tFaxA = $get("txtCompFaxArea");
            tFaxA.value = cityvalue.split('|')[1];
            csh(tFaxA);
        }
        /*  if($get("txtPostTelArea"))
        {
        $get("txtPostTelArea").value = cityvalue.split('|')[1];
        }
        if ($get("txtPostFaxArea"))
        {
        $get("txtPostFaxArea").value = cityvalue.split('|')[1];
        }*/
    }
    else
    {
        if ($get("txtCompTelArea"))
        {
            $get("txtCompTelArea").value = "";
        }
        if ($get("txtCompFaxArea"))
        {
            $get("txtCompFaxArea").value = "";
        }
        /*  if ($get("txtPostTelArea"))
        {
        $get("txtPostTelArea").value = "";
        }
        if ($get("txtPostFaxArea"))
        {
        $get("txtPostFaxArea").value = "";
        }*/
    }
    
}