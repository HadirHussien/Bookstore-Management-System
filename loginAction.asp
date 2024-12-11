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
' Retrieve the user's email and password from the form
email = Request.Form("email")
password = Request.Form("password")

' Construct the SQL query
sql = "SELECT top 1 * FROM SignIn WHERE Email='" & email & "' AND Password='" & password & "'"

' Execute the query
Set rss = ConAct.Execute(sql)

' Check if a matching user record is found
If Not rss.EOF Then
    ' Login successful
    email = rss("email")
    password = rss("password")
    If email <> "" And password <> "" Then
        Response.Redirect "dashboard.asp"
    Else %>
     <!-- Login failed -->
          <script>
        alert("Wrong email or password");
        location.href="login.asp"
          </script>
    <%End If
Else %>
    <!-- Login failed -->
          <script>
        alert("Wrong email or password");
        location.href="login.asp"
         </script>
<%End If%>

' Clean up
rss.Close
Set rss = Nothing
%>
</body>
</html>
<%
ConAct.Close
Set ConAct = Nothing
%>

