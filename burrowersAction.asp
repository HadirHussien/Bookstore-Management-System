<%@ Language=VBScript.Encode codepage=1256%>
<!--#include file="connection1.inc"-->

<html lang="en" dir="ltr">
<head>
<meta http-equiv="X-UA-Compatible" content="chrome=1"> 
<meta http-equiv="X-UA-Compatible" content="IE=8;FF=3;OtherUA=4">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<meta http-equiv="Content-Language" content="ar-sa">
<title>Document</title>
<style>
	
</style>
</head>
<body>

<%
    burrowerName=Request.Form("burrowerName")
    phonenumber=Request.Form("phonenumber")
    address=Request.Form("address")
%>

<% 
    
    set rs = server.createObject("ADODB.recordset")
    rs.Open "Burrowers", ConAct, 2, 2
    rs.AddNew
	    rs("burrowerName") = burrowerName
	    rs("phonenumber") = phonenumber
        rs("address") = address
    rs.Update
   
%>
<% response.write("<script language=""javascript"">alert('Burrower info Added!');window.location.href='Burrowers.asp';</script>")%> 

</body>

</html>
