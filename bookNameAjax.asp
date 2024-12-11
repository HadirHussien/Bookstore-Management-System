<%@ Language=VBScript.Encode codepage=1256%>
<!-- #Include file="Connection1.inc" -->
<% burrowDate=(request.QueryString("burrowDate"))
   returnDate=(request.QueryString("returnDate"))
if burrowDate <>"" and returnDate <>"" then  
sql = "SELECT b.bookName, bp.burrowingID FROM BurrowingProcess bp INNER JOIN Books b ON bp.bookName = b.bookName WHERE (bp.returnDate < #" & returnDate & "#)"
set rst = ConAct.Execute(sql)
loop2="<option> </option>"
while not rst.eof
loop2=loop2&"<option value="&rst("burrowingID")&">"&rst("bookName")&"</option>"
rst.movenext
wend
rst.close 
Else 
loop2=""
end if %>
<%=loop2 %>
