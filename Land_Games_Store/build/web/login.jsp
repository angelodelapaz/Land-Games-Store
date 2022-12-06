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
        <main>
            <div class="container">
                <form action="LoginServlet" method="POST">
                    <h2 id="Land-Games-Store">LAND<br>GAMES STORE</h2>
                    <input placeholder="Username" name="uname" type="text" class="username-password" required>
                    <input placeholder="Password" name="pass" type="password" class="username-password" required>
                    <button>Login</button>
                    <a class="signup" href="signup.jsp">Sign up?</a>
                </form>
            </div>
        </main>
    </body>
</html>