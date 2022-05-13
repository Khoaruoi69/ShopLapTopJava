package controll;

import dao.DAO;
import entity.LapTop;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.*;
import javax.mail.internet.*;
/**
 *
 * @author trinh
 */
@WebServlet(name = "OrderControl", urlPatterns = {"/order"})
public class OrderControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, AddressException, MessagingException {
        response.setContentType("text/html;charset=UTF-8");
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
        for (int i = 0; i < list.size(); i++) {
            int count = 1;
            for (int j = i + 1; j < list.size(); j++) {
                if (list.get(i).getMalaptop() == list.get(j).getMalaptop()) {
                    count++;
                    list.remove(j);
                    j--;
                    list.get(i).setAmount(count);
                }
            }
        }

        for (LapTop o : list) {
            if (o.getMalaptop() != 0) {
                int madon = Integer.parseInt(request.getParameter("madon"));
                int malaptop = o.getMalaptop();
                int soluong = o.getAmount();
                BigDecimal giaban = o.getGiaban();
                dao.insertCTDonHang(madon, malaptop, soluong, giaban);

            }
        }
        /*
        /// gui maill       .................

        final String username = "khoaruoi69@gmail.com";
        final String password = "khoakt2001";
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        //below mentioned mail.smtp.port is optional
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });
        String emailTo = request.getParameter("to");
        String emailSub = request.getParameter("subject");
        String emailContent = request.getParameter("content");
        
      //  try {

            /* Create an instance of MimeMessage, 
 	      it accept MIME types and headers 
             
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(emailTo));
            message.setSubject(emailSub);
            message.setText(emailContent);

            /* Transport class is used to deliver the message to the recipients 
            Transport.send(message);
          //  System.out.println("Done");

     //   } catch (MessagingException e) {
       //     e.printStackTrace();
      //  }
    
            ////////////////////////////////////////////////
            */
        for (Cookie o : arr) {
            o.setMaxAge(0);
            response.addCookie(o);
        }
        response.sendRedirect("HomeControll");
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
        try {
            processRequest(request, response);
        } catch (MessagingException ex) {
            Logger.getLogger(OrderControl.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (MessagingException ex) {
            Logger.getLogger(OrderControl.class.getName()).log(Level.SEVERE, null, ex);
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
