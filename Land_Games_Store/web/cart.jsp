<%-- 
    Document   : cart
    Created on : 11 30, 22, 12:02:03 AM
    Author     : Lex Zedrick Lorenzo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList;"%>
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
        </style>
    </head>
    <body>
        <header>
            <div>
                <h1>LAND GAMES STORE</h1>
            </div>
            <div class="links">
                <a href="" class="logout">Login/SignUp</a>
                <a href="" class="logout">MyCart</a>
            </div>
        </header>
        <main>
            <h2>My Cart</h2>
            <hr>
            <div class="container">
                <div class="left">
                    <%
                        session = request.getSession();
                        ArrayList cartSession = (ArrayList)session.getAttribute("cartSession");
                        String content = "";
                        for(int i = 0; i < cartSession.size(); i++)
                        {
                            if( i % 2 == 0)
                            {
                                 content = (String)cartSession.get(i);
                            }
                            else
                            {
                                out.println("<div class=\"content\">" +
                                                "<div class=\"image\">" +
                                                     "<img src=\"https://upload.wikimedia.org/wikipedia/en/thumb/5/51/Overwatch_cover_art.jpg/220px-Overwatch_cover_art.jpg\" alt=\"Overwatch\">" +
                                                "</div>" +
                                                "<div class=\"info\">" +
                                                    "<p>" + content + "</p>" +
                                                    "<p>"+ (String)cartSession.get(i) + "pcs</p>" +
                                                    "<p>$100</p>" +
                                                "</div>" +
                                            "</div>");
                            }
                            
                        }
                    %>
                </div>
                <div class="right">
                    <h3>Games and Apps Summary</h3>
                    <p class="left-title">Price</p><p class="right-title">$1000</p>
                    <p class="left-title">Taxes</p><p class="right-title">Calculated at checkout</p>
                    <hr class="line">
                    <p class="left-title">Subtotal</p><p class="right-title">$1000</p>
                </div>
            </div>
        </main>
    </body>
</html>
