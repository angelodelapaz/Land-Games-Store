<%-- 
    Document   : index
    Created on : 11 26, 22, 11:04:43 PM
    Author     : Lex Zedrick Lorenzo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="indexstyles.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap"
            rel="stylesheet"
            />
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
            } else {
                logIn = true;
            }
        %>
        <header class="navbar">
            <div>
                <h1 class="navtitle">LAND GAMES STORE</h1>
            </div>
            <div class="links">
                <%
                    if (logIn == true) {
                        out.print("<a href=\"LogoutServlet\" class=\"logout\">Logout</a>");
                    } else {
                        out.print("<a href=\"login.jsp\" class=\"logout\">Login/SignUp</a>");
                    }
                %>
                <a href="cart.jsp" class="logout">MyCart</a>
            </div>
        </header>
        <main>
            <h2>Most popular</h2>
            <hr>
            <section> <!--Try gawing setSession nalnag yung mga form-->

                <%for (int i = 1; i < 6; i++) {%>
                <div class="content">
                    <img src="<%= getServletContext().getInitParameter("popular_" + i + "_img")%>" 
                         alt="<%=getServletContext().getInitParameter("popular_" + i + "_name")%>">
                    <p><%=getServletContext().getInitParameter("popular_" + i + "_name")%></p>
                    <p>$<%=getServletContext().getInitParameter("popular_" + i + "_price")%></p>
                    <hr class="line">
                    <form action="process" method="POST">
                        <input type="number" min="0" step="1" class="counter" placeholder="0" name="quantity"/>
                        <input type="hidden" name="content" value="<%=getServletContext().getInitParameter("popular_" + i + "_name")%>">
                        <button class="button">Add to Cart</button>
                    </form>
                </div> 
                <%}%>
            </section>
            <h2>New Releases</h2>
            <hr>
            <section> <!--Try gawing setSession nalnag yung mga form-->

                <%for (int i = 1; i < 6; i++) {%>
                <div class="content">
                    <img src="<%= getServletContext().getInitParameter("new_" + i + "_img")%>" 
                         alt="<%=getServletContext().getInitParameter("new_" + i + "_name")%>">
                    <p><%=getServletContext().getInitParameter("new_" + i + "_name")%></p>
                    <p>$<%=getServletContext().getInitParameter("new_" + i + "_price")%></p>
                    <hr class="line">
                    <form action="process" method="POST">
                        <input type="number" min="0" step="1" class="counter" placeholder="0" name="quantity"/>
                        <input type="hidden" name="content" value="<%=getServletContext().getInitParameter("new_" + i + "_name")%>">
                        <button class="button">Add to Cart</button>
                    </form>
                </div> 
                <%}%>
            </section>
        </main>
    </body>
</html>
