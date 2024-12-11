<%@ Language=VBScript.Encode codepage=1256%>
<!--#include file="connection1.inc"-->
<% 
    returnDate = ""
    returnDate = Request.Form("returnDate")

%>

<!DOCTYPE html> 


<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Document</title>

    <style>

    table {
        border-collapse: collapse;
        background-color: #f9f9f9;
        position: absolute;
        top: 100px;
    }

    table th, table td {
        padding: 10px;
        border: 1px solid #ccc;
        text-align: center;
    }

    table th {
        background-color: #b0c4de;
    }

    table input[type="checkbox"] {
        display: block;
        margin: 0 auto;
    }

    table input[type="submit"] {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    table input[type="submit"]:hover {
        background-color: #45a049;
    }

    * {
    margin: 0;
    padding: 0;
}

body {
    display: flex;
    align-items: center;
    justify-content: center;
    min-height: 100vh;
    background-image: url(1.jpg);
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
}



.navbar {
    height: 80px;
    position: fixed;
    top: 0;
    width: 100%;
    background: rgba(0, 0, 0, 0.5);
}

.navbar ul {
    float: right;
    margin-right: 20px;
}

.navbar ul li {
    list-style: none;
    margin: 0 8px;
    display: inline-block;
    line-height: 80px;
}

.navbar ul li a {
    text-decoration: none;
    color: white;
    font-size: 20px;
    padding: 6px 13px;
}

.navbar ul li a:hover {
    cursor: pointer;
    color: darksalmon;
}

section {
    position: relative;
    max-width: 400px;
    background-color: transparent;
    border: 2px solid rgba(255, 255, 255, 0.5);
    border-radius: 20px;
    backdrop-filter: blur(20px);
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 2rem 3rem;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

h1 {
    font-size: 2rem;
    color: #fff;
    text-align: center;
}

.inputbox {
    position: relative;
    margin: 30px 0;
    max-width: 310px;
    border-bottom: 2px solid #fff;
}

    .inputbox label {
        position: absolute;
        top: 50%;
        left: 5px;
        transform: translateY(-50%);
        color: #fff;
        font-size: 1rem;
        pointer-events: none;
        transition: all 0.5s ease-in-out;
    }

input:focus ~ label,
input:valid ~ label {
    top: -5px;
}

.inputbox input {
    width: 100%;
    height: 60px;
    background: transparent;
    border: none;
    outline: none;
    font-size: 1rem;
    padding: 0 35px 0 5px;
    color: #fff;
}

.inputbox ion-icon {
    position: absolute;
    right: 8px;
    color: #fff;
    font-size: 1.2rem;
    top: 20px;
}

.forget {
    margin: 35px 0;
    font-size: 0.85rem;
    color: #fff;
    display: flex;
    justify-content: space-between;
}

    .forget label {
        display: flex;
        align-items: center;
    }

        .forget label input {
            margin-right: 3px;
        }

    .forget a {
        color: #fff;
        text-decoration: none;
        font-weight: 600;
    }

        .forget a:hover {
            text-decoration: underline;
        }

section form input[type="submit"] {
    width: 100%;
    height: 40px;
    border-radius: 40px;
    background-color: rgb(255, 255,255, 1);
    border: none;
    outline: none;
    cursor: pointer;
    font-size: 1rem;
    font-weight: 600;
    transition: all 0.4s ease;
}

    section form input[type="submit"]:hover {
        background-color: rgb(255, 255,255, 0.5);
    }

.register {
    font-size: 0.9rem;
    color: #fff;
    text-align: center;
    margin: 25px 0 10px;
}

.register p a {
    text-decoration: none;
    color: #fff;
    font-weight: 600;
}

.register p a:hover {
    text-decoration: underline;
}

.content {
    height: calc(100vh - 160px);
    display: flex;
    justify-content: flex-start;
    position:absolute;
    left:0;
}
aside {
    height: 100%;
    width: 280px;
    background: rgba(0, 0, 0, 0.5);
    justify-content: flex-start;
}
aside nav{
    width:100%;
    display:flex;
    flex-direction:column;
    margin: 15px 0;
    padding-right: 15px;

}

.nav-link {
    display:flex;
    align-items:center;
    padding:10px 16px;
    text-decoration:none;
    color:white;
}
.nav-link :hover {
    cursor: pointer;
    color: darksalmon;
}
.nav-link span{
    margin-left: 30px;
    font-size:20px;
    color:white;
}
form {
  max-width: 400px;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 4px;
  background-color: #f9f9f9;
  position: absolute;
  top: 100px;
}

form label {
  display: block;
  margin-bottom: 10px;

}

form input[type="text"] {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-bottom: 15px;
}

form input[type="number"] {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-bottom: 15px;
}

form input[type="date"] {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-bottom: 15px;
}

form input[type="submit"] {
  width: 100%;
  background-color: #e9967a;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

form input[type="submit"]:hover {
  background-color: #d1876d;
}
    </style>

</head>
<body>
    <nav class="navbar">
    <ul>
        <li><a href="index.asp">Home</a></li>
        <li><a href="services.asp">Services</a></li>
        <li><a href="logout.asp">Logout</a></li>
        <li><a href="contact.asp">Contact Us</a></li>
    </ul>

   </nav>

<div class="content">
    <aside>
        <nav>
            <a href="showAuthors.asp" class="nav-link">
                <span>Authors</span>
            </a>
            <a href="showBooks.asp" class="nav-link">
                <span>Books</span>
            </a>
            <a href="showBurrowers.asp" class="nav-link">
                <span>Burrowers</span>
            </a>
            <a href="showBurrowingProcess.asp" class="nav-link">
                <span>Burrowing Process</span>
            </a>
            <a href="Authors.asp" class="nav-link">
                <span>Add Author</span>
            </a>
            <a href="Books.asp" class="nav-link">
                <span>Add Book</span>
            </a>
            <a href="Burrowers.asp" class="nav-link">
                <span>Add Burrower</span>
            </a>
            <a href="BurrowingProcess.asp" class="nav-link">
                <span>Add Burrowing Process</span>
            </a>
            <a href="dateofreturn.asp" class="nav-link">
                <span>Book Returning</span>
            </a>
        </nav>
    </aside>
</div>


<table>
<thead>
    <tr>
        <th>Burrower Name</th>
        <th>Book Name</th>
        <th>Return Book</th>
    </tr>
</thead>
    <% if returnDate <>"" then 
    sql = "SELECT burrowingID, burrowerName,bookName FROM BurrowingProcess WHERE returnDate = #" & returnDate & "# AND returnValue = 0 "
    set rs = ConAct.Execute(sql)
    count=0
%>

<form action="returnBookAction.asp" method="POST">
<%
    While Not rs.EOF
    count=count+1
        bookName = rs("bookName")
        burrowerName = rs("burrowerName")
%>
    <tr>
      <td><%= burrowerName %></td>
      <td><%= bookName %></td>
      <td>
         <input type="checkbox" name="returnDate<%=count%>" value="<%=rs("burrowingID")%>">
       
      </td>
    </tr>
<%
    rs.MoveNext
    Wend
    rs.Close
 
%>
</table>
<input type="hidden" name="Count" value="<%=Count%>">
<input style="background-color: #e9967a;
 color: white;
 padding: 10px 20px;
 border: none;
 border-radius: 4px; 
 cursor: pointer;
 position: absolute;
 top: 100px;
 right:300px" type="submit" value="Save">
</form>
    <%end if %>
</body>
</html>