/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Content;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.util.Calendar;

/**
 *
 * @author ADMIN
 */
public class adminController extends HttpServlet {

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
            out.println("<title>Servlet adminController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet adminController at " + request.getContextPath() + "</h1>");
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
        if(request.getParameter("update")!=null){
            String id = request.getParameter("id");
            Content c = new Content();
            c = c.getContentByID(id);
            request.setAttribute("c", c);
            request.getRequestDispatcher("detail.jsp").forward(request, response);
        }
        if(request.getParameter("delete")!=null){
            String id = request.getParameter("id");
            Content c = new Content();
            c.delete(id);
            request.getRequestDispatcher("AdminManage.jsp").forward(request, response);
        }
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
        if (request.getParameter("add") != null) {
            String id = request.getParameter("id");
            String mainTitle = request.getParameter("mainTitle");
            String title1 = request.getParameter("title1");
            String content1 = request.getParameter("content1");
            String title2 = request.getParameter("title2");
            String content2 = request.getParameter("content2");
            String image = request.getParameter("image");
            String name = request.getParameter("name");
            Date d = new Date(System.currentTimeMillis());
            Content c =new Content(Integer.parseInt(id), content1, content2, mainTitle, title1, title2, d, image, name);
            c.add();
            request.getRequestDispatcher("AdminManage.jsp").forward(request, response);
        }
         if(request.getParameter("update1")!=null){
            String id = request.getParameter("id");
            String mainTitle = request.getParameter("mainTitle");
            String title1 = request.getParameter("title1");
            String content1 = request.getParameter("content1");
            String title2 = request.getParameter("title2");
            String content2 = request.getParameter("content2");
            String image = request.getParameter("image");
            String name = request.getParameter("name");
            Date d = new Date(System.currentTimeMillis());
            Content c =new Content(Integer.parseInt(id), content1, content2, mainTitle, title1, title2, d, image, name);
            c.update();
            request.getRequestDispatcher("AdminManage.jsp").forward(request, response);
        }
        

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */

}
