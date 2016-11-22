/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package booking;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdbc.JDBCUtility;

/**
 *
 * @author admin
 */
@WebServlet(name = "InsertBookingServlet", urlPatterns = {"/InsertBookingServlet"})
public class InsertBookingServlet extends HttpServlet {
    
    private JDBCUtility jdbcUtility;
    private Connection con;
    
    public void init() throws ServletException
    {
        String driver = "com.mysql.jdbc.Driver";

        String dbName = "fantasticcinema";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String password = "";

        jdbcUtility = new JDBCUtility(driver,
                                      url,
                                      userName,
                                      password);

        jdbcUtility.jdbcConnect();
        con = jdbcUtility.jdbcGetConnection();
        jdbcUtility.prepareSQLStatement();
    }            

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
        
        String username = "user";
        
        //String moviename = request.getParameter("moviename");
        String moviename = "title";
        
        String showdate = request.getParameter("showdate");   
        
        //convert string to date
        SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
        Date date = new Date();
        try {
            date = formatter.parse(showdate);
        } catch (Exception ex) {            
        }
        
        //convert to mysql date
        formatter = new SimpleDateFormat("yyyy-MM-dd");
        showdate = formatter.format(date);        
        
        //bookingdate - now
        java.util.Date dt = new java.util.Date();
        java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String bookingdate = sdf.format(dt);
                
        response.setContentType("text/html;charset=UTF-8");        
        try {                    
            PreparedStatement preparedStatement = jdbcUtility.getPsInsertBooking();
            
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, moviename);
            preparedStatement.setString(3, showdate);
            preparedStatement.setString(4, bookingdate);
            
            preparedStatement.executeUpdate();
            
            PrintWriter out = response.getWriter();
            
            out.println("<script>");
            out.println("    alert('Booking insert success');");
            out.println("</script>");
            
            out.println("<p>Please click <a href='/FantasticCinema/ViewBookingServlet'>here</a> to view booking details</p>");
            
            formatter = new SimpleDateFormat("dd-MM-yyyy");
            out.println("<br />" + formatter.format(date));
            
            formatter = new SimpleDateFormat("yyyy-MM-dd");
            out.println("<br />" + formatter.format(date));
        }
	catch (SQLException ex)
	{
            while (ex != null)
            {
                System.out.println ("SQLState: " +
                                 ex.getSQLState ());
                System.out.println ("Message:  " +
                                 ex.getMessage ());
		System.out.println ("Vendor:   " +
                                 ex.getErrorCode ());
                ex = ex.getNextException ();
		      System.out.println ("");
            }
            
            System.out.println("Connection to the database error");
	}
	catch (java.lang.Exception ex)
	{
            ex.printStackTrace ();
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
