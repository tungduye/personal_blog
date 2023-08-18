/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Content;
import Model.Viewer;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author ADMIN
 */
public class loginController extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet loginController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet loginController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        ArrayList<Content> list= new ArrayList<>();
        if(request.getParameter("add")!=null){
            request.getRequestDispatcher("Add.jsp").forward(request, response);
        }
        if(request.getParameter("update")!=null){
            Content c = new Content();
            list=c.getListContent();
            request.setAttribute("list", list);
            request.getRequestDispatcher("update.jsp").forward(request, response);
        }
        if(request.getParameter("delete")!=null){
            Content c = new Content();
            list=c.getListContent();
            request.setAttribute("list", list);
            request.getRequestDispatcher("delete.jsp").forward(request, response);
        }
        if(request.getParameter("viewer")!=null){
            Viewer v = new Viewer();
            ArrayList<Viewer> Viewer = new ArrayList<>();
            Viewer=v.getListViewer();
            request.setAttribute("Viewer", Viewer);
            request.getRequestDispatcher("send.jsp").forward(request, response);
        }
        
         if(request.getParameter("send")!=null){
             String Name = request.getParameter("name");
             String Email = request.getParameter("email");
             String PhoneNumber = request.getParameter("phone");
             String Message = request.getParameter("message");
            Viewer v = new Viewer(1, Name, Email, PhoneNumber, Message);
            v.add();
            request.setAttribute("error", "Send Successfully");
            request.getRequestDispatcher("contact.jsp").forward(request, response);
            return;
        }
         
         request.getRequestDispatcher("login.jsp").forward(request, response);
        
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
        String acc = request.getParameter("acc");
        String pass = request.getParameter("pass");
        if (acc.equals("admin") && pass.equals("123")) {
            request.getRequestDispatcher("AdminManage.jsp").forward(request, response);
        }else{
            request.setAttribute("err", "Incorrect account or password");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
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
