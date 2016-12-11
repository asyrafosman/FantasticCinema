/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package movie;

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
 * @author peiyi
 */
@WebServlet(name = "InsertMovieServlet", urlPatterns = {"/InsertMovieServlet"})
public class InsertMovieServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        
      
        String moviename = request.getParameter("moviename");  
        String descrption = request.getParameter("description");  
        String startdate = request.getParameter("startdate");
        String enddate = request.getParameter("enddate");
        
        SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
        Date sdate = new Date();
        try {
            sdate = formatter.parse(startdate);
        } catch (Exception ex) {            
        }
        
        //convert to mysql date
        formatter = new SimpleDateFormat("yyyy-MM-dd");
        startdate = formatter.format(sdate);
        
        Date edate = new Date();
        try {
            edate = formatter.parse(startdate);
        } catch (Exception ex) {            
        }
        
        //convert to mysql date
        formatter = new SimpleDateFormat("yyyy-MM-dd");
        startdate = formatter.format(edate);
        
        
        try{
            PreparedStatement preparedStatement = jdbcUtility.getPsInsertMovie();
            
            preparedStatement.setString(1, moviename);
            preparedStatement.setString(2, descrption);
            preparedStatement.setString(3, startdate);
            preparedStatement.setString(4, enddate);
            preparedStatement.executeUpdate();
            
            PrintWriter out = response.getWriter();
            
            out.println("<script>");
            out.println("    alert('Booking insert success');");
            out.println("</script>");
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
