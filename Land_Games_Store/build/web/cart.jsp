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
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap"
            rel="stylesheet"
            />
        <link rel="stylesheet" href="cartstyles.css"/>
        <title>LAND Games Store</title>
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
                        int items = 0;
                        if (logIn == true) {
                            session = request.getSession();
                            ArrayList cartSession = (ArrayList) session.getAttribute("cartSession");

                            if (cartSession == null || cartSession.size() == 0) {
                    %>
                    <h3>You currently have nothing in your cart.</h3>
                    <%
                    } else {
                        Map<String, String> image = (Map) getServletContext().getAttribute("image");
                        Map<String, Integer> price = (Map) getServletContext().getAttribute("price");
                        String content = "";

                        for (int i = 0; i < cartSession.size(); i++) {
                            if (i % 2 == 0) {
                                content = (String) cartSession.get(i);
                            } else {%>

                    <div class="content">
                        <div class="image">
                            <img src="<%=image.get(content)%>" alt="<%=content%>">
                        </div>
                        <div class="info">
                            <p>Item: <%=content%></p>
                            <p>Quantity: <%=(String) cartSession.get(i)%>pcs</p>
                            <p>Price: $<%=price.get(content)%></p>
                            <form action="update" method="POST">
                                <%out.print("<input type=\"number\" min=\"0\" step=\"1\" class=\"counter\" value=\"" + Integer.parseInt((String) cartSession.get(i)) + "\" name=\"quantity\"/>");%>
                                <input type="hidden" name="content" value="<%=content%>">
                                <button class="button">Update Cart</button>
                            </form>
                        </div>
                        <div class="total-item">
                            <p>Total Price: $<%=Integer.parseInt((String) cartSession.get(i)) * price.get(content)%></p>
                        </div>
                    </div>
                    <%
                                        items = items + Integer.parseInt((String) cartSession.get(i));
                                        sum = sum + (Integer.parseInt((String) cartSession.get(i)) * price.get(content));
                                    }

                                }
                            }

                        }

                    %>
                </div>
                <div class="right">
                    <h2>Games and Apps Summary</h2>
                        <p class="left-title">Price</p><p class="right-title">$<%out.print(sum);%></p>
                        <p class="left-title">Items</p><p class="right-title"><%=items%>pcs</p> 
                        <hr class="line">
                        <p class="left-title">Subtotal</p><p class="right-title">$<%out.print(sum);%></p>
                        <form action="checkout.jsp">
                            <input type="hidden" name="price" value="<%out.print(sum);%>">
                            <input type="hidden" name="items" value="<%out.print(items);%>">
                            <button class="button">Checkout</button>
                        </form>
                </div>
            </div>
        </main>
    </body>
</html>
