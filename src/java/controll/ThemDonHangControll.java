/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controll;

import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.DonHang;
import model.LapTop;

/**
 *
 * @author Khoa
 */
public class ThemDonHangControll extends HttpServlet {

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
        int madon = 22; //Integer.parseInt(request.getParameter("22"));
        int malaptop = Integer.parseInt(request.getParameter("malaptop"));
        int soluong = Integer.parseInt(request.getParameter("soluong"));
        BigDecimal giaban = BigDecimal.valueOf(Double.parseDouble(request.getParameter("giaban")));
        Cookie arr[] = request.getCookies();
        List<LapTop> list = new ArrayList<>();
        DAO dao = new DAO();
        for (Cookie o : arr) {
            if (o.getName().equals("id")) {
                String txt[] = o.getValue().split("\\.");
                for (String s : txt) {
                    list.add(dao.getLapTop(s));
                }
            }
        }
        int count =1;
        for (int i = 0; i < list.size(); i++) {
           count = 1;
            for (int j = i+1; j < list.size(); j++) {
                if(list.get(i).getMalaptop() == list.get(j).getMalaptop()){
                    count++;
                    list.remove(j);
                    j--;
                    list.get(i).setAmount(count);
                   
                }
                
               
            }
             
        }
        
        HttpSession session = request.getSession();
       
        DonHang dh = (DonHang) session.getAttribute("donhang");
        DonHang donHang = dao.getDonHanglast();
        request.setAttribute("donHang", donHang);
        dao.insertCTDonHang(madon, malaptop, soluong, giaban);
        
        
        request.setAttribute("dem", count);
        request.setAttribute("list", list);
        
         request.getRequestDispatcher("ThemDonHang.jsp").forward(request, response);
         
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
