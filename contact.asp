
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <meta http-equiv="X-UA-Compatible" content="IE=8;FF=3;OtherUA=4">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
    <meta http-equiv="Content-Language" content="ar-sa">
    <title>Library</title>
    <link rel="stylesheet" href="contact.css" />
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
        <form method="post" action="contactAction.asp">
            <h1>Contact Us</h1>
            <div class="inputbox">
                <ion-icon name="contact-outline"></ion-icon>
                <input type="text" name="fullname" required>
                <label for="">Full Name</label>
            </div>
            <div class="inputbox">
                <ion-icon name="mail-outline"></ion-icon>
                <input type="email" name="email" required>
                <label for="">Email</label>
            </div>
            <div class="inputbox">
                <ion-icon name="phone-outline"></ion-icon>
                <input type="text" name="phonenumber" required>
                <label for="">Phone Number</label>
            </div>
            <div class="inputbox">
                <ion-icon name="lock-closed-outline"></ion-icon>
                <input type="text" name="message" required>
                <label for="">Your Message</label>
            </div>
         
            <input type="submit" value="Send" />
            
        </form>
    </section>
</body>
</html>
