package controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Storing;

/**
 *
 * @author Gelo
 */
public class processServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//HTTP 1.1
        response.setHeader("Pragma", "no-cache");//HTTP 1.0
        response.setHeader("Expires", "0");//Proxies

        boolean logIn = false;

        if (session.getAttribute("username") == null) {
            logIn = false;
            response.sendRedirect("adderror.jsp");
        } else {
            logIn = true;
            String quantity = request.getParameter("quantity");
            String content = request.getParameter("content");
            Storing st = new Storing();
            st.setter(content, quantity);
            List<String> cart = st.getter();
            ArrayList cartSession = (ArrayList) session.getAttribute("cartSession");

            if (cartSession == null) {
                session.setAttribute("cartSession", cart);
            } else {
                if (cartSession.contains(content)) {
                    int index = cartSession.indexOf(content);
                    String temp = (String) cartSession.get(index + 1);
                    int amount = Integer.parseInt(temp);
                    amount = amount + Integer.parseInt(quantity);
                    cartSession.set(index + 1, Integer.toString(amount));
                } else {
                    cartSession.addAll(cart);
                }
            }

            response.sendRedirect("index.jsp");

            System.out.print(cartSession + "handsome");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
