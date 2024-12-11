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
    bookName=Request.Form("bookName")
    burrowDate=Request.Form("burrowDate")
    returnDate=Request.Form("returnDate")
%>

<% 
    
    sql = "SELECT COUNT(burrowerName) AS burrowerCount FROM Burrowers WHERE burrowerName = '" & burrowerName & "'"
    
    set rs1 = ConAct.Execute(sql)
    
    burrowerCount=rs1("burrowerCount")

    if burrowerCount ="0" Then 
    response.write("<script language=""javascript"">alert('This Burrower is not exist! You can not make a borrowing process');window.location.href='BurrowingProcess.asp';</script>")
    else
 
    set rs = server.createObject("ADODB.recordset")
    rs.Open "BurrowingProcess", ConAct, 2, 2
    rs.AddNew
	    rs("bookName") = bookName
	    rs("burrowerName") = burrowerName
        rs("burrowDate") = burrowDate
        rs("returnDate") = returnDate
    rs.Update
    rs.close
   
    ' Update the book availability to 0 (not available)
        sqlUpdateBook = "UPDATE Books SET availability = 0 WHERE bookName = '" & bookName & "'"
    ConAct.Execute(sqlUpdateBook)
        sqlUpdateBook2 = "UPDATE BurrowingProcess SET returnValue = 0 WHERE bookName = '" & bookName & "'"
        
        ConAct.Execute(sqlUpdateBook2)
	end if
   
%>
<% response.write("<script language=""javascript"">alert('Burrowing Process info Added!');window.location.href='BurrowingProcess.asp';</script>")%> 

</body>

</html>
