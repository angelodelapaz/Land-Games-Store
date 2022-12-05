<%-- 
    Document   : checkout
    Created on : 12 2, 22, 3:00:02 PM
    Author     : Lex Zedrick Lorenzo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap"
            rel="stylesheet"
            />
        <link rel="stylesheet" href="checkoutstyles.css"/>
        <title>Checkout</title>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//HTTP 1.1
            response.setHeader("Pragma", "no-cache");//HTTP 1.0
            response.setHeader("Expires", "0");//Proxies

            boolean logIn = false;

            if (session.getAttribute("username") == null) {
                logIn = false;
                response.sendRedirect("adderror.jsp");
            } else {
                logIn = true;
            }
        %>
        <header class="navbar">
            <div>
                <a href="index.jsp"><h1 class="navtitle">LAND GAMES STORE</h1></a>
            </div>
            <div class="links">
                <a href="LogoutServlet" class="logout">Logout</a>
                <a href="" class="logout">MyCart</a>
            </div>
        </header>
        <main>
            <%
            String price = request.getParameter("price");
            String items = request.getParameter("items");
            if (price.equals("0") && items.equals("0")) {
                response.sendRedirect("COerror.jsp");
            }
            else
            {
        %>
        <h1>Thank you for your purchase, <%out.print((String)session.getAttribute("username"));%>!</h1>
        <h2>Your total price will be $<%out.print(request.getParameter("price"));%>.</h2>
        <h2>A total of <%out.print(request.getParameter("items"));%> items will be delivered to you as soon as possible.</h2>   
        <%
            }
            session = request.getSession();
            session.removeAttribute("cartSession");
        %>
        <form action="index.jsp"><button class="button">Home</button></form>
        </main>  
    </body>
</html>
