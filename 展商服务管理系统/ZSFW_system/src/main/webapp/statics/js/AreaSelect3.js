function csh(obj)
{
    if (obj.value != obj.defaultValue)
    {
        obj.style.color = "black";
        obj.style.textAlign = "Left";
    }
}
function AreaAnSfSelect(areaSl, sfSl, citySl, values, isEnglish)
{
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
        if (isEnglish != "true") {
            if (str == "中国") {
                $get("hidCountryFlag").value = "";
            }
            else {
                $get("hidCountryFlag").value = "0";
            }
        }
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
        if ($get("phone01"))
        {
            var tTel = $get("phone01");
            tTel.value = pv.split(';')[1];
            csh(tTel);
        }

        if ($get("fax01"))
        {
            var tFax = $get("fax01");
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
        if ($get("phone02"))
        {
            var tAre = $get("phone02");
            tAre.value = cityvalue.split('|')[1];
            csh(tAre);
        }
        if ($get("fax02"))
        {
            var tFaxA = $get("fax02");
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
        if ($get("phone02"))
        {
            $get("phone02").value = "";
        }
        if ($get("fax02"))
        {
            $get("fax02").value = "";
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