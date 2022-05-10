package controll;

import dao.DAO;
import model.LapTop;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
/**
 *
 * @author trinh
 */
//@WebServlet(name = "ShowCartControl", urlPatterns = {"/print"})
public class ShowCartControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Cookie arr[] = request.getCookies();
        PrintWriter out = response.getWriter();
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
        int dem=0;
        for (int i = 0; i < list.size(); i++) {
            int count = 1;
            for (int j = i+1; j < list.size(); j++) {
                if(list.get(i).getMalaptop() == list.get(j).getMalaptop()){
                    count++;
                    list.remove(j);
                    j--;
                    list.get(i).setAmount(count);
                   
                }
               
            }
              dem+=count;
        }
        
         
         
          BigDecimal Count = new BigDecimal(BigInteger.ZERO,  3);
          BigDecimal total = new BigDecimal(BigInteger.ZERO,  3);
          
                 
         for (LapTop p : list) {
            total= total.add(p.getGiaban().multiply(BigDecimal.valueOf(p.getAmount())));
          
        }
          
         
         
         
        request.setAttribute("list", list);
        request.setAttribute("total", total);
        request.setAttribute("dem", dem);
        request.setAttribute("vat", total.multiply(BigDecimal.valueOf(0.1)));
        request.setAttribute("sum", total.multiply(BigDecimal.valueOf(1.1)));
       
        request.getRequestDispatcher("Cart.jsp").forward(request, response);
        
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