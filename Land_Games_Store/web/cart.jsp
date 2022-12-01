<%-- 
    Document   : cart
    Created on : 11 30, 22, 12:02:03 AM
    Author     : Lex Zedrick Lorenzo
--%>

<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList;"%>
<%@page import="model.Prices;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>LAND Games Store</title>
        <style>
            header {
                width: 100%;
                height: 50px;
                background-color: #32a660;
                display: flex;
                justify-content: space-between;
                align-items: center;
                position: fixed;
                top: 0;
                margin-left: -10px;
            }

            h1 {
                font-size: min(5vw, 1.2em);
                text-align: center;
                padding: 0.2rem;
                margin: 0 10px 0.2rem;
                color: black;
            }

            a {
                text-decoration: none;
            }

            .logout {
                color: black;
                font-size: min(4vw, 1em);
                text-align: center;
                padding: 0.2rem;
                margin: 0 0.2rem;
            }

            .logout:hover {
                background-color: #dfdfe2;
                color: #1b1b32;
                cursor: pointer;
            }

            .links{
                display: flex;
                flex-wrap: nowrap;
            }

            body{
                background-color: #52422d;
            }

            main {
                margin-top: 60px;
                max-width: 90%;
                margin-left: auto;
                margin-right: auto;
            }

            h2{
                color: white;
            }

            hr {
                margin-top: 5px;
                height: 1px;
                background-color: #ffffff;
                border-color: #ffffff;
            }

            .container {
                display: flex;
                flex-direction: row;
            }

            .left {
                height: 100%;
                width: 70%;
                background-color: #816848;
                border-right: 1px solid white;
            }

            .content {
                display: flex;
                flex-direction: row;
                padding: 20px;
            }

            img {
                height: 190px;
                width: 140px;
            }

            .image {
                margin-right: 20px;
            }

            .right {
                height: 100%;
                width: 30%;
                background-color: #816848;
                border-left: 1px solid white;
                text-align: center;
                padding: 28px;
            }

            .line {
                max-width: 90%;
                height: 1px;
                background-color: #69543a;
                border-color: #69543a;
            }

            .right p {
                display: inline-block;
                margin-top: 5px;
                margin-bottom: 5px;
            }

            .left-title {
                text-align: left;
                width: 75%;
            }

            .right-title {
                text-align: right;
                width: 25%;
            }

            .total-item{
                width:inherit;
                margin-left: 25%;
                margin-right: 25%;
            }

            #total-item-price{
                font-weight: bold;
            }
        </style>
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
        <header>
            <div>
                <a href="index.jsp" class="logout"><h1>LAND GAMES STORE</h1></a>
            </div>
            <div class="links">
                <%
                    if (logIn == true) {
                        out.print("<a href=\"LogoutServlet\" class=\"logout\">Logout</a>");
                    } else {
                        out.print("<a href=\"login.jsp\" class=\"logout\">Login/SignUp</a>");
                    }
                %>
                <a href="" class="logout">MyCart</a>
            </div>
        </header>
        <main>
            <h2>My Cart</h2>
            <hr>
            <div class="container">
                <div class="left">
                    <%
                        int sum = 0;
                        if (logIn == true) {
                            session = request.getSession();
                            ArrayList cartSession = (ArrayList) session.getAttribute("cartSession");
                            
                            if(cartSession == null)
                            {
                                response.sendRedirect("COerror.jsp");
                            }
                            else
                            {
                                Map<String, String> image = (Map) getServletContext().getAttribute("image");
                                Map<String, Integer> price = (Map) getServletContext().getAttribute("price");
                                String content = "";

                                for (int i = 0; i < cartSession.size(); i++) {
                                    if (i % 2 == 0) {
                                        content = (String) cartSession.get(i);
                                    } else {
                                        out.println("<div class=\"content\">"
                                                + "<div class=\"image\">"
                                                + "<img src=\"" + image.get(content) + "\" alt=\"" + content + "\">"
                                                + "</div>"
                                                + "<div class=\"info\">"
                                                + "<p>" + content + "</p>"
                                                + "<p>" + (String) cartSession.get(i) + "pcs</p>"
                                                + "<p>$" + price.get(content) + " per piece</p>"
                                                + "</div>"
                                                + "<div class=\"total-item\">"
                                                + "<p class=\"right-title\">$" + (Integer.parseInt((String) cartSession.get(i)) * price.get(content)) + "</p>"
                                                + "</div>"
                                                + "</div>");
                                        sum = sum + (Integer.parseInt((String) cartSession.get(i)) * price.get(content));
                                    }

                                }
                            }
                            
                            
                        }

                    %>
                </div>
                <div class="right">
                    <h3>Games and Apps Summary</h3>
                    <p class="left-title">Price</p><p class="right-title">$<%out.print(sum);%></p>
                    <p class="left-title">Taxes</p><p class="right-title">Calculated at checkout</p>
                    <hr class="line">
                    <p class="left-title">Subtotal</p><p class="right-title">$<%out.print(sum);%></p>
                </div>
            </div>
        </main>
    </body>
</html>
