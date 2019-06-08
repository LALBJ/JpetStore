var xmlHttpRequest;
function createXMLHttpRequest()
{
    if(window.XMLHttpRequest)
    {
        xmlHttpRequest = new XMLHttpRequest();
    }
    else if (window.ActiveXObject)
    {
        xmlHttpRequest = new ActiveXObject("Maxm12.XMLHTTP");
    }
    else
    {
        xmlHttpRequest = new ActiveXObject("micorsoft.XMLHTTP");
    }
}

function doStart() {
    createXMLHttpRequest();
    var url = "";
    xmlHttpRequest.open("GET",url,true);
    xmlHttpRequest.onreadystatechange = startCallback;
    xmlHttpRequest.send(null);
}

function startCallback() {
    if(xmlHttpRequest.readyState == 4)
    {
        if(xmlHttpRequest.status == 200)
        {
            setTimeout("pollServer", 100);
            refreshTime();
        }
    }
}

function pollServer() {
    createXMLHttpRequest();
    var url = "";
    xmlHttpRequest.open("GET",url,true);
    xmlHttpRequest.onreadystatechange = pollCallback;
    xmlHttpRequest.send(null);
}

function refreshTime() {
    var time_span = doucument.getElementById("time");
    var time_val = time_span.innerHTML;
    var int_val = parseInt(time_val);
    var new_int_val = int_val-1;
    if(new_int_val >-1){
        setTimeout("refreshTime(),1000")
        time_span.innerHTML = new_int_val;
    }
    else{
        time_span.innerHTML = 5;
    }
}