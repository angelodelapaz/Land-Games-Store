<%-- 
    Document   : login
    Created on : Dec 1, 2022, 1:10:37 PM
    Author     : Dwight Kenneth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="Log in page of Anime Recommendation Website" />
        <title>Login Page</title>
        <link rel="stylesheet" href="loginstyles.css" />
    </head>
    <body>
        <div>
            <form action="index.jsp">
                <h2 id="Land-Games-Store">LAND<br>GAMES STORE</h2>
                <input placeholder="Username" type="text" class="username-password" required>
                <input placeholder="Password" type="password" class="username-password" required>
                <button>Login</button>
                <a href="signup.jsp">Sign up?</a>
            </form>
        </div>
    </body>
</html>