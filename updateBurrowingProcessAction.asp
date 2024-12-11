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
    burrowingID=Request.Form("burrowingID")
%>


<%
    bookID=Request.Form("bookID")
    burrowerName=Request.Form("burrowerName")
    burrowDate=Request.Form("burrowDate")
    returnDate=Request.Form("returnDate")

%>

<%  

    sql="UPDATE BurrowingProcess SET "    
	sql=sql & "bookName='" & bookName & "', "
    sql=sql & "burrowerName='" & burrowerName & "', "
    sql=sql & "burrowDate=#" & (burrowDate) & "#, "
    sql=sql & "returnDate=#" & (returnDate) & "# where burrowingID=" & burrowingID & " "
    set rs = ConAct.Execute(sql)

%>
<script language=""javascript"">
    alert('BurrowingProcess updated successfully!');
    window.location.href='showBurrowingProcess.asp';

</script>

</body>

</html>