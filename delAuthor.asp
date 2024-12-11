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
    authorID=Request.Form("authorID")
%>

<%
	sql="Delete from Authors where authorID="&authorID&""
	set rs = ConAct.Execute(sql)
%>
<% response.write("<script language=""javascript"">alert('Record deleted!');window.location.href='showAuthors.asp';</script>")%>
   
</body>

</html>