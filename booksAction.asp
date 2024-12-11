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
    bookName=Request.Form("bookName")
    authorName=Request.Form("authorName")
    publisher=Request.Form("publisher")
    publicationYear=Request.Form("publicationYear")
%>

<% 
    
    set rs = server.createObject("ADODB.recordset")
    rs.Open "Books", ConAct, 2, 2
    rs.AddNew
	    rs("bookName") = bookName
	    rs("authorName") = authorName
        rs("publisher") = publisher
	    rs("publicationYear") = publicationYear
        rs("availability") = 1
    rs.Update
   
%>
<% response.write("<script language=""javascript"">alert('Book info Added!');window.location.href='Books.asp';</script>")%> 

</body>

</html>
