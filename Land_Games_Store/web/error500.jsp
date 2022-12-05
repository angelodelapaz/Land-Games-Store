<%-- 
    Document   : error500
    Created on : 12 1, 22, 4:48:09 PM
    Author     : Gelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="errorstyles.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap"
      rel="stylesheet"
    />
    <title>Error 500</title>
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
            }
        %>
        <header class="navbar">
            <div>
                <a href="index.jsp" class="logout"><h1>LAND GAMES STORE</h1></a>
            </div>
            <div class="links">
                <%
                    if (logIn == true) {
                        out.print("<a href=\"LogoutServlet\" class=\"logout\">Logout</a>");
                    }
                    else
                    {
                        out.print("<a href=\"login.jsp\" class=\"logout\">Login/SignUp</a>");
                    }
                %>
                <a href="cart.jsp" class="logout">MyCart</a>
            </div>
        </header>
    <main>
        <h1>500 :((</h1>
        <h2>Server Error</h2>
        <h3>The server encountered an internal error and could not complete your request</h3>
         <form action="index.jsp"><button class="button">Home</button></form>
    </main>
  </body>
</html>