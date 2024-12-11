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
For i = 1 To count
burrowingID = Request.Form("returnDate"&i)

if burrowingID <> "" then
sql="UPDATE BurrowingProcess SET " 
sql=sql & "returnValue= 1 where burrowingID=" & burrowingID & " "
set rs = ConAct.Execute(sql)


sqlss2_15s = "select TOP 1 bookName from BurrowingProcess where burrowingID="&burrowingID&""
set rstt2_15s = ConIn.Execute(sqlss2_15s)
while not rstt2_15s.eof
bookName=rstt2_15s("bookName")
rstt2_15s.movenext
wend
rstt2_15s.close



if bookName <> "" then 
sql="UPDATE Books SET " 
sql=sql & "availability= 1 where bookName='"& bookName &"'"
set rs = ConAct.Execute(sql)
end if

end if

next    
 response.write("<script language=""javascript"">alert('Books returned successfully!');window.location.href='returnBook.asp';</script>")
%>
</body>
</html>