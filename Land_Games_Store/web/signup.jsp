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
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap"
            rel="stylesheet"
            />
    </head>
    
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//HTTP 1.1
            response.setHeader("Pragma", "no-cache");//HTTP 1.0
            response.setHeader("Expires", "0");//Proxies

           
        %>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//HTTP 1.1
            response.setHeader("Pragma", "no-cache");//HTTP 1.0
            response.setHeader("Expires", "0");//Proxies

            boolean logIn = false;

            if (session.getAttribute("username") == null) {
                logIn = false;
            } else {
                logIn = true;
                response.sendRedirect("index.jsp");
            }
        %>
        <header class="navbar">
            <div>
                <a href="index.jsp" ><h1 class="navtitle">LAND GAMES STORE</h1></a>
            </div>
            <div class="links">
                <a href="login.jsp" class="logout">Login/SignUp</a>
                <a href="cart.jsp" class="logout">MyCart</a>
            </div>
        </header>
        <div class="container">  
            <form action="SignupServlet">
                <h2 id="Land-Games-Store">LAND<br>GAMES STORE</h2>
                <h3>Sign-up</h3>
                <input name="uname" placeholder="Username*" type="text" class="username-password" required>
                <input placeholder="Email Address*" type="email" class="username-password" required>
                <input name="pass" placeholder="Password*" type="password" class="username-password" required>
                <button >Register</button>
            </form>
        </div>
    </body>
</html>
