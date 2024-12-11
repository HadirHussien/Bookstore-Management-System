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
    bookID=Request.Form("bookID")
%>


<%
    bookName=Request.Form("bookName")
    authorName=Request.Form("authorName")
    publisher=Request.Form("publisher")
    publicationYear=Request.Form("publicationYear")

%>

<%  

    sql="UPDATE Books SET "    
	sql=sql & "bookName='" & bookName & "', "
    sql=sql & "authorName='" & authorName & "', "
    sql=sql & "publisher='" & publisher & "', "
    sql=sql & "publicationYear=" & publicationYear & " where bookID=" & bookID & " "
    set rs = ConAct.Execute(sql)

%>
<script language=""javascript"">
    alert('Book updated successfully!');
    window.location.href='showBooks.asp';

</script>

</body>

</html>