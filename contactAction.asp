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
    fullname=Request.Form("fullname")
    email=Request.Form("email")
    phonenumber=Request.Form("phonenumber")
    message=Request.Form("message")
%>

<% 
    
    set rs = server.createObject("ADODB.recordset")
    rs.Open "Contact", ConAct, 2, 2
    rs.AddNew
	    rs("fullname") = fullname
	    rs("email") = email
	    rs("phone") = phonenumber
        rs("yourmessage") = message
    rs.Update
   
%>
<% response.write("<script language=""javascript"">alert('Message sent successfully');window.location.href='contact.asp';</script>")%> 

</body>

</html>
