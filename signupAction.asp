<%@ Language=VBScript.Encode codepage=1256%>
<!--#include file="connection1.inc"-->
<!DOCTYPE html> 
<html lang="en" dir="ltr">
<head>
<meta http-equiv="X-UA-Compatible" content="chrome=1"> 
<meta http-equiv="X-UA-Compatible" content="IE=8;FF=3;OtherUA=4">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<meta http-equiv="Content-Language" content="ar-sa">
<title>Library</title>
</head>
<body>
<%
    username = Request.Form("username")
    email = Request.Form("email")
    password = Request.Form("password")
%>
<%
  Count=0
    sql2="SELECT count(*) as countsignup from SignUp where Email='"&email&"'" 
    set rs2=ConAct.Execute(sql2)
    Count=rs2("countsignup")
    %>

<%
         if Count>"0" then%>
     <script>
       alert("User Added before");
       location.href="signup.asp"
    </script>

    <% else
     set rs = server.createObject("ADODB.recordset")
      rs.Open "SignUp", ConAct, 2, 2      'Add to signup table
	rs.AddNew 
    rs("username")=username
	rs("email")=email
    rs("password")=password
	'Save record
	rs.Update 
	rs.close 

     set rs2 = server.createObject("ADODB.recordset")
      rs2.Open "SignIn", ConAct, 2, 2     'Add to signin table
    rs2.AddNew 
    rs2("email")=email
    rs2("password")=password
    'Save record
    rs2.Update 
    rs2.close 

    set rs=nothing
    set rs2=nothing
	set ConAct=nothing%>

     <script>
   alert("Account created successfully");
   location.href="login.asp"
    </script>

  <%end if%>

</body>
</html>