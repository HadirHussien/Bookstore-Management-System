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
    <link rel="stylesheet" href="login.css" />
</head>
<body>
    <%
        Session.Contents.RemoveAll()
        Response.Redirect("login.asp")
    %>
</body>
</html>


