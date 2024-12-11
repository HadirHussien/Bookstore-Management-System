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
    <nav class="navbar">
        <ul>
            <li><a href="index.asp">Home</a></li>
            <li><a href="login.asp">Login</a></li>
            <li><a href="signup.asp">SignUp</a></li>
            <li><a href="contact.asp">Contact Us</a></li>
        </ul>

    </nav>

    <section>
        <form method="post" action="loginAction.asp">
            <h1>Login</h1>
            <div class="inputbox">
                <ion-icon name="mail-outline" ></ion-icon>
                <input type="email" name="email" required>
                <label for="">Email</label>
            </div>
            <div class="inputbox">
                <ion-icon name="lock-closed-outline"></ion-icon>
                <input type="password" name="password" required>
                <label for="">Password</label>
            </div>
            <div class="forget">
                <label for=""><input type="checkbox">Remember Me</label>
                <a href="#">Forget Password</a>
            </div>
            <input type="submit" value="Log in" />
            <div class="register">
                <p>Don't have an account? <a href="signup.asp">Register</a></p>
            </div>
        </form>
    </section>


</body>
</html>
