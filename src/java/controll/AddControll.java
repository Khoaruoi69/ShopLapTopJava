/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controll;

import dao.DAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import org.apache.tomcat.jakartaee.Converter;


/**
 *
 * @author Khoa
 */
public class AddControll extends HttpServlet {

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
      String name = request.getParameter("name");
      String image = request.getParameter("image");
      BigDecimal giaban =BigDecimal.valueOf(Double.parseDouble(request.getParameter("price")));
      String CPU = request.getParameter("CPU");
      String GPU = request.getParameter("GPU");
      String RAM = request.getParameter("RAM");
      String Hardware = request.getParameter("hardware");
      String Pin = request.getParameter("pin");
      String manhinh = request.getParameter("manhinh");
      String mota = request.getParameter("mota");
      boolean trangthai = Boolean.parseBoolean(request.getParameter("trangthai"));
      int slt = Integer.parseInt(request.getParameter("slt"));
      int hang = Integer.parseInt(request.getParameter("hang"));
      
      
      DAO dao =new DAO();
      dao.insertProduct(name,giaban, mota,image, hang, CPU, GPU, RAM, Hardware, manhinh, slt, Pin, trangthai);
      response.sendRedirect("ManagerControll");
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
