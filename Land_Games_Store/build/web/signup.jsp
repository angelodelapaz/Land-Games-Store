<%-- 
    Document   : signup
    Created on : Dec 1, 2022, 1:12:32 PM
    Author     : Dwight Kenneth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="SignUp page of Anime Recommendation Website" />
        <title>Signup Page</title>
        <link rel="stylesheet" href="signupstyles.css" />
    </head>
    <body>
        <div>  
            <form action="index.jsp">
                <h2 id="Land-Games-Store">LAND<br>GAMES STORE</h2>
                <h3>Sign-up</h3>
                <input placeholder="Username*" type="text" class="username-password" required>
                <input placeholder="Email Address*" type="email" class="username-password" required>
                <input placeholder="Password*" type="password" class="username-password" required>
                <button >Register</button>
            </form>
        </div>
    </body>
</html>
