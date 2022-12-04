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
        <title>Checkout</title>
    </head>
    <body>
        <%
            String price = request.getParameter("price");
            String items = request.getParameter("items");
            if (price.equals("0") && items.equals("0")) {
                response.sendRedirect("COerror.jsp");
            }
            else
            {
        %>
        <p>Your total price will be <%out.print(request.getParameter("price"));%>.</p>
        <p>And a total of <%out.print(request.getParameter("items"));%> items will be delivered to you as soon as possible.</p>
        <h3>Thank you for your purchase, <%out.print((String)session.getAttribute("username"));%>!</h3>
        <%}%>
    </body>
</html>
